return {
	{ path = "", page = require("@pages/index") },
	{ path = "dev", page = require("@pages/dev") },
	{ path = "news", page = require("@pages/news") },
	{ path = "ai-policy", page = require("@pages/ai-policy") },
	{ path = "news/success", page = require("@pages/news"), props = { page_type = "success" } },
	{ path = "news/fail", page = require("@pages/news"), props = { page_type = "fail" } }
}