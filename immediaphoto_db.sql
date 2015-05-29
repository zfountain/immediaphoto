-- A User has
-- * id
-- * user_name
-- * email
-- * password_digest

-- An Image has
-- * id
-- * title
-- * url
-- * user_id

CREATE TABLE users (
	id serial NOT NULL PRIMARY KEY UNIQUE,
	user_name text NOT NULL UNIQUE,
	email text NOT NULL UNIQUE,
	password_digest text NOT NULL
);

CREATE TABLE images (
	id serial NOT NULL PRIMARY KEY UNIQUE,
	title text NOT NULL,
	url text NOT NULL,
	user_id integer NOT NULL
);