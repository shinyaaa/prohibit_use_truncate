# prohibit_use_truncate
This extension prohibit from useing truncate on PostgreSQL.

prohibit_use_truncate is released under the [PostgreSQL License](https://opensource.org/licenses/postgresql), a liberal Open Source license, similar to the BSD or MIT licenses.

## Test Status
This extension has passed the test.

## Install
Download the source archive of prohibit_use_truncate from [here](https://github.com/shinyaaa/prohibit_use_truncate), and then build and install it.
```
$ cd prohibit_use_truncate
$ make USE_PGXS=1 PG_CONFIG=/opt/pgsql-X.Y.Z/bin/pg_config
$ su
# make USE_PGXS=1 PG_CONFIG=/opt/pgsql-X.Y.Z/bin/pg_config install
# exit
```
## How to use
You need to add `shared_preload_libraries = 'prohibit_use_truncate'` to `postgresql.conf`.
