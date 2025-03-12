create database sportflow;
use sportflow;

create table utilisateur (
                             id_users int primary key auto_increment,
                             nomcomplet varchar (300) not null,
                             email varchar (300) not null,
                             password varchar (250) not null,
                             role enum('admin', 'coach', 'member') not null
);

create table member (
                        id_member int primary key auto_increment,
                        id_users int unique,
                        sport varchar (250) not null,
                        date_de_naissance date not null,
                        foreign key (id_users) references utilisateur(id_users)
);

create table coach (
                       id_coach int primary key auto_increment,
                       id_users int unique,
                       nomcomplete varchar (300) not null,
                       specialite varchar (300) not null,
                       foreign key (id_users) references utilisateur(id_users)
);

create table seance (
                        id_seance int primary key auto_increment,
                        id_coach int,
                        id_member int,
                        Date_seance date not null,
                        time_seance time not null,
                        foreign key (id_member) references member (id_member),
                        foreign key (id_coach) references coach (id_coach)
);



