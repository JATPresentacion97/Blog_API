CREATE TABLE IF NOT EXISTS post (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content TEXT
);

INSERT INTO post (title, content) VALUES ('First Post', 'This is the content of the first post.');
INSERT INTO post (title, content) VALUES ('Second Post', 'This is the content of the second post.');
