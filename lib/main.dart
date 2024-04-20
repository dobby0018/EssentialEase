import 'package:flutter/material.dart';
import 'views/auth/login_page.dart'; // Import the login page
import 'views/auth/register_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Set the initial route to the login page
      routes: {
        '/login': (context) => LoginPage(), // Define the login page route
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => LoginPage(), // Default route to login page
        );
      },
    );
  }
}
