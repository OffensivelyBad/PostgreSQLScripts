/*
create table rpt.answer (
	answer_id bigserial primary key,
	sm_answer_id bigint,
	sm_question_id bigint,
	label text,
	"position" int,
	weight int,
	visible varchar(255),
	datetime_added timestamp,
	datetime_modified timestamp
)
*/

insert into rpt.answer (sm_answer_id, sm_question_id, "label", "position", weight, visible, datetime_added, datetime_modified)
select 
	answer_id, 
	question_id,
	"text",
	"position",
	weight,
	visible,
	current_timestamp, 
	current_timestamp
from temp_answer

select * from rpt.answer limit 1