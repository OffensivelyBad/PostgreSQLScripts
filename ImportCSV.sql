drop table if exists temp_survey;
drop table if exists temp_question;
drop table if exists temp_answer;
drop table if exists temp_response;
drop table if exists temp_respondent;

create table temp_survey (
	"text" text,
	survey_id bigint,
	enabled varchar(255),
	question_count bigint,
	date_created timestamp,
	date_modified timestamp,
	num_responses int
);

create table temp_question (
	"name" varchar(255),
	"family" varchar(255),
	subtype varchar(255),
	"position" int,
	survey_id bigint,
	heading text,
	question_id bigint
);
create table temp_answer (
	weight int,
	"text" text,
	visible varchar(255),
	"position" int,
	question_id bigint,
	"type" varchar(255),
	answer_id bigint
);
create table temp_response (
	survey_id bigint,
	respondent_id bigint,
	question_id bigint,
	"row" varchar(255),
	"col" varchar(255),
	"col_choice" varchar(255),
	"text" text
);

create table temp_respondent (
	respondent_id bigint,
	date_start timestamp,
	date_modified timestamp,
	collector_id bigint,
	collection_mode varchar(255),
	custom_id varchar(255),
	email varchar(255),
	first_name varchar(255),
	last_name varchar(255),
	ip_address varchar(255),
	status varchar(255),
	recipient_id varchar(255)
);

copy temp_survey from '/../../../python/surveys.csv' delimiter ',' csv header;
copy temp_question from '/../../../python/questions.csv' delimiter ',' csv header;
copy temp_answer from '/../../../python/answers.csv' delimiter ',' csv header;
copy temp_response from '/../../../python/responses.csv' delimiter ',' csv header;
copy temp_respondent from '/../../../python/respondents.csv' delimiter ',' csv header;

select * from temp_survey limit 1;
select * from temp_question limit 1;
select * from temp_answer limit 1;
select * from temp_response limit 1;
select * from temp_respondent limit 1;