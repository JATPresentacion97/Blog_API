# Blog API

This is a simple Blog API built using **Spring Boot**, **Gradle**, and **Java**. The API allows users to perform basic CRUD operations on blog posts, including retrieving, creating, and deleting blog posts.

## Features

- **GET** all blog posts
- **GET** a blog post by ID
- **POST** a new blog post
- **DELETE** a blog post by ID

## Technologies Used

- **Java 17**
- **Spring Boot**
- **Spring Data JPA**
- **H2 Database** (in-memory)
- **Gradle** (build tool)

## Project Structure

```bash
blog-api/
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── example
│   │   │           └── blogapi
│   │   │               ├── BlogApiApplication.java
│   │   │               ├── controller
│   │   │               │   └── PostController.java
│   │   │               ├── model
│   │   │               │   └── Post.java
│   │   │               ├── repository
│   │   │               │   └── PostRepository.java
│   │   │               └── service
│   │   │                   └── PostService.java
│   │   └── resources
│   │       ├── application.properties
│   │       └── data.sql
└── build.gradle
```

# Getting Started
### Prerequisites

Make sure you have the following installed on your machine:

- **Java 17** or higher
- **Gradle**
- **Postman** (for testing the API)
  
### Running the Application
1. Clone the repository:
   ```bash
  git clone https://github.com/your-username/blog-api.git
  cd blog-api
  ```
2. Run the application using Gradle:
   ```bash
  ./gradlew bootRun
  ```

The application will start running on http://localhost:8080.

## Endpoints

| Method | Endpoint              | Description                  |
|--------|-----------------------|------------------------------|
| GET    | `/api/posts`           | Get all blog posts            |
| GET    | `/api/posts/{id}`      | Get a blog post by ID         |
| POST   | `/api/posts`           | Create a new blog post        |
| DELETE | `/api/posts/{id}`      | Delete a blog post by ID      |

## Sample Data

By default, some sample data is pre-loaded using the `data.sql` file.

```sql
INSERT INTO post (title, content) VALUES ('First Post', 'This is the content of the first post.');
INSERT INTO post (title, content) VALUES ('Second Post', 'This is the content of the second post.');
```

## Database

The project uses an H2 in-memory database, which means data will be lost once the application stops. You can view the H2 console by visiting:

http://localhost:8080/h2-console


- **JDBC URL:** `jdbc:h2:mem:testdb`
- **Username:** `sa`
- **Password:** `password`

## Postman Collection

A Postman collection is available to test the API. You can find the collection here.

### Import the Collection into Postman

1. Open Postman.
2. Click **Import**.
3. Select the `postman-collection.json` file or paste the raw JSON (provided in the file) and import.

The collection will include the following requests:

- **GET** all posts
- **GET** a post by ID
- **POST** create a new post
- **DELETE** delete a post by ID

## Example Request Body (for POST)

When creating a new blog post, send a JSON body like this:

```json
{
  "title": "New Blog Post",
  "content": "This is the content of the new post."
}
```
## Running Tests

You can run unit tests using Gradle:

```bash
./gradlew test
```

### License
This project is licensed under the MIT License - see the LICENSE file for details.

### Contributing
Feel free to fork this repository, open issues, or submit pull requests!

### Contact
If you have any questions, feel free to contact me at johnalbertpresentacion@gmail.com.
