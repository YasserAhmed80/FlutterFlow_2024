import '/flutter_flow/flutter_flow_util.dart';
import 'customer_new_widget.dart' show CustomerNewWidget;
import 'package:flutter/material.dart';

class CustomerNewModel extends FlutterFlowModel<CustomerNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
