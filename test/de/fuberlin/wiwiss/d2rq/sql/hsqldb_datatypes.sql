# Enable support for Nan/±Infinity 
SET DATABASE SQL DOUBLE NAN FALSE;

CREATE TABLE T_TINYINT (ID INT PRIMARY KEY, VALUE TINYINT NULL);
INSERT INTO T_TINYINT VALUES (0, NULL);
INSERT INTO T_TINYINT VALUES (1, 0);
INSERT INTO T_TINYINT VALUES (2, 1);
INSERT INTO T_TINYINT VALUES (3, -128);
INSERT INTO T_TINYINT VALUES (4, 127);

CREATE TABLE T_SMALLINT (ID INT PRIMARY KEY, VALUE SMALLINT NULL);
INSERT INTO T_SMALLINT VALUES (0, NULL);
INSERT INTO T_SMALLINT VALUES (1, 0);
INSERT INTO T_SMALLINT VALUES (2, 1);
INSERT INTO T_SMALLINT VALUES (3, -32768);
INSERT INTO T_SMALLINT VALUES (4, 32767);

CREATE TABLE T_INTEGER (ID INT PRIMARY KEY, VALUE INTEGER NULL);
INSERT INTO T_INTEGER VALUES (0, NULL);
INSERT INTO T_INTEGER VALUES (1, 0);
INSERT INTO T_INTEGER VALUES (2, 1);
INSERT INTO T_INTEGER VALUES (3, -2147483648);
INSERT INTO T_INTEGER VALUES (4, 2147483647);

CREATE TABLE T_BIGINT (ID INT PRIMARY KEY, VALUE BIGINT NULL);
INSERT INTO T_BIGINT VALUES (0, NULL);
INSERT INTO T_BIGINT VALUES (1, 0);
INSERT INTO T_BIGINT VALUES (2, 1);
INSERT INTO T_BIGINT VALUES (3, -9223372036854775808);
INSERT INTO T_BIGINT VALUES (4, 9223372036854775807);

CREATE TABLE T_NUMERIC (ID INT PRIMARY KEY, VALUE NUMERIC NULL);
INSERT INTO T_NUMERIC VALUES (0, NULL);
INSERT INTO T_NUMERIC VALUES (1, 0);
INSERT INTO T_NUMERIC VALUES (2, 1);
INSERT INTO T_NUMERIC VALUES (3, 1000000000000000000);
INSERT INTO T_NUMERIC VALUES (4, -1000000000000000000);

CREATE TABLE T_DECIMAL (ID INT PRIMARY KEY, VALUE DECIMAL NULL);
INSERT INTO T_DECIMAL VALUES (0, NULL);
INSERT INTO T_DECIMAL VALUES (1, 0);
INSERT INTO T_DECIMAL VALUES (2, 1);
INSERT INTO T_DECIMAL VALUES (3, 1000000000000000000);
INSERT INTO T_DECIMAL VALUES (4, -1000000000000000000);

CREATE TABLE T_DECIMAL_4_2 (ID INT PRIMARY KEY, VALUE DECIMAL(4,2) NULL);
INSERT INTO T_DECIMAL_4_2 VALUES (0, NULL);
INSERT INTO T_DECIMAL_4_2 VALUES (1, 0);
INSERT INTO T_DECIMAL_4_2 VALUES (2, 1.00);
INSERT INTO T_DECIMAL_4_2 VALUES (3, 4.95);
INSERT INTO T_DECIMAL_4_2 VALUES (4, 99.99);
INSERT INTO T_DECIMAL_4_2 VALUES (5, -99.99);

CREATE TABLE T_DOUBLE (ID INT PRIMARY KEY, VALUE DOUBLE NULL);
INSERT INTO T_DOUBLE VALUES (0, NULL);
INSERT INTO T_DOUBLE VALUES (1, 0E0);
INSERT INTO T_DOUBLE VALUES (2, 1E0);
INSERT INTO T_DOUBLE VALUES (3, 100000000E0);
INSERT INTO T_DOUBLE VALUES (4, 0.0000001E0);
# -0.0, different from +0.0
INSERT INTO T_DOUBLE VALUES (5, -0E0);
# HSQLDB can store NaN, but comparison to NaN seems to be broken as of v2.2.8:
# https://sourceforge.net/tracker/?func=detail&aid=3500025&group_id=23316&atid=378131
# NaN
#INSERT INTO T_DOUBLE VALUES (6, 0E0/0E0);
# +Infinity
INSERT INTO T_DOUBLE VALUES (7, 1E0/0);
# -Infinity
INSERT INTO T_DOUBLE VALUES (8, -1E0/0);

