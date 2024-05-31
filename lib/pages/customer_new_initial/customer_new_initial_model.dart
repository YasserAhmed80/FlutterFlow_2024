import '/flutter_flow/flutter_flow_util.dart';
import '/pages/customers/components/profile_edit_main_item/profile_edit_main_item_widget.dart';
import 'customer_new_initial_widget.dart' show CustomerNewInitialWidget;
import 'package:flutter/material.dart';

class CustomerNewInitialModel
    extends FlutterFlowModel<CustomerNewInitialWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel1;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel2;

  @override
  void initState(BuildContext context) {
    profileEditMainItemModel1 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel2 =
        createModel(context, () => ProfileEditMainItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    profileEditMainItemModel1.dispose();
    profileEditMainItemModel2.dispose();
  }
}
