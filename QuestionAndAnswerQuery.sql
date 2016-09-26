select * from rpt.answer limit 1;
select * from rpt.question limit 1;
select * from rpt.respondent limit 1;
select * from rpt.response limit 10;
select * from rpt.survey limit 1;

select
	--* 
	sum(case when r.label like '%walk%' then 1 else 0 end) as walking,
	sum(case when r.label like '%elliptical%' then 1 else 0 end) as elliptical
from
	rpt.survey s
	inner join rpt.question q
		on s.sm_survey_id = q.survey_id
	inner join rpt.answer a
		on q.sm_question_id = a.sm_question_id
	inner join rpt.response r
		on a.sm_answer_id = cast(r.sm_row_answer_id as bigint)
where
	q.label = 'Which of the following exercise do you regularly do?'
	and a.label = 'Other (please specify)'
	--and r.label like '%walk%'
order by r.label
limit 1


select
	* 
	--sum(case when r.label like '%walk%' then 1 else 0 end) as walking,
	--sum(case when r.label like '%elliptical%' then 1 else 0 end) as elliptical
from
	rpt.survey s
	inner join rpt.question q
		on s.sm_survey_id = q.survey_id
	inner join rpt.answer a
		on q.sm_question_id = a.sm_question_id
	inner join rpt.response r
		on a.sm_answer_id = cast(r.sm_row_answer_id as bigint)
where
	q.label = 'What is the primary reason you don''t use Apple Watch to track your workouts?'
	and a.label = 'Other (please specify)'
	--and r.label like '%walk%'
order by r.label
limit 1
