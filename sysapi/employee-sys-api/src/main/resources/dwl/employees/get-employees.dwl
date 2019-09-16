%dw 2.0
output application/json
fun formatDate(data:Date) = data as String {format: "yyyy-MM-dd"} 
---
payload distinctBy $.emp_no map(employee, index) -> {
	id: employee.emp_no,
	first_name: employee.first_name,
	last_name: employee.last_name,
	gender: employee.gender,
	birth_date: formatDate(employee.birth_date),
	hire_date: formatDate(employee.hire_date),
	titles: ((payload filter $.emp_no == employee.emp_no) map {
		title: $.title,
		from: formatDate($.from_date),
		to: formatDate($.to_date) default null
	})
}