/* Red_Dead_Lógico (1): */

CREATE TABLE players (
    user_id int PRIMARY KEY,
    game_id int,
    user_name char(250),
    email Char(320),
    password int,
    account_creation_date Date
);

CREATE TABLE game (
    game_id int PRIMARY KEY,
    animals_id int,
    map_id int,
    ranking_id int,
    character_id int,
    save_Name Char(15),
    difficulty Char(15),
    creation_Date Date
);

CREATE TABLE animals (
    animals_id int PRIMARY KEY,
    rarity Char(10)
);

CREATE TABLE map (
    map_id int PRIMARY KEY,
    biome Char(15)
);

CREATE TABLE ranking (
    ranking_id int PRIMARY KEY,
    xp_level int
);

CREATE TABLE character (
    character_id int PRIMARY KEY,
    character_name Char(15),
    gender Char(15),
    hair_type Char(15),
    forehead_type Char(15),
    eyes_type Char(15),
    eyeBrow_type Char(15),
    nose_type Char(15),
    cheek_type Char(15),
    mouth_type Char(15),
    jaw_type Char(15),
    jhun_type Char(15)
);
 