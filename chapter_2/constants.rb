=begin
Named using all uppercase letters
=end

# constant
MAX_SCORE = 100

# variable
max_score = 50

puts MAX_SCORE.class
puts MAX_SCORE == max_score

# Ruby lets you to change the value of a constant. But gives you a warning
MAX_SCORE = 50
puts MAX_SCORE == max_score

# If the first letter is capital, then Ruby consider this as a constant
Max_score = 50
Max_score = 150 #warning !!!