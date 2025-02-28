import 'package:flutter/material.dart';
import 'package:trashee_dashboard/app.dart';
import 'package:url_strategy/url_strategy.dart';

// Entry point for flutter app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Remove # sign from url
  setPathUrlStrategy();
  // Main App Starts here...
  runApp(const App());
}
