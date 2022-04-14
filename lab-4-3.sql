-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name, players.first_name, players.last_name, max(home_runs)
FROM players INNER JOIN stats INNER JOIN teams
ON players.id=stats.player_id AND stats.team_id=teams.id
WHERE teams.year=2019;
