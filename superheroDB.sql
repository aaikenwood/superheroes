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

select * from hero;

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

insert into hero(hero_name, alias, team_id, ability_id)
values ('Bruce Wayne', 'Protect the world'),
('JSA', 'Defeat the Nazis'),
('Birds of Prey', 'Fight crime (without men)'),
('Task Force X', "Follow Waller's orders or die"),
('Teen Titans', 'Teach young superheroes to be their best');