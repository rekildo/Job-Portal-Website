# Database Schema Documentation

## Need to create only 2 tables `user` & `jobs`.

## Job Table

The `jobs` table represents information related to job postings.

### Columns

1. **id** (INT): Unique identifier for each job posting. Auto-incremented.
2. **title** (VARCHAR(255)): Title of the job posting. Not nullable.
3. **description** (VARCHAR(3000)): Description of the job posting.
4. **category** (VARCHAR(255)): Category or type of the job.
5. **status** (VARCHAR(50)): Status of the job posting.
6. **location** (VARCHAR(255)): Location of the job.
7. **pdate** (TIMESTAMP): Posting date, defaulting to the current timestamp.

### SQL Definition

```sql
CREATE TABLE jobs (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(3000),
    category VARCHAR(255),
    status VARCHAR(50),
    location VARCHAR(255),
    pdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```


## User Table

The `user` table represents information related to users.

### Columns

1. **id** (INT): Unique identifier for each user. Auto-incremented.
2. **name** (VARCHAR(255)): Name of the user. Not nullable.
3. **qualification** (VARCHAR(255)): Qualification or educational background of the user.
4. **email** (VARCHAR(255)): Email address of the user. Unique and not nullable.
5. **password** (VARCHAR(255)): Password for user authentication. Not nullable.
6. **role** (VARCHAR(50)): Role of the user (e.g., admin, regular user). Not nullable.

### SQL Definition

```sql
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    qualification VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);

