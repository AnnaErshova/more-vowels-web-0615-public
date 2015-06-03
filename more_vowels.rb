# write 7 methods

# we will use these arrays (at least the vowels one) for many of these methods
vowels = ["a","e","i","o","u"]
consonants = ["b","c","d","f","g","h","j","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]

#--------------------------
# method 1
# write a method that returns whether a given letter is a vowel, using `if` and `elsif`.
# assumes program asks user to input one letter
# this could be done as an array or just by entering vowels as a strong
# alternative: 
  # def vowels_with_if_elsif(letter)
    # if letter = "a"
      # return true
    # elsif letter = "e"
      # return true
    # elsif letter = "i"
      # return true
    # elsif letter = "o"
     # return true
    # elsif letter = "u"
     # return true
    # else
     # return false
    # end
  # end
# this task makes no sense because the prompt suggests there are two viable distinct alternatives (if and elsif) and a 3rd one, a more generic one (else); but our situation is binomial in nature, a letter is really a consonant or a vowel


def vowels_with_if_elsif(letter)
  if vowels.include? letter
    return true
  elsif consonants.include? letter  
    # one way to list consonants otherwise would be to take the alphabet (create that array first) and remove the contents of the vowels array
    return false
  else
    return false
  end
end

#--------------------------
# method 2
# write a method that returns whether a given letter is a vowel, using a case statement.
#   should return true for vowels
#   should return false for consonants

def vowels_with_case(letter)
  case letter
  when "a","e","i","o","u"
    return true
  else
    return false
  end
end

#--------------------------
# method 3
# Write a method that returns whether a given letter is a vowel without using `if` or `case` while all on a single line.
#   should return true for vowels
#   should return false for consonants

def vowels_with_no_if_or_case(letter)
  while vowels.include? letter 
    # alternatively, use a text string of potential vowel options
    return true
  end
  return false
end

#--------------------------
# method 4
# Write a method that returns whether a given letter is a vowel without checking equality, or the use of `if`. Hint: use an array of vowels.
#   should return true for vowels
#   should return false for consonants


def vowels_with_array_no_equality_or_if(letter)
  if vowels.include? letter 
    return true
  else 
    return false
  end
end

#--------------------------
# method 5
# Write a method that returns whether a given letter is a vowel using the ternary operator.
#   should return true for vowels
#   should return false for consonants
# general format: conditional? true : false
# this does seem to be a lot easier than method 4 since this is such a binary situation

def vowels_with_ternary_operator(letter)
  (vowels.include? letter) ? true : false # this only seems to work when I put the conditional in parenthesis
end

#--------------------------
# method 6
# Write a method that will evaluate a string and return the first vowel found in the string, if any.
#   should return the first vowel in a string that contains one
#   should return nil if no vowel exists

# I think the below should work, need to debug later...
    # def first_vowel(string)
    #  if ("aeiou").include? string.split('').first
    #    return string.split('').first
    #  else 
    #    return nil
    #  end
    # end

def first_vowel(string)
  string.split(//).each do |l|
    # alternative syntax for the above is string.split('')
    if vowels.include? l
      # or could put the statement above in parenthesis; what's weird is that parenthesis are optional there unlike method 5
      return l
    end
  end
  return nil
end

#--------------------------
# method 7
# Write a method that will evaluate a string and return the ordinal position (index) of the string where the first vowel is found, if any.
# because method 7 follows method 6 and ruby evaluates methods in order, we call upon method 6 in this

def first_vowel_index(string)
  letter = first_vowel(string)
  if letter == nil
    return nil
  end
  string.index letter
end

