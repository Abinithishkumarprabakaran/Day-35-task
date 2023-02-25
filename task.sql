-- 1. Movie should have multiple media (Video or Image)

create table movies (
    Movie_id INTEGER PRIMARY KEY,
    Title TEXT,
    ReleasedYear INT
)

create table media (
    media_id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    media_type TEXT,
    media_URL TEXT
)

-- 2. Movie can belongs to multiple Genre

create table movieGenre (
    Gen_id INTEGER,
    Movie_id INTEGER,
    Genre TEXT
)

-- 3. Movie can have multiple reviews and Review can belongs to a user

create table users (
    user_id INTEGER,
    username TEXT,
    email TEXT
)

create table movieReview (
    review_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    Movie_id INTEGER,
    Rating INTEGER,
    Comment TEXT
)

-- 4. Artist can have multiple skills

create table Artists (
    artist_id INTEGER,
    Artist_name TEXT
)

create table Skills (
    skill_id INTEGER,
    skill_name TEXT
)

create table ArtistSkills (
  artist_id INT,
  skill_id INT
)

-- 5. Artist can perform multiple role in a single film

create table roles (
    role_id INTEGER,
    role_name TEXT
)

create table movieRoles (
    movie_id INTEGER,
    artist_id INTEGER,
    role_id INTEGER
)