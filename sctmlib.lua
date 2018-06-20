-- sctm helper functions
if not sctm then sctm = {} end
-- uncomment this to enable debug output
-- sctm.enabledebug = true

function sctm.debug(logtext)
	if (sctm.enabledebug) then
		log("SCTD: " .. logtext)
	end
end

function sctm.log(logtext)
	log("SCT: " .. logtext)
end
