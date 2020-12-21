for _, force in pairs(game.forces) do
  if force.recipes['sct-t3-flash-fuel'] and force.recipes['sct-t3-flash-fuel'].enabled and force.recipes['sct-t3-sulfur-lightsource'] then
    force.recipes['sct-t3-sulfur-lightsource'].enabled = true
  end
end

