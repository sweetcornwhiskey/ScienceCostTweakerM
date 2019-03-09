require("config")
require("tweaks.productivity-limitations")
-- Technology tweaks
require("prototypes/1_technology")
-- mod tweaks
require("tweaks.aai.1_update")

if (settings.startup["sct-othermod-tweaks"].value) then
require("tweaks.angelsmods.1_update")
require("tweaks.bobsmods.1_update")
require("tweaks.omnimatter.1_update")
require("tweaks.pymods.1_update")
require("tweaks.xander.1_update")
end
