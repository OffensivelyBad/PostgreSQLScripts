/*
create table rpt.response (
	response_id bigserial primary key,
	sm_survey_id bigint,
	sm_respondent_id bigint,
	sm_question_id bigint,
	sm_row_answer_id varchar(255),
	sm_col_answer_id varchar(255),
	sm_col_choice_answer_id varchar(255),
	label text,
	datetime_added timestamp,
	datetime_modified timestamp
)
*/

insert into rpt.response (sm_survey_id, sm_respondent_id, sm_question_id, sm_row_answer_id, sm_col_answer_id, sm_col_choice_answer_id, "label", datetime_added, datetime_modified)
select 
	survey_id,
	respondent_id,
	question_id,
	"row",
	col,
	col_choice,
	"text",
	current_timestamp, 
	current_timestamp
from temp_response;

select * from rpt.response limit 1