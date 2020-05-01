POSIX:

# SQLite amalgamation source code distribution URL.
# Replace with latest from <https://www.sqlite.org/download.html>
SQLITE_URL = https://www.sqlite.org/2020/sqlite-amalgamation-3310100.zip

update-sqlite:
	curl -sL "$(SQLITE_URL)" -o sqlite.zip
	unzip -jo sqlite.zip
	rm -f sqlite.zip

.PHONY: update-sqlite
