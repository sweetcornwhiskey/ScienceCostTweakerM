for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.recipes["lab"].enabled = true
  force.recipes["sct-lab-1"].enabled = false
end
