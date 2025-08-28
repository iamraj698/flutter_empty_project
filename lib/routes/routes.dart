import 'package:empty_project/routes/routeNames.dart';
import 'package:empty_project/views/login.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.login:
        return MaterialPageRoute(
          builder: (context) => Login(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("There are no such routes"),
              ),
            );
          },
        );
    }
  }

  static Route<dynamic> noArgsRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text("Null or invalid arguments"),
          ),
        );
      },
    );
  }
}
