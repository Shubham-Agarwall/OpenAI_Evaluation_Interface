SHOW DATABASES;

CREATE DATABASE team9_gaia_db;

use team9_gaia_db;


CREATE TABLE gaia_data (
    task_id VARCHAR(255) PRIMARY KEY,
    question TEXT,
    level INT,
    final_answer TEXT,
    file_name VARCHAR(255),
    gcp_object_path VARCHAR(255),
    annotator_metadata TEXT,
    steps TEXT,
    number_of_steps TEXT,
    how_long_did_this_take VARCHAR(255),
    tools TEXT,
    number_of_tools FLOAT
);


SELECT * from gaia_data;


# DROP TABLE IF EXISTS gaia_data;

CREATE TABLE gaia_data (
    task_id VARCHAR(250) PRIMARY KEY,
    question TEXT,
    level INT,
    final_answer TEXT,
    file_name VARCHAR(250),
    gcp_object_path VARCHAR(250),
    annotator_metadata TEXT,
    steps TEXT,
    number_of_steps TEXT,
    how_long_did_this_take VARCHAR(250),
    tools TEXT,
    number_of_tools FLOAT
);


select * from gaia_data;


CREATE TABLE summary_data(
    task_id VARCHAR(255) PRIMARY KEY,  -- Use task_id as the primary key
    question TEXT,                     -- The question sent to OpenAI
    user_answer TEXT,                  -- User's answer (if provided)
    openai_response TEXT,              -- The response from OpenAI
    final_answer TEXT,                 -- The correct answer from the GAIA dataset
    evaluation_result VARCHAR(50),     -- Whether the user's answer was correct or incorrect
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- The time of the evaluation
);

SELECT COUNT(*) FROM gaia_data;




CREATE DATABASE team9_gaia_db;

use team9_gaia_db;

# Creating updated table
CREATE TABLE gaia_data (
    task_id VARCHAR(250) PRIMARY KEY,
    question TEXT,
    level INT,
    final_answer TEXT,
    file_name VARCHAR(250),
    file_type VARCHAR(100),
    supported_by_openai VARCHAR(100),
    gcp_object_path VARCHAR(250),
    annotator_metadata TEXT,
    steps TEXT,
    number_of_steps INT,
    how_long_did_this_take VARCHAR(100),
    tools TEXT,
    number_of_tools FLOAT
);

select * from gaia_data;












#Deleting last row with column names
DELETE FROM gaia_data
WHERE task_id = 'task_id'
  AND question = 'question'
  AND level = 0
  AND final_answer = 'final_answer'
  AND file_name = 'file_name'
  AND file_type = 'file_type'
  AND supported_by_openai = 'supported_by_openai'
  AND gcp_object_path = 'gcp_object_path'
  AND annotator_metadata = 'annotator_metadata'
  AND steps = 'steps'
  AND number_of_steps = 0
  AND how_long_did_this_take = 'how_long_did_this_take'
  AND tools = 'tools'
  AND number_of_tools = 0;

# deleting last row with null values
SELECT * FROM gaia_data WHERE task_id IS NULL OR task_id = ' ';

#row count
SELECT COUNT(*) FROM gaia_data;


select * from gaia_data;


DESCRIBE gaia_data;

########################################################
# Project - 2

use team9_gaia_db;

CREATE TABLE project2_gaia_table (
    task_id VARCHAR(255) PRIMARY KEY,
    Question TEXT,
    `Level` VARCHAR(50),
    file_name VARCHAR(255),
    Final_answer TEXT,
    Steps TEXT,
    Steps_without_answer TEXT,
    Number_of_steps INT,
    How_long_did_this_take VARCHAR(50),
    Tools TEXT,
    Number_of_tools INT,
    data_from VARCHAR(50),
    file_path TEXT,
    file_type VARCHAR(50)
);


# DROP TABLE IF EXISTS project2_gaia_table;



SELECT * FROM project2gaia_table;
SELECT * FROM team9_gaia_db.project2_gaia_table;

SHOW TABLES;


CREATE TABLE team9_gaia_db.project2_pdf_mapping_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task_id VARCHAR(255),
    file_name VARCHAR(255),
    original_pdf_path TEXT,
    json_output_path TEXT,
    images_output_path TEXT,
    Question TEXT,
    Steps_without_answer TEXT,
    data_from VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (task_id) REFERENCES project2_gaia_table(task_id)
);

select * from  team9_gaia_db.project2_pdf_mapping_table


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    hashed_password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


GRANT ALL PRIVILEGES ON *.* TO 'root'34.82.158.68'%' IDENTIFIED BY 'team9-assignment1-sql-instance-DB';
FLUSH PRIVILEGES;


CREATE TABLE users (     id INT AUTO_INCREMENT PRIMARY KEY,     username VARCHAR(50) NOT NULL UNIQUE,     password_hash VARCHAR(255) NOT NULL );
