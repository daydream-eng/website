local html = require("@util/html")

local form = html "form"
local input = html "input"
local button = html "button"

return function(
	props: {}
)
	return form {
		class = "newsletter-signup",
		action = "https://assets.mailerlite.com/jsonp/1590104/forms/157254350281901074/subscribe",
		method = "post",
		target = "_blank",
		children = {
			input {
				type = "email",
				name = "fields[email]",
				placeholder = "Email address",
				autocomplete = "email",
				required = true
			},
			input {
				type = "hidden",
				name = "ml-submit",
				value = "1"
			},
			input {
				type = "hidden",
				name = "anticsrf",
				value = "true"
			},
			button {
				type = "submit",
				text = "Join"
			}
		}
	}
end