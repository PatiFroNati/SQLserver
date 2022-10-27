USE [Chinook]
GO

CREATE VIEW [dbo].[lv_Album_Title]
as
SELECT a.AlbumId
	, a.Title as Album
	, r.Name as Artist
	, COUNT(t.trackId) as Num_tracks
	, ROUND(SUM((CAST(t.milliseconds as float)/1000)/60), 2) as Album_length
FROM Album a
INNER JOIN Artist r on a.ArtistId = r.ArtistId
INNER JOIN Track t on a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
	, a.Title
	, r.Name;
GO
