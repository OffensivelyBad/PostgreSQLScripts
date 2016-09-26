/*
create table rpt.survey (
	survey_id bigserial primary key,
	sm_survey_id bigint,
	title text,
	question_count int,
	enabled varchar(255),
	date_created timestamp,
	date_modified timestamp,
	datetime_added timestamp,
	datetime_modified timestamp
)
*/

insert into rpt.survey (sm_survey_id, title, question_count, enabled, date_created, date_modified, datetime_added, datetime_modified)
select 
	survey_id,
	"text",
	question_count,
	enabled,
	date_created,
	date_modified, 
	current_timestamp, 
	current_timestamp
from temp_survey;

select * from rpt.survey limit 1