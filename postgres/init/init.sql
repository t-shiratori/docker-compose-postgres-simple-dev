-- DB作成
CREATE DATABASE todo_db;

-- 作成したDBに接続
\c todo_db;

-- テーブル作成
DROP TABLE IF EXISTS todo;
CREATE TABLE todo (
	id integer NOT NULL PRIMARY KEY,
	title varchar(30) NOT NULL,
	content varchar(255),
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ID用シーケンス作成
CREATE SEQUENCE todo_id_seq START 1;

-- サンブルデータの登録
INSERT INTO todo (id, title) VALUES(nextval('todo_id_seq'), 'todo1');
