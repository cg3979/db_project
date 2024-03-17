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
    int division_id 
    string division_name
  }

  Teams {
    int team_id 
    string team_name
    int division_id 
  }

  Players {
    int player_id 
    string player_name
    int team_id 
  }

  Games {
    int game_id 
    string game_name
    date game_date
  }

  Seasons {
    int season_id 
    string season_name
  }

  Statistics {
    int stat_id 
    int player_id 
    int games_played
    int goals_scored
  }

  Referees {
    int referee_id 
    string referee_name
  }

  Division  ||--o{ Teams : has
  Teams ||--o{ Players : has
  Teams ||--o{ Games : participates
  Players ||--o{ Statistics : records
  Games ||--o{ Seasons : occurs_in
  Games ||--o{ Referees : officiated_by
```
