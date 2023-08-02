
/*

create database jugadoreyequipos;

create table jugadores(
	id_jugador INT,
	nombre VARCHAR(70),
	apellido VARCHAR(70),
	puesto VARCHAR(50),
	id_capitan INT,
	fecha_alta DATE,
	salario INT,
	equipo INT,
	altura float
);

 ALTER TABLE `jugadoreyequipos`.`jugadores` 
ADD INDEX `id-equipos_idx` (`equipo` ASC) VISIBLE;
;
ALTER TABLE `jugadoreyequipos`.`jugadores` 
ADD CONSTRAINT `id-equipos`
  FOREIGN KEY (`equipo`)
  REFERENCES `jugadoreyequipos`.`equipos` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


*/




SELECT * FROM jugadoreyequipos.jugadores;

use jugadoreyequipos;

insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (1, 'Gertrud', 'Pardew', 'Sarkidornis melanotos', 1, '2/23/2008', 86615, 10, 1.51);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (2, 'Carena', 'Breedy', 'Trichosurus vulpecula', 2, '4/29/2007', 42364, 14, 2.34);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (3, 'Charley', 'Furney', 'Grus rubicundus', 3, '1/30/2009', 140349, 7, 1.2);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (4, 'Jakie', 'Risen', 'Ardea cinerea', 4, '6/24/2010', 60171, 19, 1.85);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (5, 'Welsh', 'Sheehan', 'Felis concolor', 5, '11/21/2003', 57044, 6, 1.74);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (6, 'Feliks', 'Golda', 'Haliaeetus leucocephalus', 6, '11/11/2007', 47803, 10, 2.55);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (7, 'Yetty', 'Faire', 'Paraxerus cepapi', 7, '11/8/2007', 97969, 17, 1.11);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (8, 'Beltran', 'Crowthe', 'Catharacta skua', 8, '4/30/2012', 87846, 3, 2.8);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (9, 'Kippie', 'Roberto', 'Martes americana', 9, '5/20/1995', 84143, 7, 2.74);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (10, 'Carlin', 'Beatty', 'Francolinus leucoscepus', 10, '12/13/2008', 90364, 18, 1.46);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (11, 'Zea', 'Treves', 'Tamiasciurus hudsonicus', 11, '5/21/1997', 53618, 4, 2.21);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (12, 'Danila', 'Parsall', 'Pavo cristatus', 12, '11/5/1993', 58686, 6, 2.06);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (13, 'Jenelle', 'Petch', 'Lutra canadensis', 13, '6/29/1998', 40398, 18, 1.78);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (14, 'Sherri', 'Lamborne', 'Antidorcas marsupialis', 14, '7/9/2004', 52299, 17, 1.41);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (15, 'Kaylyn', 'Hollyman', 'Bos mutus', 15, '2/23/2009', 78355, 6, 1.14);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (16, 'Janina', 'Bett', 'Lasiodora parahybana', 16, '6/13/1994', 48541, 7, 2.56);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (17, 'Bjorn', 'Proske', 'Actophilornis africanus', 17, '7/24/2009', 78925, 1, 2.71);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (18, 'Birk', 'Flatte', 'Macaca fuscata', 18, '8/29/2005', 127723, 19, 1.28);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (19, 'Susette', 'Donativo', 'Hippotragus equinus', 19, '4/20/2002', 45419, 18, 1.32);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (20, 'Flin', 'Humber', 'Antidorcas marsupialis', 20, '2/4/2002', 148895, 19, 2.06);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (21, 'Josefa', 'Skippon', 'Paroaria gularis', 21, '12/16/1996', 74620, 1, 1.68);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (22, 'Werner', 'Geikie', 'Nyctanassa violacea', 22, '2/13/1998', 75198, 12, 2.06);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (23, 'Jude', 'Nobriga', 'Bucephala clangula', 23, '5/21/1997', 80370, 20, 1.44);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (24, 'Annabal', 'Humpatch', 'unavailable', 24, '7/24/2007', 93448, 9, 2.99);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (25, 'Ardys', 'Faivre', 'Centrocercus urophasianus', 25, '10/7/2011', 132598, 14, 1.58);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (26, 'Frederick', 'Le Houx', 'Chloephaga melanoptera', 26, '6/2/1996', 119258, 2, 2.03);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (27, 'Hugh', 'Bernlin', 'Eremophila alpestris', 27, '6/11/2002', 159660, 5, 2.78);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (28, 'Ardath', 'Greser', 'Martes americana', 28, '4/27/2002', 43907, 12, 2.52);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (29, 'Sherlocke', 'Yelding', 'Terathopius ecaudatus', 29, '6/8/1997', 61390, 17, 2.48);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (30, 'Corbin', 'Wheelhouse', 'Ceratotherium simum', 30, '12/29/1999', 72731, 20, 2.19);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (31, 'Arielle', 'Soots', 'Phascogale tapoatafa', 31, '9/14/2010', 94286, 19, 2.3);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (32, 'Lonnard', 'Handrick', 'Alouatta seniculus', 32, '5/19/1994', 136873, 9, 2.09);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (33, 'Bram', 'Grinsted', 'Aonyx capensis', 33, '4/24/2011', 141506, 16, 2.14);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (34, 'Madelon', 'Towlson', 'Aquila chrysaetos', 34, '5/24/2006', 41028, 1, 1.84);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (35, 'Shaine', 'Rzehorz', 'Phoca vitulina', 35, '12/27/1996', 66173, 19, 2.04);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (36, 'Malena', 'Jobb', 'Phalaropus fulicarius', 36, '3/20/2005', 32455, 13, 2.08);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (37, 'Cly', 'Melton', 'Equus burchelli', 37, '5/21/2007', 96173, 5, 1.67);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (38, 'Josh', 'Fireman', 'Hippotragus niger', 38, '11/3/2001', 132468, 20, 1.98);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (39, 'Chelsie', 'Dennington', 'Dolichitus patagonum', 39, '10/23/1998', 44058, 14, 2.44);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (40, 'Helaine', 'Pedrazzi', 'Macropus agilis', 40, '7/5/2012', 130614, 2, 2.68);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (41, 'Amby', 'Algy', 'Phalacrocorax carbo', 41, '11/2/2009', 129670, 2, 1.11);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (42, 'Joela', 'Birdis', 'Hyaena hyaena', 42, '7/15/2002', 50160, 1, 2.41);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (43, 'Dulciana', 'Bowgen', 'Threskionis aethiopicus', 43, '8/20/2011', 84140, 14, 2.36);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (44, 'Lazar', 'Graeser', 'Ctenophorus ornatus', 44, '2/7/2012', 92835, 20, 1.18);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (45, 'Town', 'Leathwood', 'Macropus fuliginosus', 45, '2/2/1996', 95986, 8, 1.74);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (46, 'Lorrin', 'Sidgwick', 'Butorides striatus', 46, '6/29/1997', 156644, 19, 2.78);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (47, 'Edouard', 'Matyushenko', 'Centrocercus urophasianus', 47, '5/1/2011', 148339, 9, 2.45);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (48, 'Bennie', 'Riepel', 'Varanus komodensis', 48, '10/6/2004', 93385, 18, 1.51);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (49, 'Aloysia', 'Ludye', 'Vanellus sp.', 49, '12/30/2000', 26131, 13, 2.09);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (50, 'Redd', 'Gaul', 'Morelia spilotes variegata', 50, '4/9/2010', 49403, 14, 1.03);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (51, 'Eda', 'Deakin', 'Papio cynocephalus', 51, '4/13/2010', 59388, 11, 1.44);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (52, 'Reginald', 'Banaszczyk', 'Ardea cinerea', 52, '11/26/1992', 59120, 17, 1.29);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (53, 'Ruby', 'Leile', 'Actophilornis africanus', 53, '8/30/2003', 147725, 20, 2.55);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (54, 'Nerita', 'Oldroyde', 'Alectura lathami', 54, '9/7/2012', 130686, 16, 1.87);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (55, 'Corri', 'Cissen', 'Tockus flavirostris', 55, '6/7/1999', 27085, 10, 2.57);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (56, 'Garik', 'Bavin', 'Phaethon aethereus', 56, '1/10/1993', 28496, 19, 1.26);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (57, 'Kaia', 'Dyte', 'Cervus elaphus', 57, '8/11/2010', 25621, 17, 1.0);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (58, 'Susann', 'Burger', 'Galictis vittata', 58, '11/9/1995', 138192, 7, 2.77);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (59, 'Leonidas', 'Jane', 'Buteo jamaicensis', 59, '1/6/2008', 55683, 18, 1.1);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (60, 'Hester', 'Jenkerson', 'Ciconia episcopus', 60, '6/5/2010', 110439, 2, 2.93);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (61, 'Putnem', 'Girod', 'Isoodon obesulus', 61, '7/20/2008', 85369, 17, 2.42);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (62, 'Aimee', 'Rhule', 'Ratufa indica', 62, '6/4/1993', 37765, 12, 1.99);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (63, 'Isabeau', 'Heads', 'Cebus apella', 63, '10/4/1995', 127019, 19, 1.8);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (64, 'Sharyl', 'Loads', 'Papio cynocephalus', 64, '2/10/2006', 157463, 7, 2.81);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (65, 'Imogen', 'Kepling', 'Macropus rufogriseus', 65, '9/23/2000', 81881, 16, 1.59);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (66, 'Gabbie', 'Kedie', 'Acrobates pygmaeus', 66, '4/28/2009', 70685, 3, 2.68);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (67, 'Heidie', 'Pancoast', 'Equus burchelli', 67, '5/18/1996', 104100, 9, 1.83);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (68, 'Mitchel', 'Lumly', 'Theropithecus gelada', 68, '3/22/2004', 109345, 1, 1.69);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (69, 'Phoebe', 'Berth', 'Falco mexicanus', 69, '2/5/1993', 98478, 10, 2.2);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (70, 'Nilson', 'Kiley', 'Panthera tigris', 70, '1/31/1997', 147445, 1, 2.8);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (71, 'Lyn', 'Jenney', 'Mabuya spilogaster', 71, '3/11/2011', 138498, 2, 2.06);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (72, 'Jaymie', 'Murrum', 'Bettongia penicillata', 72, '5/3/2005', 127886, 4, 1.22);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (73, 'Huntlee', 'Smale', 'Phascogale tapoatafa', 73, '5/31/2010', 48374, 11, 2.67);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (74, 'Wynne', 'Sambidge', 'Sula dactylatra', 74, '1/8/1995', 40336, 16, 1.4);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (75, 'Jerrold', 'Brolly', 'Anathana ellioti', 75, '6/19/1994', 49274, 19, 2.8);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (76, 'Cynthie', 'Shellum', 'Larus fuliginosus', 76, '4/19/2011', 39346, 6, 1.21);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (77, 'Dane', 'Mullins', 'Alcelaphus buselaphus cokii', 77, '9/5/2001', 79155, 2, 1.65);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (78, 'Caspar', 'McCardle', 'Gazella granti', 78, '4/3/1997', 98116, 6, 1.97);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (79, 'Cari', 'Ecclesall', 'Alcelaphus buselaphus caama', 79, '8/13/1995', 64430, 20, 2.01);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (80, 'Glen', 'Trodd', 'Microcebus murinus', 80, '11/15/1993', 50143, 11, 2.3);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (81, 'Patrice', 'Ismirnioglou', 'Colobus guerza', 81, '12/16/1992', 98628, 17, 2.27);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (82, 'Zorine', 'Tuke', 'Diomedea irrorata', 82, '4/17/2004', 127564, 16, 2.83);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (83, 'Manya', 'Powrie', 'Potos flavus', 83, '10/20/1999', 156307, 10, 1.97);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (84, 'Osbourn', 'Ribbon', 'Phoenicopterus ruber', 84, '3/4/2003', 114963, 1, 1.64);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (85, 'Josiah', 'Stubbe', 'Felis caracal', 85, '1/23/2005', 122126, 3, 1.76);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (86, 'Garrot', 'McGuiness', 'Estrilda erythronotos', 86, '12/28/1997', 124239, 1, 2.27);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (87, 'Kyla', 'Upshall', 'Merops sp.', 87, '6/12/2002', 115371, 11, 2.13);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (88, 'Ethe', 'Debrick', 'unavailable', 88, '1/17/2006', 48759, 10, 1.64);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (89, 'Margaux', 'Van Arsdale', 'Phasianus colchicus', 89, '10/26/2004', 87613, 2, 1.87);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (90, 'Anjanette', 'Stickells', 'Falco peregrinus', 90, '4/22/2011', 35791, 12, 2.05);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (91, 'Masha', 'Moulsdale', 'Eolophus roseicapillus', 91, '4/5/2002', 129224, 1, 2.23);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (92, 'Willy', 'Francois', 'Rhea americana', 92, '2/27/2008', 136973, 1, 1.47);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (93, 'Brodie', 'Cohn', 'Odocoileus hemionus', 93, '8/6/2011', 47565, 16, 2.75);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (94, 'Nannette', 'Heggison', 'Phalacrocorax carbo', 94, '5/7/2001', 33712, 19, 1.48);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (95, 'Corina', 'Candlin', 'unavailable', 95, '3/28/1997', 121723, 7, 1.5);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (96, 'Arlene', 'Rugg', 'Ursus maritimus', 96, '6/9/2003', 60048, 9, 1.8);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (97, 'Rodina', 'Runnicles', 'Damaliscus dorcas', 97, '7/25/2004', 26285, 13, 2.48);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (98, 'Liliane', 'Radloff', 'Phalaropus fulicarius', 98, '7/12/2009', 133111, 1, 2.36);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (99, 'Craggy', 'Andrysek', 'Phalacrocorax carbo', 99, '1/19/2012', 148638, 10, 1.56);
insert into jugadores (id_jugador, nombre, apellido, puesto, id_capitan, fecha_alta, salario, equipo, altura) values (100, 'Sax', 'Warrender', 'Macropus agilis', 100, '4/6/1994', 63952, 6, 2.64);



