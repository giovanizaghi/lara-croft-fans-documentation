CREATE TABLE usertype(
	id INTEGER IDENTITY,
	description VARCHAR(20),

	PRIMARY KEY(id)
);

CREATE TABLE users(
	id INTEGER IDENTITY,
	name VARCHAR(50),
	login VARCHAR(20),
	password VARCHAR(20),
	idusertype INTEGER NOT NULL REFERENCES usertype(id),
	
	PRIMARY KEY(id) 
);

CREATE TABLE tags(
	id INTEGER IDENTITY,
	description VARCHAR(100),

	PRIMARY KEY(id)
);

CREATE TABLE posts(
	id INTEGER IDENTITY,
	title VARCHAR(180),
	content TEXT,
	image TEXT,
	postdate DATETIME,
	active BIT,
	onlyregistercanread BIT,
	iduser INTEGER NOT NULL REFERENCES users(id),
	idtag INTEGER NOT NULL REFERENCES tags(id),

	PRIMARY KEY(id)
);

