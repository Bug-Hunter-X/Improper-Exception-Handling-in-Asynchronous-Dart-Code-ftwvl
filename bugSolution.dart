```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Error: API request failed with status code ${response.statusCode}');
      //Optionally:  Return a default value to prevent application crashes
      return null; //or return a default map
    }
  } catch (e) {
    print('Error: $e');
    //Optionally:  Retry the request
    //await Future.delayed(Duration(seconds: 2));
    //return fetchData();
    //Optionally:  Show a user-friendly message to the user (requires a UI framework)
    //showDialog(context: context, builder: (context) => AlertDialog(..));
    return null; // Return null to indicate failure
  }
}
```