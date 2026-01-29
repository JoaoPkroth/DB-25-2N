/* Lógico_1: */

CREATE TABLE character (
    character_id INT PRIMARY KEY,
    name CHAR(250),
    descriptiom CHAR(250),
    affilitation CHAR(250),
    race_name CHAR(250),
    special_ability CHAR(250),
    character_type CHAR(250)
);

CREATE TABLE item (
    item_id INT PRIMARY KEY,
    name CHAR(250),
    type CHAR(250),
    effect CHAR(250),
    rarity CHAR(250)
);

CREATE TABLE local (
    local_id INT PRIMARY KEY,
    name CHAR(250),
    descriptiom CHAR(250),
    type CHAR(250)
);

CREATE TABLE E__Assoc__1_have (
    quantity SMALLINT,
    fk_character_character_id INT,
    fk_item_item_id INT
);

CREATE TABLE to_be (
    fk_character_character_id INT,
    fk_local_local_id INT
);
 
ALTER TABLE E__Assoc__1_have ADD CONSTRAINT FK_E__Assoc__1_have_1
    FOREIGN KEY (fk_character_character_id)
    REFERENCES character (character_id);
 
ALTER TABLE E__Assoc__1_have ADD CONSTRAINT FK_E__Assoc__1_have_2
    FOREIGN KEY (fk_item_item_id)
    REFERENCES item (item_id);
 
ALTER TABLE to_be ADD CONSTRAINT FK_to_be_1
    FOREIGN KEY (fk_character_character_id)
    REFERENCES character (character_id)
    ON DELETE RESTRICT;
 
ALTER TABLE to_be ADD CONSTRAINT FK_to_be_2
    FOREIGN KEY (fk_local_local_id)
    REFERENCES local (local_id)
    ON DELETE RESTRICT;