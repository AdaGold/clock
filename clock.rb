# clock.rb

def clock(hours, minutes, seconds)
# if hours < 10
#   hours = "0#{hours}"
if hours > 23 || hours < 0
  raise ArgumentError, 'Hours must be between 0-23'
end
if minutes < 10
  minutes = "0#{minutes}"
end
if seconds < 10
  seconds = "0#{seconds}"
end
  return "#{hours}:#{minutes}:#{seconds}"
end
 # What edge case does this cover?
