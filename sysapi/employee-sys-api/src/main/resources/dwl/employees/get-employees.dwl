%dw 2.0
output application/json
---
payload map (item) -> {
	id: item.emp_no,
	first_name: item.first_name,
	last_name: item.last_name,
	gender: item.gender,
	birth_date: item.birth_date,
	hire_date: item.hire_date
}