
// Homework: Advanced Dart - 7
// State: A simulated weather forecast.
// Event: Create an async function that await's a Future returning the weather ("Sunny").
// Execution: Call the async function and print the weather.

Future<String> fetchWeather() {
  return Future.delayed(Duration(seconds: 1), () => 'Sunny');
}

Future<void> runWeatherExample() async {
  print('Fetching weather...');
  String weather = await fetchWeather();
  print('The weather forecast is: $weather');
}
