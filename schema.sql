CREATE TABLE employer
(
    employer_id   serial    primary key,
    employer_name text      not null,
    employer_site text,
    area_id       integer   not null
);

CREATE TABLE vacancy
(
    vacancy_id          serial          primary key,
    vacancy_created_at  timestamp       not null,
    employer_id         integer         not null references employer (employer_id),
    position_name       text            not null,
    compensation_from   integer,
    compensation_to     integer,
    compensation_gross  boolean
);

CREATE TABLE resume
(
    resume_id          serial    primary key,
    resume_title       text      not null,
    resume_description text      not null
);

CREATE TABLE response
(
    response_id   serial        primary key,
    resume_id     integer       not null references resume (resume_id),
    vacancy_id    integer       not null references vacancy (vacancy_id),
    response_time timestamp     not null
);
