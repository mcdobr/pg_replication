#!/usr/bin/env sh


set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	create table if not exists public.person (
		id bigint primary key,
		name varchar not null,
		email varchar unique not null
	);

	insert into person (id, name, email) values (1, 'Torin Armstead', 'tarmstead0@theatlantic.com') on conflict do nothing;
	insert into person (id, name, email) values (2, 'Kathye Geaveny', 'kgeaveny1@cam.ac.uk') on conflict do nothing;
	insert into person (id, name, email) values (3, 'Mattias Portwain', 'mportwain2@pcworld.com') on conflict do nothing;
	insert into person (id, name, email) values (4, 'Leann Water', 'lwater3@squarespace.com') on conflict do nothing;
	insert into person (id, name, email) values (5, 'Marven Mobberley', 'mmobberley4@state.gov') on conflict do nothing;
	insert into person (id, name, email) values (6, 'Juli Cobbe', 'jcobbe5@prweb.com') on conflict do nothing;
	insert into person (id, name, email) values (7, 'Shantee Lugg', 'slugg6@cpanel.net') on conflict do nothing;
	insert into person (id, name, email) values (8, 'Jeana Farlane', 'jfarlane7@networkadvertising.org') on conflict do nothing;
	insert into person (id, name, email) values (9, 'Dallis Rich', 'drich8@com.com') on conflict do nothing;
	insert into person (id, name, email) values (10, 'Carlina Garstan', 'cgarstan9@patch.com') on conflict do nothing;
EOSQL