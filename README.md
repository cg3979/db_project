
# Application Architecture Plan & ER Model
## Problem 
A group of people want to get together and start a pick-up hockey league. They want the league to feel realistic and want a way to track teams and players. This project aims to create a database for such a scenario and the details below provide a high-level view. 

## Architecture 
It is possible for a two-tier or a three-tier approach for this project. The two-tier provides more simplicity while the three-tier would be more complex but could be used for a web-based applicaition for the league. 

## ER Diagram

The following ER diagram represents the database structure for the league. It includes the following entities: Division, Teams, Games, Players, Seasons, Statistics, and Referees along with their relationships. 

```mermaid
erDiagram
    Division {
        division_id INT PK
        division_name VARCHAR(255)
    }
    Teams {
        team_id INT PK
        team_name VARCHAR(255)
        division_id INT FK
    }
    Players {
        player_id INT PK
        first_name VARCHAR(255)
        last_name VARCHAR(255)
        team_id INT FK
    }
    GAMES {
        game_id INT PK
        team_1 VARCHAR(255)
        team_2 VARCHAR(255)
    }
    SCORES {
        game_id INT PK FK
        score_1 INT NOT NULL
        score_2 INT NOT NULL
    }
    POINTS {
        player_id INT PK FK
        num_goals INT NOT NULL
        num_assists INT NOT NULL
    }
    STANDINGS {
        team_id INT PK FK
        games_won INT NOT NULL
        games_lost INT NOT NULL
        pts_total INT NOT NULL
    }
    Division ||--o{ Teams : "division_id"
    Teams ||--o{ Players : "team_id"
    Teams ||--o{ GAMES : "team_1, team_2"
    GAMES ||--o{ SCORES : "game_id"
    Players ||--o{ POINTS : "player_id"
    Teams ||--o{ STANDINGS : "team_id"
```
