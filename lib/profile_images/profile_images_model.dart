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
  late UploadPhotoModel uploadPhotoModel1;
  // Model for upload_photo component.
  late UploadPhotoModel uploadPhotoModel2;

  @override
  void initState(BuildContext context) {
    uploadPhotoModel1 = createModel(context, () => UploadPhotoModel());
    uploadPhotoModel2 = createModel(context, () => UploadPhotoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    uploadPhotoModel1.dispose();
    uploadPhotoModel2.dispose();
  }
}
