CREATE EXTENSION prohibit_use_truncate;
CREATE TABLE test_table (id integer, number integer);
INSERT INTO test_table VALUES (1, 10);
TRUNCATE test_table;
SELECT * FROM test_table;
DROP TABLE test_table;
DROP EXTENSION prohibit_use_truncate;