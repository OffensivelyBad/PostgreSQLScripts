select
	s.survey_name as survey, u.email as "user", q.label as question, a.label as answer, usac.label as comment
from
	"user" u
	inner join user_survey us
		on u.user_id = us.user_id
	inner join user_survey_answer usa
		on us.user_survey_id = usa.user_survey_id
	left outer join user_survey_answer_comment usac
		on usa.user_survey_answer_id = usac.user_survey_answer_id
	inner join answer a
		on usa.answer_id = a.answer_id
	inner join question q
		on a.question_id = q.question_id
	inner join survey s
		on us.survey_id = s.survey_id
where
	u.user_id = 1