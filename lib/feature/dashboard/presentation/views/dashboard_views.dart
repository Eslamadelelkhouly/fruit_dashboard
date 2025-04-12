import 'package:flutter/material.dart';
import 'package:fruit_dashboard/feature/dashboard/presentation/views/widgets/dashboard_view_body.dart';

class DashboardViews extends StatelessWidget {
  const DashboardViews({super.key});
  static const String routeName = 'dashboard';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardViewBody(),
    );
  }
}
