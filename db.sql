create user sandrex with password 'user123456';
alter role sandrex superuser;
create database lenstore;
create table product(id serial primary key, qty int, item varchar, status varchar default 'pending', date timestamp default now());
alter table product owner to sanrex;
alter table product add column price int;
alter table product add column archived boolean default false;