import 'package:flutter/material.dart';
import 'package:fruit_dashboard/core/helper_functions/ongenerate_route.dart';
import 'package:fruit_dashboard/feature/dashboard/presentation/views/dashboard_views.dart';

void main() {
  runApp(const FruitDashBoard());
}

class FruitDashBoard extends StatelessWidget {
  const FruitDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashboardViews.routeName,
      title: 'Fruits Dashboard',
      theme: ThemeData(
      ),
    );
  }
}

