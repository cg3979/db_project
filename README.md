
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
        division_id INT,
        division_name VARCHAR(255)
    }
    Teams {
        team_id INT,
        team_name VARCHAR(255),
        division_id INT
    }
    Players {
        player_id INT,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        team_id INT
    }
    GAMES {
        game_id INT,
        team_1 VARCHAR(255),
        team_2 VARCHAR(255)
    }
    SCORES {
        game_id INT,
        score_1 INT,
        score_2 INT
    }
    POINTS {
        player_id INT,
        num_goals INT,
        num_assists INT
    }
    STANDINGS {
        team_id INT,
        games_won INT,
        games_lost INT,
        pts_total INT
    }
    Division ||--o| Teams : "division_id"
    Teams ||--o| Players : "team_id"
    Teams ||--o| STANDINGS : "team_id"
    Players ||--o| POINTS : "player_id"
    GAMES ||--| SCORES : "game_id"
```
