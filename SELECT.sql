SELECT name, duration FROM songs ORDER BY duration DESC LIMIT 1;

SELECT name  FROM songs WHERE duration >= '00:03:30';

SELECT name FROM collections WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT nickname FROM performers WHERE nickname NOT LIKE '% %';

SELECT name FROM songs WHERE name LIKE '%My%';


SELECT genres_id, count(performers_id) FROM genres_performers
GROUP BY genres_id


SELECT songs.id FROM songs
JOIN albums ON songs.albums_id=albums.id
WHERE year_of_release BETWEEN 2019 AND 2020;

SELECT albums.name, avg(duration) FROM albums
JOIN songs ON songs.albums_id=albums.id
GROUP BY albums.name

SELECT performers_id FROM albums_performers
JOIN albums ON albums.id = albums_performers.albums_id 
WHERE year_of_release != 2016;

SELECT collections.name FROM collections
JOIN collections_songs ON collections.id = collections_songs.collections_id
JOIN songs ON collections_songs.songs_id = songs.id
JOIN albums ON albums.id = songs.albums_id
JOIN albums_performers ON albums.id = albums_performers.albums_id 
JOIN performers ON performers.id = albums_performers.performers_id 
WHERE nickname = 'The Weekend'
GROUP BY collections.name

SELECT albums.name FROM albums
JOIN albums_performers ON albums.id = albums_performers.albums_id
JOIN performers ON performers.id = albums_performers.performers_id
JOIN genres_performers ON genres_performers.performers_id = performers.id
GROUP BY albums.name
HAVING count(genres_id) > 1;

SELECT songs.name FROM songs
LEFT JOIN collections_songs ON songs.id = collections_songs.songs_id
LEFT JOIN collections ON collections_songs.collections_id = collections.id
GROUP BY songs.name
HAVING count(collections.name) = 0

SELECT nickname, duration FROM songs 
JOIN albums ON songs.albums_id = albums.id 
JOIN albums_performers ON albums.id = albums_performers.albums_id 
JOIN performers ON performers.id = albums_performers.performers_id
WHERE duration = (SELECT min(duration) FROM songs)


SELECT nickname, duration FROM songs 
JOIN albums ON songs.albums_id = albums.id 
JOIN albums_performers ON albums.id = albums_performers.albums_id 
JOIN performers ON performers.id = albums_performers.performers_id
ORDER BY duration

 

SELECT albums.name FROM albums 
JOIN (SELECT albums_id, count(*) as songs_count FROM songs GROUP BY albums_id) songs ON albums.id = songs.albums_id
WHERE songs.songs_count = (SELECT Min(songs_count)  FROM ( SELECT albums_id, count(*) AS  songs_count FROM songs GROUP BY albums_id));