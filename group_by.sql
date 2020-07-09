-- 1
-- select g.name, count(*)
-- from track t
-- join genre g on t.genre_id = g.genre_id
-- group by g.name;

-- 2
-- select g.name, count(*)
-- from track t
-- join genre g on t.genre_id = g.genre_id
-- where g.name = 'Pop'
-- or g.name = 'Rock'
-- group by g.name;

-- 3
-- select ar.name, count(*)
-- from album al
-- join artist ar on al.artist_id = ar.artist_id
-- group by ar.name;
