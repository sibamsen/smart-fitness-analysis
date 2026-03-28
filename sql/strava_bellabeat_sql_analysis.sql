CREATE TABLE daily_activity (
    id BIGINT,
    activitydate DATE,
    totalsteps INT,
    totaldistance FLOAT,
    trackerdistance FLOAT,
    loggedactivitiesdistance FLOAT,
    veryactivedistance FLOAT,
    moderatelyactivedistance FLOAT,
    lightactivedistance FLOAT,
    sedentaryactivedistance FLOAT,
    veryactiveminutes INT,
    fairlyactiveminutes INT,
    lightlyactiveminutes INT,
    sedentaryminutes INT,
    calories INT,
    date DATE
);

CREATE TABLE hourly_steps (
    id BIGINT,
    activityho TIMESTAMP,
    steptotal INT,
    hour INT
);

CREATE TABLE hourly_calories (
    id BIGINT,
    activityho TIMESTAMP,
    calories INT,
    hour INT
);


CREATE TABLE sleep_day (
    id BIGINT,
    sleepday DATE,
    totalsleeprecords INT,
    totalminutesasleep INT,
    totaltimeinbed INT,
    efficiency FLOAT,
    date DATE
);

CREATE TABLE minute_sleep (
    id BIGINT,
    date TIMESTAMP,
    value INT,
    log_id BIGINT
);

CREATE TABLE heartrate (
    id BIGINT,
    time TIMESTAMP,
    value INT
);

CREATE TABLE weight_bmi (
    id BIGINT,
    date TIMESTAMP,
    weightkg FLOAT,
    weightpounds FLOAT,
    fat FLOAT,
    bmi FLOAT,
    ismanuallog BOOLEAN,
    logid BIGINT,
    bmi_category TEXT
);

CREATE TABLE merged_fitness (
    id BIGINT,
    activitydate DATE,
    totalsteps INT,
    totaldistance FLOAT,
    trackerdistance FLOAT,
    loggedactivitiesdistance FLOAT,
    veryactivedistance FLOAT,
    moderatelyactivedistance FLOAT,
    lightactivedistance FLOAT,
    sedentaryactivedistance FLOAT,
    veryactiveminutes INT,
    fairlyactiveminutes INT,
    lightlyactiveminutes INT,
    sedentaryminutes INT,
    calories INT,
    date DATE,
    totalminutesasleep FLOAT,
    bmi FLOAT,
    bmi_category TEXT
);

SELECT totalsteps, COUNT(*) AS frequency
FROM daily_activity
GROUP BY totalsteps
ORDER BY totalsteps;

SELECT totalsteps, calories
FROM daily_activity;

SELECT
    AVG(veryactiveminutes) AS very_active_avg,
    AVG(fairlyactiveminutes) AS fairly_active_avg,
    AVG(lightlyactiveminutes) AS lightly_active_avg
FROM daily_activity;

SELECT sedentaryminutes
FROM daily_activity;

SELECT hour, AVG(steptotal) AS avg_steps
FROM hourly_steps
GROUP BY hour
ORDER BY hour;

SELECT hour, AVG(steptotal) AS avg_steps
FROM hourly_steps
GROUP BY hour
ORDER BY hour;

SELECT activityho, steptotal
FROM hourly_steps
ORDER BY activityho
LIMIT 1000;

SELECT hour, AVG(calories) AS avg_calories
FROM hourly_calories
GROUP BY hour
ORDER BY hour;

SELECT calories, COUNT(*) AS frequency
FROM hourly_calories
GROUP BY calories;

SELECT activityho, calories
FROM hourly_calories
ORDER BY activityho
LIMIT 1000;

SELECT totalminutesasleep
FROM sleep_day;

SELECT totaltimeinbed, totalminutesasleep
FROM sleep_day;

SELECT efficiency
FROM sleep_day;

SELECT sleepday, totalminutesasleep
FROM sleep_day
ORDER BY sleepday;

SELECT value, COUNT(*) AS frequency
FROM minute_sleep
GROUP BY value;

SELECT value, COUNT(*) AS count
FROM minute_sleep
GROUP BY value
ORDER BY value;

SELECT date, value
FROM minute_sleep
ORDER BY date
LIMIT 500;

SELECT value, COUNT(*) AS frequency
FROM heartrate
GROUP BY value
ORDER BY value;

SELECT time, value
FROM heartrate
ORDER BY time
LIMIT 1000;

SELECT value
FROM heartrate;

SELECT bmi, COUNT(*) AS frequency
FROM weight_bmi
GROUP BY bmi;

SELECT weightkg, bmi
FROM weight_bmi;

SELECT bmi_category, COUNT(*) AS users
FROM weight_bmi
GROUP BY bmi_category;

SELECT totalsteps, totalminutesasleep
FROM merged_fitness
WHERE totalminutesasleep IS NOT NULL;

SELECT bmi, calories
FROM merged_fitness
WHERE bmi IS NOT NULL;

SELECT totalminutesasleep, calories
FROM merged_fitness
WHERE totalminutesasleep IS NOT NULL;

SELECT bmi_category, totalsteps
FROM merged_fitness
WHERE bmi_category IS NOT NULL;

SELECT totalsteps, calories, totalminutesasleep, bmi
FROM merged_fitness
WHERE bmi IS NOT NULL;