CREATE TABLE T_FLOAT (ID INT PRIMARY KEY, VALUE FLOAT NULL);
INSERT INTO T_FLOAT VALUES (0, NULL);
INSERT INTO T_FLOAT VALUES (1, 0E0);
INSERT INTO T_FLOAT VALUES (2, 1E0);
INSERT INTO T_FLOAT VALUES (3, 100000000E0);
INSERT INTO T_FLOAT VALUES (4, 0.0000001E0);
# -0.0, different from +0.0
INSERT INTO T_FLOAT VALUES (5, -0E0);
# HSQLDB can store NaN, but comparison to NaN seems to be broken as of v2.2.8:
# https://sourceforge.net/tracker/?func=detail&aid=3500025&group_id=23316&atid=378131
# NaN
#INSERT INTO T_FLOAT VALUES (6, 0E0/0E0);
# +Infinity
INSERT INTO T_FLOAT VALUES (7, 1E0/0);
# -Infinity
INSERT INTO T_FLOAT VALUES (8, -1E0/0);

CREATE TABLE T_REAL (ID INT PRIMARY KEY, VALUE REAL NULL);
INSERT INTO T_REAL VALUES (0, NULL);
INSERT INTO T_REAL VALUES (1, 0E0);
INSERT INTO T_REAL VALUES (2, 1E0);
INSERT INTO T_REAL VALUES (3, 100000000E0);
INSERT INTO T_REAL VALUES (4, 0.0000001E0);
# -0.0, different from +0.0
INSERT INTO T_REAL VALUES (5, -0E0);
# HSQLDB can store NaN, but comparison to NaN seems to be broken as of v2.2.8:
# https://sourceforge.net/tracker/?func=detail&aid=3500025&group_id=23316&atid=378131
# NaN
#INSERT INTO T_REAL VALUES (6, 0E0/0E0);
# +Infinity
INSERT INTO T_REAL VALUES (7, 1E0/0);
# -Infinity
INSERT INTO T_REAL VALUES (8, -1E0/0);

CREATE TABLE T_BOOLEAN (ID INT PRIMARY KEY, VALUE BOOLEAN NULL);
INSERT INTO T_BOOLEAN VALUES (0, NULL);
INSERT INTO T_BOOLEAN VALUES (1, 0);
INSERT INTO T_BOOLEAN VALUES (2, 1);

CREATE TABLE T_CHAR_3 (ID INT PRIMARY KEY, VALUE CHAR(3) NULL);
INSERT INTO T_CHAR_3 VALUES (0, NULL);
INSERT INTO T_CHAR_3 VALUES (1, '   ');
INSERT INTO T_CHAR_3 VALUES (2, 'AOU');
INSERT INTO T_CHAR_3 VALUES (3, 'ÄÖÜ');

CREATE TABLE T_CHAR (ID INT PRIMARY KEY, VALUE CHAR NULL);
INSERT INTO T_CHAR VALUES (0, NULL);
INSERT INTO T_CHAR VALUES (1, ' ');
INSERT INTO T_CHAR VALUES (2, 'A');
INSERT INTO T_CHAR VALUES (3, 'Ä');

CREATE TABLE T_VARCHAR (ID INT PRIMARY KEY, VALUE VARCHAR(100) NULL);
INSERT INTO T_VARCHAR VALUES (0, NULL);
INSERT INTO T_VARCHAR VALUES (1, '');
INSERT INTO T_VARCHAR VALUES (2, 'AOU');
INSERT INTO T_VARCHAR VALUES (3, 'ÄÖÜ');

