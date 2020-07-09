-- 1
-- select * from invoice i
-- join invoice_line il on i.invoice_id = il.invoice_id
-- where il.unit_price > 0.99;

-- 2
-- select i.invoice_date, c.first_name, c.last_name, i.total from invoice i
-- join customer c on i.customer_id = c.customer_id;

-- 3
-- select c.first_name, c.last_name, e.first_name, e.last_name from customer c
-- join employee e on c.support_rep_id = e.employee_id;

-- 4
-- select al.title, ar.name from album al
-- join artist ar on al.artist_id = ar.artist_id;

-- 5
-- select pt.track_id from playlist_track pt
-- join playlist p on p.playlist_id = pt.playlist_id
-- where p.name = 'Music';

-- 6
-- select t.name from track t
-- join playlist_track pt on t.track_id = pt.track_id
-- where pt.playlist_id = 5;

-- 7
-- select t.name, p.name from track t
-- join playlist_track pt on t.track_id = pt.track_id
-- join playlist p on pt.playlist_id = p.playlist_id;

-- 8
-- select t.name, a.title from track t
-- join album a on t.album_id = a.album_id
-- join genre g on t.genre_id = g.genre_id
-- where g.name = 'Alternative & Punk';

-- BD
-- select t.name, g.name, a.title, ar.name from track t
-- join genre g on t.genre_id = g.genre_id
-- join album a on t.album_id = a.album_id
-- join artist ar on t.composer = ar.name
-- join playlist_track pt on t.track_id = pt.track_id
-- join playlist p on pt.playlist_id = p.playlist_id
-- where p.name = 'Music'
-- order by t.name asc;
