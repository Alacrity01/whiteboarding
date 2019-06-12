# Editorial
# Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.

# Function Description

# Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

# timeConversion has the following parameter(s):

# s: a string representing time in  hour format
# Input Format
#                                                                                  0123456789
# A single string s containing a time in 12-hour clock format (i.e. hh:mm:ssAM  or hh:mm:ssPM ), where  and .

# Constraints

# All input times are valid
# Output Format

# Convert and print the given time in -hour format, where .

# Sample Input 0

# 07:05:45PM
# Sample Output 0

# 19:05:45

def time_conversion(s)
  # s example: "10:30PM"
  new_s = ""
  s_part = ""

  if s[8] == "P"
    if s[0..1] == "12"
      s_part = s[0..1]
    else
      s_part = (s[0..1].to_i + 12).to_s
    end
  else
    if s[0..1] == "12"
      s_part = "00"
    else
      s_part = s[0..1]
    end
  end
  p new_s += s_part + ":" + s[3..7]
end

#s = "10:30:30PM"
#time_conversion(s)


s = "11:59:59AM"
time_conversion(s)


s = "12:30:30AM"
time_conversion(s)

s = "11:59:59PM"
time_conversion(s)

s = "12:30:40PM"
time_conversion(s)
s = "12:59:59AM"
time_conversion(s)
