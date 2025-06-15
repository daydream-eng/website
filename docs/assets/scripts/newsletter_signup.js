function go_to_error_page(reason) {
	window.location = document.head.querySelector("#newsletter-error-page").href;
}

function go_to_success_page() {
	window.location = document.head.querySelector("#newsletter-success-page").href;
}

function init(form) {
	form.addEventListener("submit", (e) => {
		e.preventDefault();
		let form_data = new FormData(form);

		fetch(form.action, {
			method: "POST",
			body: form_data
		})
		.then(
			response => {
				if (!response.ok) {
					throw "The network returned an error code when sending.";
				}
				return response.json();
			}
		)
		.then(
			json => {
				if (!json.success) {
					throw "The mail provider rejected the website's request.";
				}
			}
		)
		.then(go_to_success_page)
		.catch(go_to_error_page)
	})
}

for (form of document.querySelectorAll(".newsletter-signup")) {
	init(form);
}