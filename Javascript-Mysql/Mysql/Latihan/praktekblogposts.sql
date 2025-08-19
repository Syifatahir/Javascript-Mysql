-- 1. Buat database dengan nama “db_blog_posts”
create database db_blog_posts;

use db_blog_posts;

-- 2. Buatlah tabel – tabel seperti skema database
-- Table Users
create table users (
    id int primary key,
    name varchar(100) not null
);

-- Table Blog Posts
create table blog_posts (
    id int primary key,
    title varchar(100) not null,
    body text,
    author_id int,
    foreign key (author_id) references users(id)
);

-- Table Categories
create table categories (
    id int primary key,
    name varchar(100) not null
);

-- Tabel Relasi Post dan Categories
create table post_categories (
    post_id int,
    category_id int,
    foreign key (post_id) references blog_posts(id),
    foreign key (category_id) references categories(id)
);

-- 3. Lalu isi tabel tersebut dengan data
-- Data Users
insert into users (id, name) values
(1, 'John Doe'),
(2, 'Robert'),
(3, 'Frank'),
(4, 'Jane');

-- Data Blog Posts
insert into blog_posts (id, title, body, author_id) values
(1, 'Algorithm', 'this is article for algorithm', 1),
(2, 'Lorem Ipsum', 'lorem ipsum dolor sit amet', 1),
(3, 'NodeJS', 'Node.js is a JavaScript runtime built on Chrome''s V8 JavaScript engine.', 2),
(4, 'ReactJS', 'ReactJS is JavaScript library for building user interfaces', 4),
(5, 'Git', 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency', 3),
(6, 'Basketball', 'Basketball is a team sport in which two teams, most commonly of five players each, opposing one another on a rectangular court, compete with the primary 
objective of shooting a basketball (approximately 9.4 inches (24 cm) in diameter) through the defenders hoop (a basket 18 inches (46 cm) in diameter mounted 10 feet (3.048 m) 
high to a backboard at each end of the court, while preventing the opposing team from shooting through their own hoop', 2);

-- Data Categories
insert into categories (id, name) values
(1, 'Basic'),
(2, 'Library'),
(3, 'Unknown'),
(4, 'Sport');

-- Data Post Categories
insert into post_categories (post_id, category_id) values
(1, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 2),
(4, 1),
(5, 1),
(6, 4);

-- 4. Tampilkan seluruh data posts yang ditulis oleh John Doe
select * 
from blog_posts 
join users on blog_posts.author_id = users.id
where users.name = 'John Doe';

-- 5. Tampilkan category name, post title, author name yang memiliki category basic saja
SELECT c.name AS category_name, p.title AS post_title, u.name AS author_name
FROM categories c
JOIN post_categories pc ON c.id = pc.category_id
JOIN blog_posts p ON pc.post_id = p.id
JOIN users u ON p.author_id = u.id
WHERE c.name = 'Basic';

-- 6. Tampilkan category name, post title, dan body yang ditulis oleh robert dan frank
SELECT c.name AS category_name, p.title AS post_title, p.body
FROM categories c
JOIN post_categories pc ON c.id = pc.category_id
JOIN blog_posts p ON pc.post_id = p.id
JOIN users u ON p.author_id = u.id
WHERE u.name IN ('Robert','Frank');

-- 7. Tampilkan nama penulis dan nama category untuk artikel yang memiliki lebih dari atau sama dengan dua category
SELECT post_id
FROM post_categories
GROUP BY post_id
HAVING COUNT(category_id) >= 2;

SELECT u.name AS author_name, c.name AS category_name
FROM blog_posts p
JOIN post_categories pc ON p.id = pc.post_id
JOIN categories c ON pc.category_id = c.id
JOIN users u ON p.author_id = u.id
WHERE p.id IN (
    SELECT post_id
    FROM post_categories
    GROUP BY post_id
    HAVING COUNT(category_id) >= 2
);

-- 8. Tampilkan nama penulis dan post title untuk artikel yang memiliki hanya 1 category saja
SELECT post_id
FROM post_categories
GROUP BY post_id
HAVING COUNT(category_id) = 1;

SELECT u.name AS author_name, p.title AS post_title
FROM blog_posts p
JOIN users u ON p.author_id = u.id
WHERE p.id IN (
    SELECT post_id
    FROM post_categories
    GROUP BY post_id
    HAVING COUNT(category_id) = 1
);
