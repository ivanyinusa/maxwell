CREATE TABLE `t1` (id serial,intcol1 INT(32) ,intcol2 INT(32) ,charcol1 VARCHAR(128),charcol2 VARCHAR(128),charcol3 VARCHAR(128))
CREATE TABLE t1 ( c1 INT, c2 VARCHAR(300), KEY (c1) KEY_BLOCK_SIZE 1024, KEY (c2) KEY_BLOCK_SIZE 8192 )
CREATE TABLE t1(`FTS_DOC_ID` serial, no_fts_field VARCHAR(10), fts_field VARCHAR(10), FULLTEXT INDEX f(fts_field)) ENGINE=INNODB
alter table t1 add f2 enum(0xFFFF)
create table t1 ( min_num   dec(6,6)     default .000001)
create table t1 ( min_num   dec(6,6)     default 0.000001)
create table t1 (a enum(0xE4, '1', '2') not null default 0xE4)
create table t1 (a int check (a>0))
create table t1 (c nchar varying(10))
create table t1 (t1.index int)
create table t1(a char character set cp1251 default _koi8r 0xFF)
create table t1(c enum(0x9353,0x9373) character set sjis)
create table t1(t1.name int)
create table t2 as select * from t1
create table t2(test.t2.name int)
create table test.no_index_tab ( a varchar(255) not null, b int not null) engine = merge union = (test.no_index_tab_1,test.no_index_tab_2) insert_method = first