for _, force in pairs(game.forces) do
  if force.technologies['advanced-material-processing-2'].researched then
	if force.recipes['sct-prod-biosilicate'] then	
	    force.recipes['sct-prod-biosilicate'].enabled = true
	end
	if force.recipes['sct-prod-baked-biopaste'] then	
	    force.recipes['sct-prod-baked-biopaste'].enabled = true
	end
  end
end

