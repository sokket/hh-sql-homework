SELECT position_name,
       employer_name,
       area_id
FROM vacancy
         INNER JOIN employer on employer.employer_id = vacancy.employer_id
WHERE compensation_from IS null AND compensation_to IS null
ORDER BY vacancy_created_at DESC
LIMIT 10;

SELECT avg(CASE
               WHEN compensation_gross THEN compensation_to
               ELSE compensation_to / 87 * 100 END)           AS avg_max_salary,
       avg(CASE
               WHEN compensation_gross THEN compensation_from
               ELSE compensation_from / 87 * 100 END)         AS avg_min_salary,
       avg((CASE
                 WHEN compensation_gross THEN compensation_to
                 ELSE compensation_to / 87 * 100 END) -
            (CASE
                 WHEN compensation_gross THEN compensation_from
                 ELSE compensation_from / 87 * 100 END)) AS avg_salary
FROM vacancy;

SELECT employer_name
FROM (
         SELECT employer_name, count(response) AS responses_count
         FROM employer
                  LEFT JOIN vacancy ON vacancy.employer_id = employer.employer_id
                  LEFT JOIN response ON response.vacancy_id = vacancy.vacancy_id
         GROUP BY employer.employer_id
     ) as enrc
ORDER BY responses_count DESC, employer_name
LIMIT 5;


SELECT percentile_cont(0.5) WITHIN GROUP ( ORDER BY response_count.count )
FROM (
         SELECT count(response) AS count
         FROM employer
                  INNER JOIN vacancy ON vacancy.employer_id = employer.employer_id
                  INNER JOIN response on response.vacancy_id = vacancy.vacancy_id
         GROUP BY vacancy.employer_id
     ) AS response_count;

SELECT DISTINCT ON (area_id) area_id,
                             max(deltas.delta) OVER (PARTITION BY area_id),
                             min(deltas.delta) OVER (PARTITION BY area_id)
FROM (
         SELECT employer.area_id,
                response.response_time - vacancy.vacancy_created_at AS delta
         FROM vacancy
                  INNER JOIN employer on vacancy.employer_id = employer.employer_id
                  INNER JOIN response on vacancy.vacancy_id = response.vacancy_id
     ) AS deltas;
