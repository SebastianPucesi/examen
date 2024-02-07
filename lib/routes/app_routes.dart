import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/pages/home_page.dart';
import 'package:movil_wrc_app/pages/dashboard_page.dart';
import 'package:movil_wrc_app/pages/calendar_page.dart';
import 'package:movil_wrc_app/pages/drivers_page.dart';

final navigationProvider = StateProvider<String>((ref) => '/');

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case '/calendar':
        return MaterialPageRoute(builder: (_) => CalendarPage());
      case '/drivers':
        return MaterialPageRoute(builder: (_) => DriversPage());
      default:
        return null;
    }
  }

  
}
