ALTER TABLE character_db_version CHANGE COLUMN required_12631_01_characters_corpse required_12697_01_characters_characters bit;
UPDATE characters SET drunk = (drunk / 256) & 0xFF;
ALTER TABLE characters CHANGE drunk drunk tinyint(3) unsigned NOT NULL DEFAULT '0';

