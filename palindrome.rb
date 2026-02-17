#palindrome.rb
#Write a function that:
#Takes a string as input.
#Considers only alphanumeric characters and ignores case sensitivity.
#Checks if the given string is a palindrome (reads the same backward as forward).
#Returns true if the string is a palindrome and false otherwise.
#Does not use the String#reverse method 😅.



def palindrome?(str)
  # Remove non-alphanumeric characters and convert to lowercase
  cleaned_str = str.gsub(/[^0-9a-z]/i, '').downcase
  
  # Initialize pointers
  left = 0
  right = cleaned_str.length - 1
  
  # Check characters from both ends towards the center
  while left < right
    if cleaned_str[left] != cleaned_str[right]
      return false
    end
    left += 1
    right -= 1
  end
  
  return true
end
