#!/bin/sh
# Story 01-say-hello. Run from the repo root: sh tests/hello.test.sh
fail=0
ok() { echo "ok - $1"; }
not_ok() { echo "not ok - $1: $2"; fail=1; }

f=greetings/hello.txt

# AC-1
name="AC-1 hello.txt contains exactly one line: Hello from Titan"
if [ ! -f "$f" ]; then
  not_ok "$name" "$f does not exist"
else
  lines=$(wc -l < "$f" | tr -d ' ')
  content=$(cat "$f")
  if [ "$content" = "Hello from Titan" ] && [ "$lines" -eq 1 ]; then
    ok "$name"
  else
    not_ok "$name" "got $lines newline(s), content '$content'"
  fi
fi

# AC-2
name="AC-2 sh check.sh exits 0"
if sh check.sh >/dev/null 2>&1; then ok "$name"; else not_ok "$name" "check.sh exited non-zero"; fi

exit $fail