CREATE TABLE T_LONGVARCHAR (ID INT PRIMARY KEY, VALUE LONGVARCHAR NULL);
INSERT INTO T_LONGVARCHAR VALUES (0, NULL);
INSERT INTO T_LONGVARCHAR VALUES (1, '');
INSERT INTO T_LONGVARCHAR VALUES (2, 'AOU');
INSERT INTO T_LONGVARCHAR VALUES (3, 'ÄÖÜ');

CREATE TABLE T_CLOB (ID INT PRIMARY KEY, VALUE CLOB NULL);
INSERT INTO T_CLOB VALUES (0, NULL);
# Empty CLOBs are broken in HSQLDB 2.2.8:
# https://sourceforge.net/tracker/?func=detail&aid=3500034&group_id=23316&atid=378131
#INSERT INTO T_CLOB VALUES (1, '');
INSERT INTO T_CLOB VALUES (2, 'AOU');
INSERT INTO T_CLOB VALUES (3, 'ÄÖÜ');

CREATE TABLE T_BINARY_4 (ID INT PRIMARY KEY, VALUE BINARY(4) NULL);
INSERT INTO T_BINARY_4 VALUES (0, NULL);
INSERT INTO T_BINARY_4 VALUES (1, X'00000000');
INSERT INTO T_BINARY_4 VALUES (2, X'FFFFFFFF');
INSERT INTO T_BINARY_4 VALUES (3, X'F001F001');

CREATE TABLE T_BINARY (ID INT PRIMARY KEY, VALUE BINARY NULL);
INSERT INTO T_BINARY VALUES (0, NULL);
INSERT INTO T_BINARY VALUES (1, X'00');
INSERT INTO T_BINARY VALUES (2, X'01');
INSERT INTO T_BINARY VALUES (3, X'FF');

CREATE TABLE T_VARBINARY (ID INT PRIMARY KEY, VALUE VARBINARY(100) NULL);
INSERT INTO T_VARBINARY VALUES (0, NULL);
INSERT INTO T_VARBINARY VALUES (1, X'');
INSERT INTO T_VARBINARY VALUES (2, X'00');
INSERT INTO T_VARBINARY VALUES (3, X'01');
INSERT INTO T_VARBINARY VALUES (4, X'F001F001F001F001');

CREATE TABLE T_LONGVARBINARY (ID INT PRIMARY KEY, VALUE LONGVARBINARY NULL);
INSERT INTO T_LONGVARBINARY VALUES (0, NULL);
INSERT INTO T_LONGVARBINARY VALUES (1, X'');
INSERT INTO T_LONGVARBINARY VALUES (2, X'00');
INSERT INTO T_LONGVARBINARY VALUES (3, X'01');
INSERT INTO T_LONGVARBINARY VALUES (4, X'F001F001F001F001');

CREATE TABLE T_BLOB (ID INT PRIMARY KEY, VALUE BLOB NULL);
INSERT INTO T_BLOB VALUES (0, NULL);
# Empty BLOBs are broken in HSQLDB 2.2.8:
# https://sourceforge.net/tracker/?func=detail&aid=3500034&group_id=23316&atid=378131
#INSERT INTO T_BLOB VALUES (1, X'');
INSERT INTO T_BLOB VALUES (2, X'00');
INSERT INTO T_BLOB VALUES (3, X'01');
INSERT INTO T_BLOB VALUES (4, X'F001F001F001F001');

CREATE TABLE T_BIT_4 (ID INT PRIMARY KEY, VALUE BIT(4) NULL);
INSERT INTO T_BIT_4 VALUES (0, NULL);
INSERT INTO T_BIT_4 VALUES (1, B'0000');
INSERT INTO T_BIT_4 VALUES (2, B'0001');
INSERT INTO T_BIT_4 VALUES (3, B'1000');
INSERT INTO T_BIT_4 VALUES (4, B'1111');

CREATE TABLE T_BIT (ID INT PRIMARY KEY, VALUE BIT NULL);
INSERT INTO T_BIT VALUES (0, NULL);
INSERT INTO T_BIT VALUES (1, B'0');
INSERT INTO T_BIT VALUES (2, B'1');

