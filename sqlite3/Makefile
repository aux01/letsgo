.POSIX:

# SQLite amalgamation source code distribution URL.
# Replace with latest from <https://www.sqlite.org/download.html>
SQLITE_URL = https://www.sqlite.org/2020/sqlite-amalgamation-3310100.zip

SQLITECF   = -O2
SQLITEOBJS = sqlite3.o

all: $(SQLITEOBJS)

sqlite3.o: sqlite3.c sqlite3.h
	cc $(SQLITECF) -c sqlite3.c -o $@

clean:
	rm -f $(SQLITEOBJS)

.PHONY: all clean

update-sqlite:
	curl -sL "$(SQLITE_URL)" -o sqlite.zip
	unzip -jo sqlite.zip
	rm -f sqlite.zip

.PHONY: update-sqlite
