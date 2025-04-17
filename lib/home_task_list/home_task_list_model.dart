import '/backend/schema/structs/index.dart';
import '/components/bottom_navbar/bottom_navbar_widget.dart';
import '/components/side_navigation/side_navigation_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'home_task_list_widget.dart' show HomeTaskListWidget;
import 'package:flutter/material.dart';

class HomeTaskListModel extends FlutterFlowModel<HomeTaskListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideNavigation component.
  late SideNavigationModel sideNavigationModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TaskDataStruct>();
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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    paginatedDataTableController.dispose();
    bottomNavbarModel.dispose();
  }
}
