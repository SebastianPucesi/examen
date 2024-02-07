import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/routes/app_routes.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Comment 1: Navegación a la página CalendarPage
                ref.read(navigationProvider).pushNamed = '/calendar';
                Navigator.pushNamed(context, '/calendar');
              },
              child: Text('Go to Calendar Page'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Comment 2: Navegación a la página DriversPage
                ref.read(navigationProvider).pushNamed = '/drivers';
                Navigator.pushNamed(context, '/drivers');
              },
              child: Text('Go to Drivers Page'),
            ),
          ],
        ),
      ),
    );
  }
}
