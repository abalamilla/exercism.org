local all_your_base = {}

local function convert(digits, base)
  local function convert(base, length, accum, digit, ...)
    if not digit then return accum end
    local n = accum + digit * base ^ (length - 1)
    return convert(base, length - 1, math.floor(n), ...)
  end

  return convert(base, #digits, 0, table.unpack(digits))
end

all_your_base.convert = function(from_digits, from_base)

  local converted = convert(from_digits, from_base)
  print("converted: " .. converted)
  print(string.split)
  local unpacked = unpack(tostring(converted):split(""))
  print(unpacked)
  return { unpacked }
end

return all_your_base
