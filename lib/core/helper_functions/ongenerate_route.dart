
import 'package:flutter/material.dart';
import 'package:fruit_dashboard/feature/dashboard/presentation/views/dashboard_views.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardViews.routeName:
      return MaterialPageRoute(builder: (_) => const DashboardViews());
    default:
      return MaterialPageRoute(builder: (_) => const DashboardViews());
  }
}
