data:extend({
	{
		type = "string-setting",
		name = "sct-difficulty-cost",
		order = "sct-a[difficulty]",
		setting_type = "startup",
		default_value = "normal",
		allowed_values =  {"lolwhat", "noadjustment", "uberwaffe", "normal", "extended"}
	},

	{
		type = "string-setting",
		name = "sct-military",
		order = "sct-b[military]",
		setting_type = "startup",
		default_value = "tier3",
		allowed_values =  {"tier3", "tier2"}
	},

	{
		type = "string-setting",
		name = "sct-bio",
		order = "sct-c[biotoken]",
		setting_type = "startup",
		default_value = "tier2",
		allowed_values =  {"tier2", "tier1"}
	},

	{
		type = "bool-setting",
		name = "sct-lab-scaling",
		order = "sct-d[scaling]",
		setting_type = "startup",
		default_value = false,
	},

	{
		type = "string-setting",
		name = "sct-tier1-lab",
		order = "sct-e[startlab]",
		setting_type = "startup",
		default_value = "sct-lab-1",
		allowed_values = {"sct-lab-1","lab" },
	},

	{
		type = "string-setting",
		name = "sct-lab-modules",
		order = "sct-f[modules]",
		setting_type = "startup",
		default_value = "none",
		allowed_values = {"none", "tier3", "tier4" },
	},
})


