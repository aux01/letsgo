# Example make config for including sqlite3.c in a project.
.POSIX:

# SQLite amalgamation source code distribution URL.
# Replace with latest version from <https://www.sqlite.org/download.html>
# and run `make update-sqlite` to update sqlite3.c and .h files.
SQLITE_URL = https://www.sqlite.org/2020/sqlite-amalgamation-3310100.zip

# sqlite3 CFLAGS and OBJECTS
SQLITECF   = -O2
SQLITEOBJS = sqlite3.o

all: $(SQLITEOBJS)

# Build the sqlite3.o object file
sqlite3.o: sqlite3.c sqlite3.h
	cc $(SQLITECF) -c sqlite3.c -o $@

clean:
	rm -f $(SQLITEOBJS)

.PHONY: all clean

# Download sqlite amalgamation distribution and extract the
# sqlite3.c and sqlite3.h files.
update-sqlite:
	curl -sL "$(SQLITE_URL)" -o sqlite.zip
	unzip -jo sqlite.zip '*sqlite3.?'
	rm -f sqlite.zip

.PHONY: update-sqlite
