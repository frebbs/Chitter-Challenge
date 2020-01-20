CREATE TABLE users(
                      id SERIAL PRIMARY KEY,
                      username VARCHAR(30) unique,
                      email VARCHAR(30) unique,
                      password VARCHAR(20),
                      f_name VARCHAR(20),
                      l_name VARCHAR(20),
                      created_at TIMESTAMP DEFAULT now());
