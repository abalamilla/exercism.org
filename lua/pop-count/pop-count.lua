local PopCount = {}

function get_count(number)
  local str = tostring(number)
  local count = 0

  for n in str:gmatch(".") do
    if n == "1" then
      count = count + 1
    end
  end
  
  return count
end

function convert_to_binary(number)
  local function helper(number, acc)
    if number == 0 then
      return acc
    else
      local remainder = number % 2
      local quotient = number // 2

      return helper(quotient, remainder .. acc)
    end
  end

  return helper(number, 0)
end

function PopCount.egg_count(number)
  local binary = convert_to_binary(number)
  local pop_count = get_count(binary)

  return pop_count
end

return PopCount
