# clock.rb

def clock(hours, minutes, seconds)
  inputs = [hours, min, sec]
  max_inputs = [ 23, 59, 59]
  3.times do |index|
  if inputs[index] > max_inputs[index]
    raise ArgumentError, "#{inputs[index]} is too large"
  elsif inputs[index] < 0
    raise ArgumentError, "#{inputs[index]} is too small"
  elsif inputs[index] < 10
    inputs[index] = "0#{inputs[index]}"
  end

end

return "#{inputs[0]}:#{inputs[1]}:#{inputs[2]}"

end

# if hours < 10
#   hours = "0#{hours}"
# if hours > 23 || hours < 0
#   raise ArgumentError, 'Hours must be between 0-23'
# end
# # if minutes < 10
# #   minutes = "0#{minutes}"
#   if minutes > 59 || minutes < 0
#     raise ArgumentError, 'Minutes must be between 0-59'
# end
# if seconds < 10
#   seconds = "0#{seconds}"
# end
#   return "#{hours}:#{minutes}:#{seconds}"
# end
#  # What edge case does this cover?
