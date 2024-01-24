USE ig_clone;

 /* 1. Question: We want to reward our users who have been around the longest. Find the 5 oldest users. */
SELECT username,created_at
FROM users
ORDER BY created_at ASC
LIMIT 5;

 /* 2. Retrieve all photos posted by a specific user or users between 12 to 20.*/
SELECT u.username, p.image_url,p.user_id
FROM photos p
JOIN ig_clone.users u on u.id = p.user_id
WHERE p.user_id BETWEEN 12 AND 20;

 /* 3. Find the latest 10 comments posted on a specific photo.*/
SELECT *
FROM comments
WHERE photo_id = 5
ORDER BY created_at DESC
LIMIT 10;

/* 4. Count the number of likes for a particular photo.*/
SELECT photo_id,COUNT(*) AS Like_Photos
FROM likes
WHERE photo_id BETWEEN 5 AND 20
GROUP BY photo_id;


SELECT *
    FROM (
    SELECT photo_id, COUNT(*) AS Like_Photos
    FROM likes
    GROUP BY photo_id
    ) as photo_liked
WHERE `photo_id` BETWEEN 10 AND 20
GROUP BY photo_id;


/*5. List all users who have commented on a specific photo.*/
SELECT u.*
FROM users u
JOIN comments c ON u.id = c.user_id
WHERE c.photo_id = 10;

/* 6. Retrieve photos with a specific tag.*/
SELECT p.*
FROM photos p
JOIN photo_tags pt on p.id = pt.photo_id
JOIN tags t on t.id = pt.tag_id
WHERE t.tag_name = 'drunk';


/* 7. Count the number of followers for a specific user.*/
SELECT u.username,COUNT(u.username) AS follower_count
FROM users u
JOIN follows f on u.id = f.followee_id
GROUP BY u.username;

/* 8. Find users who have not posted any photos.*/
SELECT u.*
FROM users u
LEFT JOIN photos p on u.id = p.user_id
WHERE p.id IS NULL ;

/*9. Retrieve photos with more than 100 likes.*/
SELECT  COUNT(*) AS Total_likes
FROM likes l
JOIN photos p on p.id = l.photo_id
WHERE Total_likes >100;

/*10. Find the most popular tag based on the number of photos associated with it.*/
SELECT t.tag_name,COUNT(pt.photo_id) AS Total_photo
FROM tags t
JOIN photo_tags pt on t.id = pt.tag_id
GROUP BY t.id
ORDER BY Total_photo DESC
LIMIT 1;

/*11. Retrieve the username and the total number of photos posted by each user.*/
SELECT  u.username,COUNT(p.id) AS Total_photos
FROM users u
JOIN photos p on u.id = p.user_id
GROUP BY u.username;

/*12. Find the photos with the most comments.*/
SELECT p.*,COUNT(c.id) AS Total_comments
FROM photos p
JOIN comments c on p.id = c.photo_id
GROUP BY p.id
ORDER BY Total_comments DESC
LIMIT 1;


/*13. List users who have posted photos in the last 7 days.*/
SELECT u.*
FROM users u
JOIN photos p on u.id = p.user_id
WHERE p.created_dat >= '2024-01-13 15:43:28'- INTERVAL 7 DAY;

/*14. Retrieve all photos with their associated comments.*/
SELECT p.*, c.*
FROM photos p
JOIN comments c on c.id = p.user_id;

/*15. Count the number of followers for each user.*/
SELECT u.username,F.followee_id,COUNT(f.followee_id) AS Total_followers
FROM follows f
JOIN ig_clone.users u on u.id = f.followee_id
GROUP BY u.username,f.followee_id;

/*16. Find the users who have not liked any photos.*/
SELECT u.*
FROM users u
LEFT JOIN likes l on u.id = l.user_id
WHERE l.user_id IS NULL;



/*17. List the tags associated with a specific photo.*/
SELECT t.*
FROM tags t
JOIN ig_clone.photo_tags pt on t.id = pt.photo_id
WHERE pt.photo_id= 14;

/*18. Count the number of comments posted by each user.*/
SELECT u.username,COUNT(c.user_id) AS Total_comments
FROM comments c
JOIN ig_clone.users u on u.id = c.user_id
GROUP BY u.username;



