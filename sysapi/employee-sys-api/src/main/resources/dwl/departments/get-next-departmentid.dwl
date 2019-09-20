%dw 2.0
import * from dw::core::Strings
output application/java
---
{
	id: "d" ++ leftPad(vars.department.id,3,"0"),
	name: payload.name
}