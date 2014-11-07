DROP TABLE IF EXISTS tags_microposts CASCADE;
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
	time VARCHAR(255),
	date_created VARCHAR(255),
	blog_post TEXT,
	author_id INTEGER REFERENCES authors

);


CREATE TABLE tags(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);


CREATE TABLE tags_microposts(
	tag_id INTEGER REFERENCES tags,
	microposts_id INTEGER REFERENCES microposts
);