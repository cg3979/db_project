/********************************************************
* This script creates the database named liq_hockey 
*********************************************************/

CREATE DATABASE liq_hockey;
USE liq_hockey;

-- Creating Division table
CREATE TABLE Division (
    division_id INT PRIMARY KEY,
    division_name VARCHAR(255) NOT NULL
);

-- Creating Teams table
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(255) NOT NULL,
    division_id INT,
    FOREIGN KEY (division_id) REFERENCES Division(division_id)
);

-- Creating Players table
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

-- Creating Games table
CREATE TABLE GAMES (
    game_id INT PRIMARY KEY,
    team_1 VARCHAR(255) NOT NULL,
    team_2 VARCHAR(255) NOT NULL
);

-- Creating Scores table
CREATE TABLE SCORES (
    game_id INT,
    score_1 INT NOT NULL,
    score_2 INT NOT NULL,
    FOREIGN KEY (game_id) REFERENCES GAMES(game_id)
);

-- Creating Points table
CREATE TABLE POINTS (
    player_id INT,
    num_goals INT NOT NULL,
    num_assists INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- Creating Standings table
CREATE TABLE STANDINGS (
    team_id INT,
    games_won INT NOT NULL,
    games_lost INT NOT NULL,
    pts_total INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

-- Insert data into tables
INSERT INTO Division (division_id, division_name) VALUES
(1, 'Divison A');

INSERT INTO Teams (team_id, team_name, division_id) VALUES
(1, 'Blackhawks', 1),
(2, 'Puckhedz', 1),
(3, 'Slashers', 1),
(4, 'Wolves', 1),
(5, 'Hitmen', 1),
(6, 'Hammerheads', 1);

INSERT INTO Players (player_id, first_name, last_name, team_id) VALUES
(1, 'John', 'Tavares', 1),
(2, 'Conor', 'Bedard', 1),
(3, 'Auston', 'Matthews', 1),
(4, 'William', 'Nylander', 1),
(5,'Mitch', 'Marner', 1),
(6, 'Chris', 'Osgood', 1),
(7, 'Matthew', 'Barzal', 2),
(8, 'Bo', 'Horvat', 2),
(9, 'Noah', 'Dobson', 2),
(10, 'Brock', 'Nelson', 2),
(11, 'Kyle', 'Palmieri', 2),
(12, 'Chris', 'Garcia', 2),
(13, 'Mario', 'Lemieux', 3),
(14, 'Sidney', 'Crosby', 3),
(15, 'Evgeni', 'Malkin', 3),
(16, 'Kris', 'Letang', 3),
(17, 'Jake', 'Powell', 3),
(18, 'Tristan', 'Jarry', 3),
(19, 'Artemi', 'Panarin', 4),
(20, 'Chris', 'Kreider', 4),
(21, 'Adam', 'Fox', 4),
(22, 'Wayne', 'Gretzky', 4),
(23, 'Mark', 'Messier', 4),
(24, 'Igor', 'Shysterkin', 4),
(25, 'Patrick', 'Kane', 5),
(26, 'Alex', 'Ovechkin', 5),
(27, 'Alex', 'Debrincat', 5),
(28, 'Nick', 'Lidstrom', 5),
(29, 'Steve', 'Yzerman', 5),
(30, 'Mike', 'Richter', 5),
(31, 'Quinn', 'Hughes', 6),
(32, 'Jack', 'Hughes', 6),
(33, 'JT', 'Miller', 6),
(34, 'Brock', 'Boeser', 6),
(35, 'Tom', 'Bertuzzi', 6),
(36, 'Ilya', 'Sorokin', 6);

INSERT INTO GAMES (game_id, team_1, team_2) VALUES
(1, 'Blackhawks', 'Puckhedz'), 
(2, 'Blackhawks', 'Slashers'), 
(3, 'Blackhawks', 'Wolves'), 
(4, 'Blackhawks', 'Hitmen'), 
(5, 'Blackhawks', 'Hammerheads'), 
(6, 'Puckhedz', 'Slashers'), 
(7, 'Puckhedz', 'Wolves'), 
(8, 'Puckhedz', 'Hitmen'), 
(9, 'Puckhedz', 'Hammerheads'), 
(10, 'Slashers', 'Wolves'), 
(11, 'Slashers', 'Hitmen'), 
(12, 'Slashers', 'Hammerheads'), 
(13, 'Wolves', 'Hitmen'), 
(14, 'Wolves', 'Hammerheads'), 
(15, 'Hitmen', 'Hammerheads');

INSERT INTO SCORES (game_id, score_1, score_2) VALUES
(1, 3, 1),
(2, 2, 3),
(3, 5, 0),
(4, 1, 2),
(5, 0, 4),
(6, 3, 0),
(7, 4, 3),
(8, 2, 3),
(9, 1, 5),
(10, 3, 2),
(11, 6, 0),
(12, 5, 1),
(13, 0, 1),
(14, 2, 5),
(15, 3, 4);

INSERT INTO POINTS (player_id, num_goals, num_assists) VALUES
(1, 5, 2),
(2, 2, 3),
(3, 4, 1),
(4, 0, 2),
(5, 1, 4),
(6, 0, 0),
(7, 2, 2),
(8, 3, 1),
(9, 2, 2),
(10, 1, 2),
(11, 3, 4),
(12, 0, 0),
(13, 3, 4),
(14, 2, 5),
(15, 1, 1),
(16, 6, 7),
(17, 5, 0),
(18, 0, 0),
(19, 2, 2),
(20, 1, 2),
(21, 0, 1),
(22, 1, 1),
(23, 3, 1),
(24, 0, 0),
(25, 1, 3),
(26, 0, 2),
(27, 1, 2),
(28, 3, 0),
(29, 4, 2),
(30, 0, 0),
(31, 3, 5),
(32, 2, 2),
(33, 3, 5),
(34, 3, 4),
(35, 8, 3),
(36, 0, 0);

INSERT INTO STANDINGS (team_id, games_won, games_lost, pts_total) VALUES
(1, 2, 3, 4),
(2, 2, 3, 4),
(3, 4, 1, 8),
(4, 0, 5, 0),
(5, 3, 2, 6),
(6, 4, 1, 8);
