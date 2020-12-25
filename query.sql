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

SELECT percentile_cont(0.5) WITHIN GROUP ( ORDER BY vacancies_count )
FROM (
         SELECT count(vacancy) AS vacancies_count
         FROM vacancy
         RIGHT JOIN employer on employer.employer_id = vacancy.employer_id
         GROUP BY employer.employer_id
     ) AS vc;

SELECT
       area_id,
       min(time_to_first_response),
       max(time_to_first_response)
FROM (
        SELECT
               employer.area_id,
               min(response.response_time - vacancy.vacancy_created_at) AS time_to_first_response
        FROM response
               INNER JOIN vacancy ON vacancy.vacancy_id = response.vacancy_id
               INNER JOIN employer ON employer.employer_id = vacancy.employer_id
        GROUP BY
               response.vacancy_id,
               employer.area_id
    ) AS aittfr
GROUP BY area_id;
