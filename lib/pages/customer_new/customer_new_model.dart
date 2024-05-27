import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/user_actions_main/user_actions_main_widget.dart';
import '/pages/profile_edit_main_item/profile_edit_main_item_widget.dart';
import 'customer_new_widget.dart' show CustomerNewWidget;
import 'package:flutter/material.dart';

class CustomerNewModel extends FlutterFlowModel<CustomerNewWidget> {
  ///  Local state fields for this page.

  int? nationalityCode;

  int? age;

  int? weight;

  int? height;

  int? religionCode;

  int? maritalCode;

  int? readinessCode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for user_actions_main component.
  late UserActionsMainModel userActionsMainModel1;
  // Model for user_actions_main component.
  late UserActionsMainModel userActionsMainModel2;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel1;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel2;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel3;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel4;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel5;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel6;
  // Model for profile_edit_main_item component.
  late ProfileEditMainItemModel profileEditMainItemModel7;

  @override
  void initState(BuildContext context) {
    userActionsMainModel1 = createModel(context, () => UserActionsMainModel());
    userActionsMainModel2 = createModel(context, () => UserActionsMainModel());
    profileEditMainItemModel1 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel2 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel3 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel4 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel5 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel6 =
        createModel(context, () => ProfileEditMainItemModel());
    profileEditMainItemModel7 =
        createModel(context, () => ProfileEditMainItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userActionsMainModel1.dispose();
    userActionsMainModel2.dispose();
    profileEditMainItemModel1.dispose();
    profileEditMainItemModel2.dispose();
    profileEditMainItemModel3.dispose();
    profileEditMainItemModel4.dispose();
    profileEditMainItemModel5.dispose();
    profileEditMainItemModel6.dispose();
    profileEditMainItemModel7.dispose();
  }
}