CREATE TABLE T_BIT_VARYING (ID INT PRIMARY KEY, VALUE BIT VARYING(100) NULL);
INSERT INTO T_BIT_VARYING VALUES (0, NULL);
INSERT INTO T_BIT_VARYING VALUES (1, B'');
INSERT INTO T_BIT_VARYING VALUES (2, B'0');
INSERT INTO T_BIT_VARYING VALUES (3, B'1');
INSERT INTO T_BIT_VARYING VALUES (4, B'100000000000000');

CREATE TABLE T_DATE (ID INT PRIMARY KEY, VALUE DATE NULL);
INSERT INTO T_DATE VALUES (0, NULL);
INSERT INTO T_DATE VALUES (1, DATE '0001-01-01');
INSERT INTO T_DATE VALUES (2, DATE '2012-03-07');
INSERT INTO T_DATE VALUES (3, DATE '9999-12-31');

CREATE TABLE T_TIME (ID INT PRIMARY KEY, VALUE TIME NULL);
INSERT INTO T_TIME VALUES (0, NULL);
INSERT INTO T_TIME VALUES (1, TIME '00:00:00');
INSERT INTO T_TIME VALUES (2, TIME '20:39:21');
INSERT INTO T_TIME VALUES (3, TIME '23:59:59');

CREATE TABLE T_TIME_4 (ID INT PRIMARY KEY, VALUE TIME(4) NULL);
INSERT INTO T_TIME_4 VALUES (0, NULL);
INSERT INTO T_TIME_4 VALUES (1, TIME '00:00:00.0000');
INSERT INTO T_TIME_4 VALUES (2, TIME '20:39:21.5831');
INSERT INTO T_TIME_4 VALUES (3, TIME '23:59:59.9999');

CREATE TABLE T_TIME_TZ (ID INT PRIMARY KEY, VALUE TIME WITH TIME ZONE NULL);
INSERT INTO T_TIME_TZ VALUES (0, NULL);
INSERT INTO T_TIME_TZ VALUES (1, TIME '00:00:00+00:00');
INSERT INTO T_TIME_TZ VALUES (2, TIME '20:39:21+00:00');
INSERT INTO T_TIME_TZ VALUES (3, TIME '23:59:59+00:00');
INSERT INTO T_TIME_TZ VALUES (4, TIME '20:39:21+00:00');
INSERT INTO T_TIME_TZ VALUES (5, TIME '20:39:21-01:00');
INSERT INTO T_TIME_TZ VALUES (6, TIME '20:39:21+11:30');

CREATE TABLE T_TIME_TZ_4 (ID INT PRIMARY KEY, VALUE TIME(4) WITH TIME ZONE NULL);
INSERT INTO T_TIME_TZ_4 VALUES (0, NULL);
INSERT INTO T_TIME_TZ_4 VALUES (1, TIME '00:00:00.0000+00:00');
INSERT INTO T_TIME_TZ_4 VALUES (2, TIME '20:39:21.5831+00:00');
INSERT INTO T_TIME_TZ_4 VALUES (3, TIME '23:59:59.9999+00:00');
INSERT INTO T_TIME_TZ_4 VALUES (4, TIME '20:39:21.5831+00:00');
INSERT INTO T_TIME_TZ_4 VALUES (5, TIME '20:39:21.5831-01:00');
INSERT INTO T_TIME_TZ_4 VALUES (6, TIME '20:39:21.5831+11:30');

CREATE TABLE T_TIMESTAMP (ID INT PRIMARY KEY, VALUE TIMESTAMP NULL);
INSERT INTO T_TIMESTAMP VALUES (0, NULL);
INSERT INTO T_TIMESTAMP VALUES (1, TIMESTAMP '0001-01-01 00:00:00.000000');
INSERT INTO T_TIMESTAMP VALUES (2, TIMESTAMP '2012-03-07 20:39:21.583122');
INSERT INTO T_TIMESTAMP VALUES (3, TIMESTAMP '9999-12-31 23:59:59.999999');

CREATE TABLE T_TIMESTAMP_4 (ID INT PRIMARY KEY, VALUE TIMESTAMP(4) NULL);
INSERT INTO T_TIMESTAMP_4 VALUES (0, NULL);
INSERT INTO T_TIMESTAMP_4 VALUES (1, TIMESTAMP '0001-01-01 00:00:00.0000');
INSERT INTO T_TIMESTAMP_4 VALUES (2, TIMESTAMP '2012-03-07 20:39:21.5831');
INSERT INTO T_TIMESTAMP_4 VALUES (3, TIMESTAMP '9999-12-31 23:59:59.9999');

