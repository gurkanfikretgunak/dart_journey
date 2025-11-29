
# Homework: Dart Basics

Here are some exercises to practice the basic concepts of Dart. Each problem is designed to make you think about the state, events (logic), and execution of a program.

## Variables and Data Types

1.  **State:** A person's name, age, and favorite color.
    **Event:** Store this information in variables.
    **Execution:** Print a sentence introducing the person, like "My name is [Name], I am [Age] years old, and my favorite color is [Color]."

2.  **State:** The prices of three different items.
    **Event:** Calculate the total price.
    **Execution:** Print the total price.

3.  **State:** A boolean variable `isRaining`.
    **Event:** Check if it's raining.
    **Execution:** Print "Bring an umbrella" if it's raining, and "Enjoy the weather" otherwise.

4.  **State:** A list of your favorite movies.
    **Event:** Add a new movie to the list.
    **Execution:** Print the updated list of movies.

5.  **State:** A map of countries and their capitals.
    **Event:** Look up the capital of a specific country.
    **Execution:** Print the capital of that country.

## Operators

6.  **State:** Two numbers.
    **Event:** Perform addition, subtraction, multiplication, and division.
    **Execution:** Print the results of each operation.

7.  **State:** Your current age and the legal voting age.
    **Event:** Compare your age to the voting age.
    **Execution:** Print whether you are old enough to vote.

8.  **State:** A number.
    **Event:** Check if the number is even or odd.
    **Execution:** Print whether the number is even or odd.

9.  **State:** The temperature outside.
    **Event:** Check if the temperature is below freezing (0 degrees Celsius).
    **Execution:** Print "It's freezing!" if it is.

10. **State:** Two strings.
    **Event:** Concatenate the two strings.
    **Execution:** Print the resulting string.

## Control Flow

11. **State:** A student's score.
    **Event:** Determine the student's grade (A, B, C, D, F).
    **Execution:** Print the student's grade.

12. **State:** A list of numbers.
    **Event:** Loop through the list and print each number.
    **Execution:** Display each number on a new line.

13. **State:** A countdown timer starting from 10.
    **Event:** Decrement the timer until it reaches 0.
    **Execution:** Print each number in the countdown, and then "Blast off!".

14. **State:** A list of names.
    **Event:** Find a specific name in the list.
    **Execution:** Print "[Name] is in the list" if found, and "[Name] is not in the list" otherwise.

15. **State:** A number.
    **Event:** Check if the number is positive, negative, or zero.
    **Execution:** Print the result.

## Functions

16. **State:** A person's first and last name.
    **Event:** Create a function that takes the first and last name and returns the full name.
    **Execution:** Print the full name.

17. **State:** The radius of a circle.
    **Event:** Create a function to calculate the area of the circle.
    **Execution:** Print the area of the circle.

18. **State:** A list of numbers.
    **Event:** Create a function to find the largest number in the list.
    **Execution:** Print the largest number.

19. **State:** A string.
    **Event:** Create a function to check if the string is a palindrome.
    **Execution:** Print whether the string is a palindrome.

20. **State:** A temperature in Celsius.
    **Event:** Create a function to convert Celsius to Fahrenheit.
    **Execution:** Print the temperature in Fahrenheit.

21. **State:** A list of strings.
    **Event:** Create a function that returns a new list with all strings in uppercase.
    **Execution:** Print the new list.

22. **State:** A number.
    **Event:** Create a function to calculate the factorial of a number.
    **Execution:** Print the factorial.

23. **State:** A list of integers.
    **Event:** Create a function that returns the sum of all even numbers in the list.
    **Execution:** Print the sum.

24. **State:** A sentence (as a string).
    **Event:** Create a function to count the number of words in the sentence.
    **Execution:** Print the word count.

25. **State:** A year.
    **Event:** Create a function to check if the year is a leap year.
    **Execution:** Print whether the year is a leap year.

26. **State:** A list of mixed data types (e.g., integers, strings).
    **Event:** Create a function to filter out all items that are not integers.
    **Execution:** Print the list containing only integers.

27. **State:** A string that may have leading/trailing whitespace.
    **Event:** Create a function to trim the whitespace from the string.
    **Execution:** Print the trimmed string.

