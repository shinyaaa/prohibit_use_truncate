CREATE TABLE test_table (id integer, number integer);
INSERT INTO test_table VALUES (1, 10), (2, 20);
TRUNCATE test_table;
SELECT * FROM test_table;
DROP TABLE test_table;