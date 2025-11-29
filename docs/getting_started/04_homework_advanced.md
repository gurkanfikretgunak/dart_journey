
# Homework: Advanced Dart

These exercises will challenge you to use more advanced Dart concepts. Focus on how state is managed, how events trigger changes, and what the final execution looks like.

## Classes and Objects

1.  **State:** A `Car` class with properties for `make`, `model`, and `year`.
    **Event:** Create a method that prints the car's details.
    **Execution:** Instantiate a `Car` object and call the method to print its details.

2.  **State:** A `BankAccount` class with a `balance`.
    **Event:** Create methods to `deposit` and `withdraw` money. Prevent withdrawal if funds are insufficient.
    **Execution:** Create an account, deposit some money, try to withdraw more than the balance, and then withdraw a valid amount. Print the balance after each operation.

3.  **State:** An `Animal` class with a `makeSound()` method. Create `Dog` and `Cat` classes that inherit from `Animal`.
    **Event:** Override the `makeSound()` method in the `Dog` and `Cat` classes to print "Woof" and "Meow" respectively.
    **Execution:** Create instances of `Dog` and `Cat` and call their `makeSound()` methods.

4.  **State:** A `Rectangle` class with `width` and `height`.
    **Event:** Create a getter for the `area` of the rectangle.
    **Execution:** Create a `Rectangle` object and print its area.

5.  **State:** A `Book` class with `title`, `author`, and `isAvailable`.
    **Event:** Create a `checkOut()` method that changes `isAvailable` to `false` and a `checkIn()` method that changes it to `true`.
    **Execution:** Create a `Book`, check it out, and then check it back in, printing its availability status each time.

## Asynchronous Programming

6.  **State:** A simulated user profile being fetched from a server.
    **Event:** Create a `Future` that returns a user's name after a 2-second delay.
    **Execution:** Use `.then()` to print the user's name when the `Future` completes.

7.  **State:** A simulated weather forecast.
    **Event:** Create an `async` function that `await`s a `Future` returning the weather ("Sunny").
    **Execution:** Call the `async` function and print the weather.

8.  **State:** A `Future` that might fail.
    **Event:** Create a `Future` that throws an exception after a delay.
    **Execution:** Use `try-catch` with `async-await` to handle the error and print an error message.

9.  **State:** A sequence of asynchronous operations.
    **Event:** Create two `Future`s. The second one should only start after the first one completes.
    **Execution:** Chain the `Future`s together and print the result of each step.

10. **State:** A stream of numbers.
    **Event:** Create a stream that emits a number every second for 5 seconds.
    **Execution:** Listen to the stream and print each number as it arrives.

## Null Safety

11. **State:** A nullable `String` that might be `null`.
    **Event:** Use the null-aware operator `??` to provide a default value.
    **Execution:** Print the value of the string, or the default value if it's `null`.

12. **State:** A nullable object with a property.
    **Event:** Use the null-aware access operator `?.` to access a property of the object only if it's not `null`.
    **Execution:** Print the property's value or `null`.

13. **State:** A variable that should never be `null`.
    **Event:** Declare a non-nullable variable and try to assign `null` to it.
    **Execution:** Observe the compile-time error. Then, initialize it with a valid value and print it.

14. **State:** A list of nullable integers.
    **Event:** Create a list that can contain both integers and `null` values.
    **Execution:** Iterate through the list and print each value.

15. **State:** A function that can return a `String` or `null`.
    **Event:** Write a function that finds a user by ID and returns their name, or `null` if not found.
    **Execution:** Call the function with an ID that exists and one that doesn't, and print the results.

## Mixins and Extensions

16. **State:** A `Bird` class and a `Plane` class.
    **Event:** Create a `Flyer` mixin with a `fly()` method. Apply the mixin to both classes.
    **Execution:** Create instances of `Bird` and `Plane` and call their `fly()` methods.

17. **State:** A `String`.
    **Event:** Create an extension method on `String` called `capitalize()` that returns the string with the first letter capitalized.
    **Execution:** Use the new method on a string and print the result.

18. **State:** A list of numbers.
    **Event:** Create an extension method on `List<int>` called `sum()` that returns the sum of all elements.
    **Execution:** Use the new method on a list of numbers and print the result.

## Advanced Topics

19. **State:** A generic `Box` class that can hold any type of item.
    **Event:** Create a `Box` for a `String` and a `Box` for an `int`.
    **Execution:** Put items in the boxes and then get them out to print them.

20. **State:** A class that you want to be able to call like a function.
    **Event:** Implement the `call()` method in a class.
    **Execution:** Create an instance of the class and call it like a function.

21. **State:** A simple JSON map.
    **Event:** Create a `User` class with a `fromJson()` factory constructor.
    **Execution:** Create a `User` object from a JSON map.

22. **State:** A list of numbers.
    **Event:** Use the `where()` higher-order function to filter for even numbers.
    **Execution:** Print the list of even numbers.

23. **State:** A list of strings.
    **Event:** Use the `map()` higher-order function to create a new list with the lengths of the strings.
    **Execution:** Print the new list of lengths.

24. **State:** A potentially failing operation.
    **Event:** Write a function that throws a custom exception.
    **Execution:** Use a `try-catch` block to catch the custom exception and print a message.

25. **State:** A heavy computation that could block the main thread.
    **Event:** (Conceptual) Describe how you would use an `Isolate` to perform this computation without freezing the UI.
    **Execution:** Write a short explanation of the state (the data for the computation), the event (starting the isolate), and the execution (getting the result back).
