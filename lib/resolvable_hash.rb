
require "resolvable_hash/version"

class ResolvableHash < Hash
  def resolve(v, max = 5)
    current = v 

    max.times do # limit lookups
      lookup = self[current]

      return current unless lookup

      current = lookup
    end 

    current
  end 

  def resolve_all(max = 5)
    res = {}

    each do |key, value|
      res[key] = resolve(value)
    end 

    res 
  end 
end