28. **State:** Two lists of numbers.
    **Event:** Create a function to return a new list containing elements that are in both lists (intersection).
    **Execution:** Print the new list.

29. **State:** A sentence.
    **Event:** Create a function to reverse the order of words in the sentence.
    **Execution:** Print the reversed sentence.

30. **State:** A list of numbers and a number `n`.
    **Event:** Create a function to find all numbers in the list greater than `n`.
    **Execution:** Print a new list with the filtered numbers.

## Introduction to Classes and Objects

31. **State:** A `Car` with properties like `make`, `model`, and `year`.
    **Event:** Create a `Car` class and an instance of it.
    **Execution:** Print the car's details.

32. **State:** A `Person` object with a `name` and `age`.
    **Event:** Create a method in the `Person` class to introduce themselves.
    **Execution:** Call the method to print the introduction.

33. **State:** A `Rectangle` class with `width` and `height`.
    **Event:** Create a method to calculate the area of the rectangle.
    **Execution:** Create a rectangle object and print its area.

34. **State:** A `BankAccount` class with a `balance`.
    **Event:** Create methods to `deposit` and `withdraw` money.
    **Execution:** Create an account, deposit some money, withdraw some, and print the final balance.

35. **State:** A `Book` class with `title`, `author`, and `pages`.
    **Event:** Create a list of `Book` objects.
    **Execution:** Print the title and author of each book in the list.

## Error Handling

36. **State:** A function that might throw an error (e.g., dividing by zero).
    **Event:** Use a `try-catch` block to handle the error.
    **Execution:** Print a custom error message if an error occurs.

37. **State:** A string that you want to convert to a number.
    **Event:** Handle the case where the string is not a valid number.
    **Execution:** Print the number if conversion is successful, or an error message otherwise.

38. **State:** A list of items.
    **Event:** Try to access an index that is out of bounds.
    **Execution:** Use `try-catch` to gracefully handle the `RangeError`.

39. **State:** A map of user data.
    **Event:** Try to access a key that doesn't exist.
    **Execution:** Provide a default value or a message if the key is not found.

40. **State:** A custom exception class `InvalidEmailException`.
    **Event:** Create a function that validates an email and throws this exception if it's invalid.
    **Execution:** Call the function and catch the custom exception.

## Asynchronous Programming Basics

41. **State:** A task that takes time to complete (e.g., fetching data from a fake API).
    **Event:** Use a `Future` to represent the asynchronous operation.
    **Execution:** Print a "Loading..." message, then print the data when it arrives.

42. **State:** A function that returns a `Future<String>`.
    **Event:** Use `async` and `await` to wait for the future to complete.
    **Execution:** Print the string value from the future.

43. **State:** A sequence of asynchronous operations (e.g., fetch user ID, then fetch user profile).
    **Event:** Chain `Future`s together.
    **Execution:** Execute the steps in order and print the final result.

44. **State:** A stream of numbers (e.g., 1, 2, 3, 4, 5).
    **Event:** Listen to the stream and process each number.
    **Execution:** Print each number as it is emitted from the stream.

45. **State:** A `Future` that might complete with an error.
    **Event:** Use `.catchError()` on the `Future`.
    **Execution:** Handle the error from the asynchronous operation.

## General Practice

46. **State:** A list of employee salaries.
    **Event:** Calculate the average salary.
    **Execution:** Print the average salary.

47. **State:** A string containing a mix of uppercase and lowercase letters.
    **Event:** Create a function to count the number of vowels in the string.
    **Execution:** Print the vowel count.

48. **State:** A map representing a shopping cart with items and quantities.
    **Event:** Calculate the total cost, given a map of item prices.
    **Execution:** Print the total cost of the shopping cart.

49. **State:** A list of numbers.
    **Event:** Create a function to remove all duplicate numbers from the list.
    **Execution:** Print the list with unique numbers.

50. **State:** A `Playlist` class for a music app, containing a list of `Song` objects.
    **Event:** Create methods to add a song, remove a song, and shuffle the playlist.
    **Execution:** Create a playlist, add songs, shuffle it, and print the song titles in their new order.
