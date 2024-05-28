import '/flutter_flow/flutter_flow_util.dart';
import 'upload_photo_widget.dart' show UploadPhotoWidget;
import 'package:flutter/material.dart';

class UploadPhotoModel extends FlutterFlowModel<UploadPhotoWidget> {
  ///  Local state fields for this component.

  String url =
      'https://media.gettyimages.com/id/1331913108/photo/great-pyramids-and-the-camel-caravan-is-in-front-of-the-egyptian-pyramids-giza-egypt.jpg?s=612x612&w=gi&k=20&c=MT03Uje4GqcDEVL3KmgG52csw-knigvNcOMBV1UE8FM=';

  FFUploadedFile? binaryData;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
