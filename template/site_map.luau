return {
	{ path = "", page = require("@pages/index") },
	{ path = "dev", page = require("@pages/dev") },
	{ path = "ost", page = require("@pages/ost") },
	{ path = "news", page = require("@pages/news") },
	{ path = "news/success", page = require("@pages/news"), props = { page_type = "success" } },
	{ path = "news/fail", page = require("@pages/news"), props = { page_type = "fail" } }
}