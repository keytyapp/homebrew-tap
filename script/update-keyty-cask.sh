#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "usage: $0 <version> <sha256>" >&2
  exit 1
fi

version="$1"
sha256="$2"
cask_path="Casks/keyty.rb"

if [[ ! -f "$cask_path" ]]; then
  echo "missing cask file: $cask_path" >&2
  exit 1
fi

VERSION="$version" SHA256_VALUE="$sha256" CASK_PATH="$cask_path" ruby <<'RUBY'
path = ENV.fetch("CASK_PATH")
content = File.read(path)

content.sub!(/^\s*version\s+"[^"]+"/, %(  version "#{ENV.fetch("VERSION")}")) or
  abort("failed to update version in #{path}")
content.sub!(/^\s*sha256\s+"[^"]+"/, %(  sha256 "#{ENV.fetch("SHA256_VALUE")}")) or
  abort("failed to update sha256 in #{path}")

File.write(path, content)
RUBY
