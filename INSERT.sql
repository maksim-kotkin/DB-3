INSERT INTO performers VALUES (1, 'The Weekend');
INSERT INTO performers VALUES (2, 'Queen');
INSERT INTO performers VALUES (3, 'Yung Lean');
INSERT INTO performers VALUES (4,'The Beatles');

INSERT INTO genres VALUES (1, 'R&B');
INSERT INTO genres VALUES (2, 'Soul');
INSERT INTO genres VALUES (3, 'Rock');
INSERT INTO genres VALUES (4, 'Hip-Hop');
INSERT INTO genres VALUES (5, 'Rap');

INSERT INTO genres_performers VALUES (1, 1);
INSERT INTO genres_performers VALUES (2, 1);
INSERT INTO genres_performers VALUES (3, 2);
INSERT INTO genres_performers VALUES (3, 4);
INSERT INTO genres_performers VALUES (4, 3);
INSERT INTO genres_performers VALUES (5, 3);

INSERT INTO albums VALUES (1, 'Starboy', 2016);
INSERT INTO albums VALUES (2, 'Staz', 2020);
INSERT INTO albums VALUES (3, 'The Game', 1980);
INSERT INTO albums VALUES (4, 'Help!', 1965);

INSERT INTO albums_performers  VALUES (1, 1);
INSERT INTO albums_performers  VALUES (2, 3);
INSERT INTO albums_performers  VALUES (3, 2);
INSERT INTO albums_performers  VALUES (4, 4);

INSERT INTO songs  VALUES (1, 'Party Monster', '00:04:09', 1);
INSERT INTO songs  VALUES (2, 'Reminder', '00:03:38', 1);
INSERT INTO songs  VALUES (3, 'My Life', '00:02:37', 2);
INSERT INTO songs  VALUES (4, 'Pikachu', '00:02:07', 2);
INSERT INTO songs  VALUES (5, 'Another One Bites the Dust', '00:03:34', 3);
INSERT INTO songs  VALUES (6, 'Save Me', '00:03:47', 3);
INSERT INTO songs  VALUES (7, 'Tell Me What You See', '00:02:37', 4);

INSERT INTO collections  VALUES (1, 'After Hours', 2020);
INSERT INTO collections  VALUES (2, 'Stardust', 2019);
INSERT INTO collections  VALUES (3, 'Bohemian Rhapsody', 2018);
INSERT INTO collections  VALUES (4, 'Tomorrow Never Fnows', 2012);

INSERT INTO collections_songs VALUES (1, 1);
INSERT INTO collections_songs VALUES (2, 1);
INSERT INTO collections_songs VALUES (2, 2);
INSERT INTO collections_songs VALUES (3, 2);
INSERT INTO collections_songs VALUES (5, 3);
INSERT INTO collections_songs VALUES (6, 3);
INSERT INTO collections_songs VALUES (7, 4);