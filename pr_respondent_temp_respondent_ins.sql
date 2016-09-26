/*
create table rpt.respondent (
	respondent_id bigserial primary key,
	sm_respondent_id bigint,
	sm_collector_id bigint,
	firstname varchar(255),
	lastname varchar(255),
	collection_mode varchar(255),
	custom_id varchar(255),
	email varchar(255),
	ip_address varchar(255),
	"status" varchar(255),
	recipient_id bigint,
	date_start timestamp,
	date_modified timestamp,
	datetime_added timestamp,
	datetime_modified timestamp
)
*/

insert into rpt.respondent (sm_respondent_id, sm_collector_id, firstname, lastname, collection_mode, custom_id, email, ip_address, "status", recipient_id, date_start, date_modified, datetime_added, datetime_modified)
select 
	respondent_id,
	collector_id,
	first_name,
	last_name,
	collection_mode,
	custom_id,
	email,
	ip_address,
	status,
	cast(recipient_id as bigint),
	date_start,
	date_modified,
	current_timestamp, 
	current_timestamp
from temp_respondent;

select * from rpt.respondent limit 1