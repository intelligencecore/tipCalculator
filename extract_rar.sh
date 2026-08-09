#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 <input_dir> <output_dir> [password]" >&2
  exit 1
}

[[ $# -ge 2 && $# -le 3 ]] || usage

input_dir=$1
output_dir=$2
password=${3:-}

command -v unrar >/dev/null 2>&1 || { echo "unrar not found. Install with: brew install unrar" >&2; exit 1; }
[[ -d $input_dir ]] || { echo "Input dir not found: $input_dir" >&2; exit 1; }

mkdir -p "$output_dir"

if [[ -z $password ]]; then
  read -rs -p "RAR password: " password
  echo
fi

shopt -s nullglob
rar_files=("$input_dir"/*.rar)
shopt -u nullglob

[[ ${#rar_files[@]} -gt 0 ]] || { echo "No .rar files found in $input_dir" >&2; exit 1; }

fail=0
for archive in "${rar_files[@]}"; do
  name=$(basename "$archive" .rar)
  dest="$output_dir/$name"
  mkdir -p "$dest"
  echo "Extracting $archive -> $dest"
  if ! unrar x -p"$password" -o+ "$archive" "$dest/" >/dev/null; then
    echo "FAILED: $archive (wrong password or corrupt archive)" >&2
    fail=1
  fi
done

exit $fail
