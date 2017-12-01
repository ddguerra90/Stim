/*llenado Jugadores*/
INSERT INTO Jugador VALUES (1,'pepito','1234','juan','alcachofa','jalcachofa@asdf.com','img3');
INSERT INTO Jugador VALUES (2,'jonsnow','nosabesnada','jon','snow','jsnow@asdf.com','img67');
INSERT INTO Jugador VALUES (3,'khalesi','ioquese','daenerys','targaryen','dtarga@asdf.com','img09');
INSERT INTO Jugador VALUES (4,'puto','lahorasad','david','castro','dcastro@asdf.com','img801');
INSERT INTO Jugador VALUES (5,'asdf','lkjh','asdf','ñlkj','añlkj@asdf.com','img2');
INSERT INTO Jugador VALUES (6,'elpapu','depapus','twin','lanister','tlanis@asdf.com','img407');
INSERT INTO Jugador VALUES (7,'chucknorris','addfj','carlos','norris','cnorris@asdf.com','img052');
INSERT INTO Jugador VALUES (8,'billgates','$$$$','bill','gates','bgates@asdf.com','img864');
INSERT INTO Jugador VALUES (9,'r2d2','may4th','r2','d2','rd2@asdf.com','img311');
INSERT INTO Jugador VALUES (10,'pereztroika','$$$$XD','mijail','gorvachov','mgorva@asdf.com','img93');

/*llenado Pegi*/
INSERT INTO Pegi Values(1,'3','mayores de 3');
INSERT INTO Pegi Values(2,'7','mayores de 7');
INSERT INTO Pegi Values(3,'12','mayores de 12');
INSERT INTO Pegi Values(4,'16','mayores de 16');
INSERT INTO Pegi Values(5,'18','mayores de 18');

/*llenado Juego*/
INSERT INTO Juego VALUES (1,'Asteroide','esquiva los asteroides','Asteroide',1,2);
INSERT INTO Juego VALUES (2,'Llorona','esquiva la llorona','Llorrona',1,2);
INSERT INTO Juego VALUES (3,'Kong','esquiva el barril','Kong',1,2);
INSERT INTO Juego VALUES (4,'NinoLlamas','esquiva las llamas','NinoLlamas',1,2);
INSERT INTO Juego VALUES (5,'AnimDK','esquiva el barril','AnimDK',1,2);

/*llenado Categoria*/
INSERT INTO Categoria Values(1,'plataforma','asdf');
INSERT INTO Categoria Values(2,'rpg','lñkjh');
INSERT INTO Categoria Values(3,'hack n slash','qwert');
INSERT INTO Categoria Values(4,'shoter','poiuy');
INSERT INTO Categoria Values(5,'arcade','uvuwev osas');

/*llenado Juego_Categoria*/
INSERT INTO Juego_Categoria Values(1,1,1);
INSERT INTO Juego_Categoria Values(2,1,5);
INSERT INTO Juego_Categoria Values(3,2,1);
INSERT INTO Juego_Categoria Values(4,2,5);
INSERT INTO Juego_Categoria Values(5,3,1);
INSERT INTO Juego_Categoria Values(6,3,5);
INSERT INTO Juego_Categoria Values(7,4,1);
INSERT INTO Juego_Categoria Values(8,4,5);
INSERT INTO Juego_Categoria Values(9,5,1);
INSERT INTO Juego_Categoria Values(10,5,5);

/*llenado Puntaje*/
INSERT INTO Puntaje Values(1,1,1,'29-11-2017',35);
INSERT INTO Puntaje Values(2,2,1,'29-11-2017',12);
INSERT INTO Puntaje Values(3,3,1,'29-11-2017',25);
INSERT INTO Puntaje Values(4,1,2,'29-11-2017',51);
INSERT INTO Puntaje Values(5,1,2,'29-11-2017',108);
INSERT INTO Puntaje Values(6,2,3,'29-11-2017',23);