update jugadores set fecha_alta = null;

update jugadores set fecha_alta='2009-11-10';
update jugadores set fecha_alta='2007-12-15';
update jugadores set fecha_alta='1999-07-14';
update jugadores set fecha_alta='2004-09-28';
update jugadores set fecha_alta='1999-01-25';
update jugadores set fecha_alta='2005-05-22';
update jugadores set fecha_alta='2006-11-27';
update jugadores set fecha_alta='2001-01-03';
update jugadores set fecha_alta='2007-06-05';
update jugadores set fecha_alta='2002-02-09';
update jugadores set fecha_alta='1998-07-20';
update jugadores set fecha_alta='1996-10-10';
update jugadores set fecha_alta='2000-03-29';
update jugadores set fecha_alta='2006-01-22';
update jugadores set fecha_alta='1998-08-22';
update jugadores set fecha_alta='2006-09-06';
update jugadores set fecha_alta='1994-06-29';
update jugadores set fecha_alta='2008-01-24';
update jugadores set fecha_alta='2005-02-21';
update jugadores set fecha_alta='1996-11-03';
update jugadores set fecha_alta='2009-03-25';
update jugadores set fecha_alta='1994-09-29';
update jugadores set fecha_alta='1995-03-31';
update jugadores set fecha_alta='2011-12-31';
update jugadores set fecha_alta='2010-03-10';
update jugadores set fecha_alta='1992-12-24';
update jugadores set fecha_alta='2008-10-20';
update jugadores set fecha_alta='1998-01-31';
update jugadores set fecha_alta='2010-01-15';
update jugadores set fecha_alta='2007-03-01';
update jugadores set fecha_alta='2011-02-11';
update jugadores set fecha_alta='1994-03-01';
update jugadores set fecha_alta='1993-07-25';
update jugadores set fecha_alta='2000-08-07';
update jugadores set fecha_alta='2010-10-01';
update jugadores set fecha_alta='2001-12-03';
update jugadores set fecha_alta='1997-05-09';
update jugadores set fecha_alta='1995-08-17';
update jugadores set fecha_alta='2007-02-20';
update jugadores set fecha_alta='2000-04-22';
update jugadores set fecha_alta='2005-04-02';
update jugadores set fecha_alta='2002-03-14';
update jugadores set fecha_alta='1993-03-07';
update jugadores set fecha_alta='2006-04-01';
update jugadores set fecha_alta='2008-07-23';
update jugadores set fecha_alta='2001-06-19';
update jugadores set fecha_alta='1998-04-01';
update jugadores set fecha_alta='2002-06-30';
update jugadores set fecha_alta='2007-03-16';
update jugadores set fecha_alta='1998-01-19';
update jugadores set fecha_alta='2004-09-04';
update jugadores set fecha_alta='2006-06-29';
update jugadores set fecha_alta='1994-01-12';
update jugadores set fecha_alta='2000-12-31';
update jugadores set fecha_alta='1993-07-04';
update jugadores set fecha_alta='1998-08-06';
update jugadores set fecha_alta='1999-02-07';
update jugadores set fecha_alta='2009-01-15';
update jugadores set fecha_alta='2000-05-31';
update jugadores set fecha_alta='1993-08-01';
update jugadores set fecha_alta='1999-01-26';
update jugadores set fecha_alta='1998-08-22';
update jugadores set fecha_alta='2009-09-16';
update jugadores set fecha_alta='2006-12-09';
update jugadores set fecha_alta='2007-03-20';
update jugadores set fecha_alta='2001-09-24';
update jugadores set fecha_alta='2002-11-08';
update jugadores set fecha_alta='2003-02-23';
update jugadores set fecha_alta='2006-01-26';
update jugadores set fecha_alta='2008-10-01';
update jugadores set fecha_alta='2004-02-09';
update jugadores set fecha_alta='1993-02-07';
update jugadores set fecha_alta='1998-03-15';
update jugadores set fecha_alta='1994-07-21';
update jugadores set fecha_alta='2001-05-08';
update jugadores set fecha_alta='1993-02-05';
update jugadores set fecha_alta='2001-04-30';
update jugadores set fecha_alta='2009-10-28';
update jugadores set fecha_alta='2005-02-10';
update jugadores set fecha_alta='2002-07-14';
update jugadores set fecha_alta='1996-05-26';
update jugadores set fecha_alta='1998-10-01';
update jugadores set fecha_alta='2012-09-29';
update jugadores set fecha_alta='2010-10-19';
update jugadores set fecha_alta='1999-11-04';
update jugadores set fecha_alta='2005-09-29';
update jugadores set fecha_alta='2009-09-22';
update jugadores set fecha_alta='2009-08-01';
update jugadores set fecha_alta='2006-10-05';
update jugadores set fecha_alta='1998-12-31';
update jugadores set fecha_alta='2004-03-14';
update jugadores set fecha_alta='2011-02-16';
update jugadores set fecha_alta='2007-07-04';
update jugadores set fecha_alta='1994-08-21';
update jugadores set fecha_alta='2000-12-29';
update jugadores set fecha_alta='2009-01-05';
update jugadores set fecha_alta='1996-10-23';
update jugadores set fecha_alta='2009-05-03';
update jugadores set fecha_alta='2002-07-26';
update jugadores set fecha_alta='2002-08-05';


select  * from jugadores limit 400;