SELECT name, duration FROM songs WHERE duration = (SELECT max(duration) FROM songs);

SELECT name FROM songs WHERE duration >= '00:03:30';

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

SELECT nickname FROM performers
WHERE NOT id IN (
	SELECT performers_id FROM albums_performers
	JOIN albums ON albums.id = albums_performers.albums_id
	WHERE year_of_release = 2020);


SELECT DISTINCT collections.name FROM collections
JOIN collections_songs ON collections.id = collections_songs.collections_id
JOIN songs ON collections_songs.songs_id = songs.id
JOIN albums ON albums.id = songs.albums_id
JOIN albums_performers ON albums.id = albums_performers.albums_id 
JOIN performers ON performers.id = albums_performers.performers_id 
WHERE nickname = 'The Weekend'


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

SELECT albums.name, count(songs.name) FROM albums
JOIN songs ON albums.id = songs.albums_id GROUP BY albums.id
HAVING count(songs.name) = (
	SELECT count(songs.name) FROM albums
	JOIN songs ON albums.id = songs.albums_id
	GROUP BY albums.id
	ORDER BY COUNT(songs.name)
	LIMIT 1);