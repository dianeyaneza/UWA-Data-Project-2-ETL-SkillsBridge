-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Q6PYMM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE  discouragedjobseekers_age  (
     age_range  VARCHAR   NOT NULL,
     discouraged_jobseekers  FLOAT   NOT NULL,
    PRIMARY KEY ( age_range )
);

CREATE TABLE  discouragedjobseekers_location  (
    state_territory  VARCHAR   NOT NULL,
     discouraged_jobseekers  FLOAT    NOT NULL,
    PRIMARY KEY (state_territory )
);

CREATE TABLE  jobvacancies_states  (
    state_territory  VARCHAR   NOT NULL,
     job_vacancies  FLOAT    NOT NULL,
	FOREIGN KEY (state_territory ) REFERENCES discouragedjobseekers_location(State_Territory)
);

CREATE TABLE  employed_vs_unemployed_by_age  (
     age_range  VARCHAR   NOT NULL,
     employed_males  FLOAT  NOT NULL,
     employed_females  FLOAT   NOT NULL,
     employed_persons   FLOAT    NOT NULL,
     unemployed_males   FLOAT    NOT NULL,
     unemployed_females   FLOAT    NOT NULL,
     unemployed_persons   FLOAT    NOT NULL,
	FOREIGN KEY ( age_range ) REFERENCES discouragedjobseekers_age(age_range)
);

CREATE TABLE  employed_vs_unemployed_by_state  (
    state_territory  VARCHAR   NOT NULL,
     employed_males   FLOAT    NOT NULL,
     employed_females   FLOAT    NOT NULL,
     employed_persons   FLOAT    NOT NULL,
     unemployed_males   FLOAT    NOT NULL,
     unemployed_females   FLOAT    NOT NULL,
     unemployed_persons   FLOAT    NOT NULL,
	FOREIGN KEY (state_territory ) REFERENCES discouragedjobseekers_location(State_Territory)
);

CREATE TABLE  main_difficulty_by_age  (
     age_range  VARCHAR   NOT NULL,
     too_many_applicants   FLOAT    NOT NULL,
	FOREIGN KEY ( age_range ) REFERENCES discouragedjobseekers_age(age_range)
);


