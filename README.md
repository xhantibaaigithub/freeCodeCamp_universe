# Celestial Bodies PostrgeSQL Database
This project contains the PostgreSQL database schema and data dump for a "Universe" database. The database models various astronomical entities such as galaxies, planets, stars, moons, and spacecraft. It includes tables for storing key information, relationships, and sample data about these celestial objects.

## Database Information
- **Database Name:** universe
- **Project Owner:** [freeCodeCamp](https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/)
- **PostgresSQL Version:** 12.17

## Tables
The database consists of the following tables:
### 1. galaxy
- Stores information about galaxies
- Columns:
    - galaxy_id (Primary Key)
    - name (Unique, Varying Character)
    - distance_from_earth (BigInt)
    - age_in_millions_of_years (Integer)
    - rotation_speed (Integer)
    - description (Text)
    - has_life (Boolean)

### 2. planet
- Stores information about planets.
- Columns:
    - planet_id (Primary Key)
    - temperature (Integer)
    - name (Unique, Varying Character)
    - distance_from_earth (BigInt)
    - age_in_millions_of_years (Integer)
    - rotation_speed (Integer)
    - description (Text)
    - has_life (Boolean)
    - star_id (Foreign Key referencing star.star_id)
    - population (Numeric)

### 3. star
- Stores information about stars.
- Columns:
    - star_id (Primary Key)
    - temperature (Integer)
    - name (Unique, Varying Character)
    - distance_from_earth (BigInt)
    - age_in_millions_of_years (Integer)
    - rotation_speed (Integer)
    - description (Text)
    - has_life (Boolean)
    - galaxy_id (Foreign Key referencing galaxy.galaxy_id)

### 4. moon
- Stores information about moons.
- Columns:
    - moon_id (Primary Key)
    - temperature (Integer)
    - name (Unique, Varying Character)
    - distance_from_earth (BigInt)
    - age_in_millions_of_years (Integer)
    - rotation_speed (Integer)
    - description (Text)
    - has_life (Boolean)
    - planet_id (Foreign Key referencing planet.planet_id)

### 5. spacecraft
- Stores information about spacecrafts.
- Columns:
    - spacecraft_id (Primary Key)
    - name (Unique, Varying Character)
    - speed (Integer)

## Constraints
- Primary key constraints for galaxy_id, planet_id, star_id, moon_id, and spacecraft_id.
- Unique constraints on name columns in galaxy, planet, star, moon, and spacecraft.
- Foreign key constraints:
    - star.galaxy_id references galaxy.galaxy_id
    - planet.star_id references star.star_id
    - moon.planet_id references planet.planet_id

## Sample Data
Sample data has been inserted into each table, providing example entries for galaxies, planets, stars, moons, and spacecraft. Some example entries include:
- **Galaxy:**
    - The Great Beyond
    - Far far away
- **Planet:**
    - Earth
    - Pizza Hut
- **Star:**
    - Lucky Star
    - Bright Star
- **Moon:**
    - Full Moon
    - Sunlight Moon
- **Spacecraft:**
    - Blitz Bok
    - Shooting Star

