create table if not exists albumsmusicians(
albumsmusicians_id SERIAL primary key,
album_id INTEGER not null references album(album_id),
musician_id INTEGER not null references musician(musician_id)
);

create table if not exists musiciansgenres(
musiciansgenres_id SERIAl primary key,
musician_id INTEGER not null references musician(musician_id),
genre INTEGER not null references genre(genre_id)
);

create table if not exists musician(
musician_id SERIAL primary key,
name VARCHAR(40) not null,
genre_id INTEGER not null references genre(genre_id),
album_id INTEGER not null references album(album_id)
);

create table if not exists genre(
genre_id SERIAL primary key, 
name VARCHAR (40) not null, 
musician_id INTEGER references musician(musician_id)
);

create table if not exists album(
album_id SERIAL primary key,
name VARCHAR(40) not null,
year_of_release date not null,
musician_id INTEGER not null references musician(musician_id)
);

create table if not exists song(
song_id SERIAL primary key,
name VARCHAR(40) not null,
duration INTEGER not null,
album_id INTEGER not null references album(album_id),
collection_id INTEGER not null references collection(collection_id)
);

create table if not exists collection(
collection_id SERIAL primary key,
name VARCHAR(40) not null,
year_of_release date not null,
song_id INTEGER not null references song(song_id)
);




