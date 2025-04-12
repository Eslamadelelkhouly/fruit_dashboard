
import 'package:flutter/material.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/add_product_view.dart';
import 'package:fruit_dashboard/feature/dashboard/presentation/views/dashboard_views.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardViews.routeName:
      return MaterialPageRoute(builder: (_) => const DashboardViews());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (_) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
