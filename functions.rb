
def fuel_required_for(mass)
  (mass / 3).round - 2
end

def recursiv_fuel_required_for(mass, accu = 0)
  return accu if mass <= 0
  fuel = fuel_required_for(mass)
  return accu if fuel <= 0
  recursiv_fuel_required_for(fuel, accu + fuel)
end
