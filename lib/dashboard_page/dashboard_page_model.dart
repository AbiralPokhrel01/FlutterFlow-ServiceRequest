import '/components/bottom_navbar/bottom_navbar_widget.dart';
import '/components/side_navigation/side_navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_page_widget.dart' show DashboardPageWidget;
import 'package:flutter/material.dart';

class DashboardPageModel extends FlutterFlowModel<DashboardPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideNavigation component.
  late SideNavigationModel sideNavigationModel;
  // Model for BottomNavbar component.
  late BottomNavbarModel bottomNavbarModel;

  @override
  void initState(BuildContext context) {
    sideNavigationModel = createModel(context, () => SideNavigationModel());
    bottomNavbarModel = createModel(context, () => BottomNavbarModel());
  }

  @override
  void dispose() {
    sideNavigationModel.dispose();
    bottomNavbarModel.dispose();
  }
}
