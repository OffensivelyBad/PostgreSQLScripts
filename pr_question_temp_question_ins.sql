/*
create table rpt.question (
	question_id bigserial primary key,
	sm_question_id bigint,
	survey_id bigint,
	label text,
	"position" int,
	"name" varchar(255),
	"family" varchar(255),
	subtype varchar(255),
	datetime_added timestamp,
	datetime_modified timestamp
)
*/

insert into rpt.question (sm_question_id, survey_id, "label", "position", "name", "family", subtype, datetime_added, datetime_modified)
select 
	question_id,
	survey_id,
	heading,
	"position",
	"name",
	"family",
	subtype,
	current_timestamp,
	current_timestamp
from temp_question;

select * from rpt.question limit 1