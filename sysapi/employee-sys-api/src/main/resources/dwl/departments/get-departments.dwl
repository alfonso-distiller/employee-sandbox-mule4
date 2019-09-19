%dw 2.0
output application/json
---
payload map (department) -> {
	id: department.dept_no,
	name: department.dept_name
}