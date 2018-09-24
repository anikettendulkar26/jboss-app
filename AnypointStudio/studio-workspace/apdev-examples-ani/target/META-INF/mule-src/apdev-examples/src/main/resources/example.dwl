%dw 2.0
output application/xml
---
root @(departureDate : payload.departureDate) : {
	price : payload.price,
	airline : ++ (payload.airline as String,payload.flightCode as String),
	newprice : {
		new : payload.price as Number * 2
	}
}
