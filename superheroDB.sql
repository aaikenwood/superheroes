create database multiverse;

use multiverse;

create table team
(
id int primary key not null auto_increment,
teamname varchar(32) not null,
objective varchar(512) not null
);

create table ability
(
id int primary key not null auto_increment,
ability varchar(32)
);

create table hero
(
id int primary key not null auto_increment,
hero_name varchar(32) not null,
alias varchar(64) not null,
team_id int,
foreign key (team_id) references team(id),
ability_id int,
foreign key (ability_id) references ability(id)
);

select * from team;

insert into ability(ability)
values ('Martial Arts'),
('Flight'),
('Super-Speed'),
('Ring Creation'),
('Crossbow Archery'),
('Hammer-Fighting'),
('Marksmanship'),
('Induce dizziness'),
('Swordsmanship'),
('Acrobatics');


insert into team(teamname, objective)
values ('JLA', 'Protect the world'),
('JSA', 'Defeat the Nazis'),
('Birds of Prey', 'Fight crime (without men)'),
('Task Force X', "Follow Waller's orders or die"),
('Teen Titans', 'Teach young superheroes to be their best');

insert into hero(hero_name, alias, ability_id, team_id)
values ('Bruce Wayne', 'Batman',1,1),
('Clark Kent', 'Superman',2,1),
('Jay Garrick', 'The Flash',3,2),
('Alan Scott', "Green Lantern",4,2),
('Helena Bertenelli', "The Huntress",5,3),
('Dr. Harleen Quinzel', 'Harley Quinn',6,3),
('Floyd Lawton', 'Deadshot',7,4),
('Cecil Adams', 'Count Vertigo',8,4),
('Damian Wayne', 'Robin',9,5),
('Dick Grayson', 'Nightwing',10,5)
;