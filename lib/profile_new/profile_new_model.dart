import '/flutter_flow/flutter_flow_util.dart';
import 'profile_new_widget.dart' show ProfileNewWidget;
import 'package:flutter/material.dart';

class ProfileNewModel extends FlutterFlowModel<ProfileNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