CREATE TABLE T_TIMESTAMP_TZ (ID INT PRIMARY KEY, VALUE TIMESTAMP WITH TIME ZONE NULL);
INSERT INTO T_TIMESTAMP_TZ VALUES (0, NULL);
INSERT INTO T_TIMESTAMP_TZ VALUES (1, TIMESTAMP '0001-01-01 00:00:00.000000+00:00');
INSERT INTO T_TIMESTAMP_TZ VALUES (2, TIMESTAMP '2012-03-07 20:39:21.583122+00:00');
INSERT INTO T_TIMESTAMP_TZ VALUES (3, TIMESTAMP '9999-12-31 23:59:59.999999+00:00');
INSERT INTO T_TIMESTAMP_TZ VALUES (4, TIMESTAMP '2012-03-07 20:39:21.583122+00:00');
INSERT INTO T_TIMESTAMP_TZ VALUES (5, TIMESTAMP '2012-03-07 20:39:21.583122-01:00');
INSERT INTO T_TIMESTAMP_TZ VALUES (6, TIMESTAMP '2012-03-07 20:39:21.583122+11:30');

CREATE TABLE T_TIMESTAMP_TZ_4 (ID INT PRIMARY KEY, VALUE TIMESTAMP(4) WITH TIME ZONE NULL);
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (0, NULL);
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (1, TIMESTAMP '0001-01-01 00:00:00.0000+00:00');
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (2, TIMESTAMP '2012-03-07 20:39:21.5831+00:00');
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (3, TIMESTAMP '9999-12-31 23:59:59.9999+00:00');
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (4, TIMESTAMP '2012-03-07 20:39:21.5831+00:00');
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (5, TIMESTAMP '2012-03-07 20:39:21.5831-01:00');
INSERT INTO T_TIMESTAMP_TZ_4 VALUES (6, TIMESTAMP '2012-03-07 20:39:21.5831+11:30');

CREATE TABLE T_INTERVAL_DAY (ID INT PRIMARY KEY, VALUE INTERVAL DAY NULL);
INSERT INTO T_INTERVAL_DAY VALUES (0, NULL);
INSERT INTO T_INTERVAL_DAY VALUES (1, INTERVAL '0' DAY);
INSERT INTO T_INTERVAL_DAY VALUES (2, INTERVAL '1' DAY);
INSERT INTO T_INTERVAL_DAY VALUES (3, INTERVAL '99' DAY);
INSERT INTO T_INTERVAL_DAY VALUES (4, INTERVAL '-99' DAY);

CREATE TABLE T_INTERVAL_HOUR_MINUTE (ID INT PRIMARY KEY, VALUE INTERVAL HOUR TO MINUTE NULL);
INSERT INTO T_INTERVAL_HOUR_MINUTE VALUES (0, NULL);
INSERT INTO T_INTERVAL_HOUR_MINUTE VALUES (1, INTERVAL '0:00' HOUR TO MINUTE);
INSERT INTO T_INTERVAL_HOUR_MINUTE VALUES (2, INTERVAL '0:01' HOUR TO MINUTE);
INSERT INTO T_INTERVAL_HOUR_MINUTE VALUES (3, INTERVAL '1:00' HOUR TO MINUTE);
INSERT INTO T_INTERVAL_HOUR_MINUTE VALUES (4, INTERVAL '99:00' HOUR TO MINUTE);
INSERT INTO T_INTERVAL_HOUR_MINUTE VALUES (5, INTERVAL '-99:00' HOUR TO MINUTE);

# For storage of Java objects using PreparedStatement.setObject() and ResultSet.getObject().
# Considered unmappable.
CREATE TABLE T_OTHER (ID INT PRIMARY KEY, VALUE OTHER NULL);

# ARRAY types left as future work. For now considered unmappable.
CREATE TABLE T_ARRAY_INTEGER (ID INT PRIMARY KEY, VALUE INT ARRAY NULL);