#!/bin/sh
# Example of using the sqlite3 utility from a POSIX shell script.
# The q() and e() functions are used to guard against breakage and
# command injection.
#
# Example output:
#
#         $ sh sqlite-sh-helpers.sh
#         Example using q() to pass a quoted and escaped value...
#         SELECT * FROM tracks WHERE name = 'Guess Who''s Back'
#         3309|Guess Who's Back|258|1|17|E. Schrody/L. Muggerud|238393|9537994|0.99
#         SELECT * FROM tracks WHERE name = 'Guess Who''s Back'
#         3309|Guess Who's Back|258|1|17|E. Schrody/L. Muggerud|238393|9537994|0.99
#         Error: near "s": syntax error
#
# Run the example and then take the q() and e() functions for your own shell +
# sqlite3 utility projects.
set -e

# Quote and escape string before interpolating into sqlite3 SQL string.
q() {
    printf "'%s'" "$(e "$1")"
}

# Escape string before interpolating into sqlite3 SQL string.
e() {
    echo "$1" | sed "s/'/''/g"
}

db="chinook.db"

echo "Example using q() to pass a quoted and escaped value..."
track="Guess Who's Back"
sqlite3 -echo $db "SELECT * FROM tracks WHERE name = $(q "$track")"
#                  SELECT * FROM tracks WHERE name = 'Guess Who''s Back';

echo "Example using e() to escape but not quote a value..."
word="Who's"
sqlite3 -echo $db "SELECT * FROM tracks WHERE name = 'Guess $(e "$word") Back'"
#                  SELECT * FROM tracks WHERE name = 'Guess Who''s Back';

echo "Example without any escaping (blows up)..."
track="Guess Who's Back"
sqlite3 -echo $db "SELECT * FROM tracks WHERE name = '$track'"
