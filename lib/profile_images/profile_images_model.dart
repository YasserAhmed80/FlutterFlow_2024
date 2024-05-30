import '/components/upload_photo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_images_widget.dart' show ProfileImagesWidget;
import 'package:flutter/material.dart';

class ProfileImagesModel extends FlutterFlowModel<ProfileImagesWidget> {
  ///  Local state fields for this page.

  List<String> imageList = [];
  void addToImageList(String item) => imageList.add(item);
  void removeFromImageList(String item) => imageList.remove(item);
  void removeAtIndexFromImageList(int index) => imageList.removeAt(index);
  void insertAtIndexInImageList(int index, String item) =>
      imageList.insert(index, item);
  void updateImageListAtIndex(int index, Function(String) updateFn) =>
      imageList[index] = updateFn(imageList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for upload_photo component.
  late UploadPhotoModel uploadPhotoModel;

  @override
  void initState(BuildContext context) {
    uploadPhotoModel = createModel(context, () => UploadPhotoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    uploadPhotoModel.dispose();
  }
}
