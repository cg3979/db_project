# Application Architecture Plan & ER Model
## Problem 
A group of people want to get together and start a pick-up hockey league. They want the league to feel realistic and want a way to track teams and players. This project aims to create a database for such a scenario. 

## Architecture 
It is possible for a two-tier or a three-tier approach for this project. The two-tier provides more simplicity while the three-tier would be more complex but could be used for a web-based applicaition for the league. 

## ER Diagram

The following ER diagram represents the database structure for the league. It includes the following entities: Division, Teams, Games, Players, Seasons, Statistics, and Referees along with their relationships. 

```mermaid
erDiagram
  Division {
    int division_id PK
    string division_name
  }

  Teams {
    int team_id PK
    string team_name
    int division_id FK
  }

  Players {
    int player_id PK
    string player_name
    int team_id FK
  }

  Games {
    int game_id PK
    string game_name
    date game_date
  }

  Seasons {
    int season_id PK
    string season_name
  }

  Statistics {
    int stat_id PK
    int player_id FK
    int games_played
    int goals_scored
  }

  Referees {
    int referee_id PK
    string referee_name
  }

  Division  ||--o{ Teams : has
  Teams ||--o{ Players : has
  Teams ||--o{ Games : participates
  Players ||--o{ Statistics : records
  Games ||--o{ Seasons : occurs_in
  Games ||--o{ Referees : officiated_by
```
