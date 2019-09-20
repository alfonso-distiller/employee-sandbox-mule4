%dw 2.0
output application/java
---
{
	code: 409,
	message: error.description,
	description: error.detailedDescription
}