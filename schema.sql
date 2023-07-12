/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name varchar(50), date_of_birth date,
    escape_attempts INT, neutered boolean,
    weight_kg decimal
);
ALTER TABLE animals
ADD COLUMN species varchar(20);

CREATE TABLE owners (
  id int GENERATED ALWAYS AS IDENTITY,
  full_name varchar,
  age int,
  PRIMARY KEY(id)
);

CREATE TABLE species (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar,
  PRIMARY KEY(id)
);

ALTER TABLE animals
  DROP COLUMN species;
ALTER TABLE animals ADD species_id int REFERENCES species(id);
ALTER TABLE animals ADD owner_id int REFERENCES owners(id);