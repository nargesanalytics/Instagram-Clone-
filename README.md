#  Instagram Clone

This repository contains the SQL schema for a social media platform database, including tables for users, photos, comments, likes, follows, tags, and their relationships. 
Below are a set of example questions along with SQL queries that you can use to interact with the dataset.

## Queries



```sql
 1. Retrieve all photos posted by a specific user
SELECT *
FROM photos
WHERE user_id = {{user_id}};
```

```sql
 2. Find the latest 10 comments posted on a specific photo.


SELECT *
FROM comments
WHERE photo_id = {{photo_id}}
ORDER BY created_at DESC
LIMIT 10;
```


### How to Use
Clone the Repository:

'''sql
git clone (https://github.com/nargesanalytics/Instagram-Clone-)
cd [Instagram-Clonee]


## Set up your MySQL database:

- Create a new database.[https://github.com/nargesanalytics/Instagram-Clone-/blob/main/Instagram%20Clone%20Database.sql]
- Execute the SQL schema provided in the schema.sql file to create the necessary tables.
- 
## Run Queries:

Use your preferred MySQL client to run the queries mentioned in the README or create your custom queries.

## Explore the Data:

1. We want to reward our users who have been around the longest. Find the 5 oldest users.
2. Retrieve all photos posted by a specific user or users between 12 to 20.
3. Find the latest 10 comments posted on a specific photo.
4. Count the number of likes for a particular photo.
5. List all users who have commented on a specific photo.
6. Retrieve photos with a specific tag.
7. Count the number of followers for a specific user
8. Find users who have not posted any photos.
9. Retrieve photos with more than 100 likes.
10. Find the most popular tag based on the number of photos associated with it.
11. Retrieve the username and the total number of photos posted by each user.
12. Find the photos with the most comments.
13. List users who have posted photos in the last 7 days.
14. Retrieve all photos with their associated comments.
15. Count the number of followers for each user.
16. Find the users who have not liked any photos.
17. List the tags associated with a specific photo.
18. Count the number of comments posted by each user.
19.  

## Contributing
If you have additional queries or improvements to suggest, please feel free to contribute by opening an issue or creating a pull request.

## License
This project is licensed under the MIT License.

## vbnet

Replace `[user_id]`, `[photo_id]`, `[tag_name]`, etc., with actual values based on your specific use case. Additionally, make sure to include the actual repository URL and name.






