SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS hitsong;
DROP TABLE IF EXISTS girlgroup;




/* Create Tables */

CREATE TABLE girlgroup
(
	gid int NOT NULL AUTO_INCREMENT,
	gname varchar(20) NOT NULL,
	company varchar(20) NOT NULL,
	debut date default (current_date),
	PRIMARY KEY (gid)
)AUTO_INCREMENT=101;


CREATE TABLE hitsong
(
	sid int NOT NULL AUTO_INCREMENT,
	sname varchar(20) NOT NULL,
	composer varchar(20),
	writer varchar(20),
	gid int NOT NULL,
	PRIMARY KEY (sid)
)AUTO_INCREMENT=1001;



/* Create Foreign Keys */

ALTER TABLE hitsong
	ADD FOREIGN KEY (gid)
	REFERENCES girlgroup (gid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



