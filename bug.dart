```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle the error appropriately
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception properly, log it or show a user-friendly message
    print('Error: $e');
    // This is where the problem might be.  The exception is caught,
    // but isn't re-thrown or handled properly to prevent the application from crashing
    // or displaying an unexpected state
  }
}
```