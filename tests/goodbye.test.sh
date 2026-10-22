#!/bin/sh
# Run from anywhere: sh tests/goodbye.test.sh
cd "$(dirname "$0")/.." || exit 1
fail=0

# AC-1
if [ -f greetings/goodbye.txt ] \
  && [ "$(cat greetings/goodbye.txt)" = "Goodbye from Titan" ] \
  && [ "$(wc -l < greetings/goodbye.txt | tr -d ' ')" -le 1 ] \
  && [ "$(grep -c '' greetings/goodbye.txt)" = 1 ]; then
  echo "ok - goodbye file contains exactly the line 'Goodbye from Titan'"
else
  echo "not ok - goodbye file contains exactly the line 'Goodbye from Titan' (greetings/goodbye.txt missing or different)"
  fail=1
fi

# AC-2
if sh check.sh >/dev/null 2>&1; then
  echo "ok - gate check passes"
else
  echo "not ok - gate check passes"
  fail=1
fi
exit $fail
