--HOW MANY COUNTRIES HAVE PLAYED IN THE WORLD CUP (5 YEARS)

WITH all_worldcup AS (
	SELECT 
	'wc 2002' AS worldcup_year,
	team,
	points
FROM fifa_2002

UNION ALL

SELECT 
	'wc 2006' AS worldcup_year,
	team,
	points
FROM fifa_2006

UNION ALL
SELECT 
	'wc 2010' AS worldcup_year,
	team,
	points
FROM fifa_2010

UNION ALL

SELECT 
	'wc 2014' AS worldcup_year,
	team,
	points
FROM fifa_2014

UNION ALL

SELECT 
	'wc 2018' AS worldcup_year,
	team,
	points
FROM fifa_2018
) 

SELECT 
	COUNT(DISTINCT team)
	
FROM all_worldcup
;



-- GET THE TOTAL GAMES PLAYED, WIN LOSS, GOALS FOR/ GOAL AGAISNT

WITH all_worldcup AS (
	SELECT 
	'wc 2002' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2002

UNION ALL

SELECT 
	'wc 2006' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2006

UNION ALL
SELECT 
	'wc 2010' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2010

UNION ALL

SELECT 
	'wc 2014' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2014

UNION ALL

SELECT 
	'wc 2018' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2018
) 

SELECT 
	SUM(games_played) AS total_game_played,
	SUM(win) AS total_win,
	SUM(loss) AS total_loss,
	SUM(goal_for)AS total_goal_for,
	SUM(goal_against)AS total_goal_against
	
FROM all_worldcup
;



--THE COUNTRY WITH THE HIGHEST AND LOWEST APPEARANCE


WITH all_worldcup AS (
	SELECT 
	'wc 2002' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2002

UNION ALL

SELECT 
	'wc 2006' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2006

UNION ALL
SELECT 
	'wc 2010' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2010

UNION ALL

SELECT 
	'wc 2014' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2014

UNION ALL

SELECT 
	'wc 2018' AS worldcup_year,
	team,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	points
FROM fifa_2018
) 

SELECT 
	MAX(DISTINCT team) AS highest_appearance, 
	MIN(DISTINCT team) AS lowest_appearance 
	
FROM all_worldcup
;

	
	--THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES PLAYED


WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(games_played) AS highest_games_played,
	MIN(games_played) AS lowest_games_played,
    games_played
    
FROM all_worldcup	

GROUP BY team

HAVING games_played = MAX(games_played)
   OR games_played = MIN(games_played)
;



--THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES WON

WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(win) AS highest_win,
	MIN(win) AS lowest_win
	
FROM all_worldcup	

GROUP BY team

HAVING win = MAX(win)
   OR win = MIN(win)

;


--THE COUNTRY WITH THE HIGHEST AND LOWEST GAME LOST

WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(lost) AS highest_lost,
	MIN(lost) AS lowest_lost
	
FROM all_worldcup	

GROUP BY team

HAVING lost = MAX(lost)
   OR lost = MIN(lost)

;



--THE COUNTRY WITH THE HIGHEST AND LOWEST GOAL FOR

WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(goal_for) AS highest_goal_for,
	MIN(goal_for) AS lowest_goal_for
	
FROM all_worldcup	

GROUP BY team

HAVING goal_for = MAX(goal_for)
   OR goal_for = MIN(goal_for)

;



--THE COUNTRY WITH THE HIGHEST AND LOWEST GOAL AGAINST

WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(goal_against) AS highest_goal_against,
	MIN(goal_against) AS lowest_goal_goal_against
	
FROM all_worldcup	

GROUP BY team

HAVING goal_against = MAX(goal_against)
   OR goal_against = MIN(goal_against)

;


--THE COUNTRY WITH THE HIGHEST AND LOWEST GOAL DIFFERENCE


WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(goal_difference) AS highest_goal_difference,
	MIN(goal_difference) AS lowest_goal_difference
	
FROM all_worldcup	

GROUP BY team, goal_difference 

HAVING goal_difference = MAX(goal_difference)
   OR goal_difference = MIN(goal_difference)

;


--THE COUNTRY WITH THE HIGHEST AND LOWEST POINTS


WITH all_worldcup AS (
	SELECT 
		'wc 2002' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2002

	UNION ALL

	SELECT 
		'wc 2006' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2006

	UNION ALL
	
	SELECT 
		'wc 2010' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2010

	UNION ALL
	
	SELECT 
		'wc 2014' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2014

	UNION ALL

	SELECT 
		'wc 2018' AS worldcup_year,
		team,
		games_played,
		win,
		loss,
		goal_for,
		goal_against,
		goal_difference,
		points
	FROM fifa_2018
) 

SELECT 
	team,
	MAX(points) AS highest_points,
	MIN(points) AS lowest_points
	
FROM all_worldcup	

GROUP BY team 

HAVING points = MAX(points)
   OR  points = MIN(points)

;
















