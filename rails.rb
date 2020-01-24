# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_world lang
    case lang
        when "es"
            "Hola Mundo"
        when "de"
            "Hallo Welt"
        when "ru"
            "Privetstvuyu, mir"
        when "ja"
            "Kon'nichiwa sekai"
        else
            "Hello World"
    end
end

puts hello_world "es"
puts hello_world "de"
puts hello_world "ru"
puts hello_world "ja"
puts hello_world "en"
    

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade grade
    case grade
        when 90..100
            "A"
        when 80..89
            "B"
        when 70..79
            "C"
        when 60..69
            "D"
        else
            "F"
    end
end
puts assign_grade 96
puts assign_grade 87
puts assign_grade 75

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer num, word
    case
        when num <= 0
            “No #{word}s”
        when num != 1
            “#{num} #{word}s”
        else
           “#{num} #{word}”
    end
end
puts pluralizer 4,“duck”
puts pluralizer 2,“cat”
puts pluralizer (-1),“turtle”


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

 def pluralizer noun, count
     if count ==1 then return "1#{noun}"
     else
         return"#{count} ${noun}s"
     end
     
puts pluralizer "rabbit", 25
puts pluralizer "llama", 5
puts pluralizer "dog", 3