DROP DATABASE IF EXISTS handicapbd ;
CREATE DATABASE handicapbd;
USE handicapbd;

CREATE TABLE USERS (
iduser INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
rol varchar(40),
username varchar(40) UNIQUE,
mail varchar(40),
pass varchar(40)
)ENGINE=InnoDB;

CREATE TABLE PARTIDOS (
idpartido INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
equipos varchar(40),
fechapartido datetime
)ENGINE=InnoDB;

CREATE TABLE PICKS (
idpick INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
iduser INTEGER NOT NULL,
text varchar(1000),
resultado INTEGER,
seguidores INTEGER,
fechaedicion datetime,
FOREIGN KEY (iduser) REFERENCES USERS(iduser)
)ENGINE=InnoDB;

CREATE TABLE COMMENTS (
idcomment INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
iduser INTEGER NOT NULL,
text varchar(500),
fechaedicion datetime,
FOREIGN KEY (iduser) REFERENCES USERS(iduser)
)ENGINE=InnoDB;

CREATE TABLE REL_PICKCOMMENT (
idrelacion INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
idpick INTEGER NOT NULL,
idcomment INTEGER NOT NULL,
FOREIGN KEY (idpick) REFERENCES PICKS(idpick),
FOREIGN KEY (idcomment) REFERENCES COMMENTS(idcomment)
)ENGINE=InnoDB;

CREATE TABLE REL_PARTIDOPICK (
idrelacion INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
idpartido INTEGER NOT NULL,
idpick INTEGER NOT NULL,
FOREIGN KEY (idpartido) REFERENCES PARTIDOS(idpartido),
FOREIGN KEY (idpick) REFERENCES PICKS(idpick)
)ENGINE=InnoDB;

/*insert into USERS (iduser, rol, username, mail, win, loss, pass) values(1, "admin", "chiquirisi","raul.lorenzo.67@gmail.com", 4, 1, "werer");
insert into USERS (iduser, rol, username, mail, win, loss, pass) values(2, "reg", "uno","raul.lopez.67@gmail.com", 1, 1, "uno");
insert into USERS (iduser, rol, username, mail, win, loss, pass) values(3, "reg", "dos","raul.merino.67@gmail.com", 3, 1, "dos");
insert into USERS (iduser, rol, username, mail, win, loss, pass) values(4, "reg", "tres","raul.caspas.67@gmail.com", 2, 1, "tres");

insert into PARTIDOS (idpartido, equipos, fechaedicion, fechapartido) values(1, "Barça-Madrid", '2014-12-02', '2014-12-12');
insert into PARTIDOS (idpartido, equipos, fechaedicion, fechapartido) values(2, "Barça-Betis", '2014-12-04', '2014-12-13');
 
insert into PICKS (idpick, iduser, idpartido, text, comments, res, seg, acertado) values(1, 1, 1, "Para este partido veo una cómoda victoria del Barça", "Lo veo", "Barça", 3, "SI");
insert into PICKS (idpick, iduser, idpartido, text, comments, res, seg, acertado) values(2, 1, 2, "Partido complicado pero veo la victoria del Barça", "Estoy contigo", "Barça", 2, "SI");
*/



