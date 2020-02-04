for _, force in pairs(game.forces) do
  if force.recipes['sct-t3-flash-fuel'].enabled then
    force.recipes['sct-t3-flash-fuel2'].enabled = true
  end
end

