DROP TABLE IF EXISTS microposts_tags CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TABLE IF EXISTS microposts CASCADE;
DROP TABLE IF EXISTS authors;


CREATE TABLE authors(
	id SERIAL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	image_url TEXT

);


CREATE TABLE microposts(
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP,
	blog_post TEXT,
	author_id INTEGER REFERENCES authors

);


CREATE TABLE tags(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);


CREATE TABLE microposts_tags(
	micropost_id INTEGER REFERENCES microposts,
	tag_id INTEGER REFERENCES tags
);