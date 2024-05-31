import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'upload_photo_model.dart';
export 'upload_photo_model.dart';

class UploadPhotoWidget extends StatefulWidget {
  const UploadPhotoWidget({
    super.key,
    required this.storageFolder,
  });

  final String? storageFolder;

  @override
  State<UploadPhotoWidget> createState() => _UploadPhotoWidgetState();
}

class _UploadPhotoWidgetState extends State<UploadPhotoWidget> {
  late UploadPhotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadPhotoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.saveLoadImage = false;
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Container(
              width: double.infinity,
              height: 300.0,
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  if (_model.uplodedImage == null ||
                      (_model.uplodedImage?.bytes?.isEmpty ?? true))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                      child: Container(
                        width: double.infinity,
                        height: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            _model.url,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  if (_model.uplodedImage != null &&
                      (_model.uplodedImage?.bytes?.isNotEmpty ?? false))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                      child: Container(
                        width: double.infinity,
                        height: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                        child: AuthUserStreamWidget(
                          builder: (context) => ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.memory(
                              _model.uplodedImage?.bytes ??
                                  Uint8List.fromList([]),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            disabledColor:
                                FlutterFlowTheme.of(context).primaryText,
                            disabledIconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            icon: Icon(
                              Icons.save,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 30.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: (_model.saveLoadImage == false)
                                ? null
                                : () async {
                                    // save_cus_photo
                                    _model.photoName =
                                        await actions.saveImageToStorage1(
                                      _model.uplodedImage,
                                      widget.storageFolder!,
                                    );
                                    _model.saveLoadImage = false;
                                    setState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Data saved correctlly',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );

                                    setState(() {});
                                  },
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            disabledColor:
                                FlutterFlowTheme.of(context).primaryText,
                            disabledIconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            icon: Icon(
                              Icons.add,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 30.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: (_model.saveLoadImage == true)
                                ? null
                                : () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                          selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }

                                    _model.uplodedImage =
                                        _model.uploadedLocalFile;
                                    _model.saveLoadImage = true;
                                    setState(() {});
                                  },
                          ),
                        ),
                      ]
                          .divide(const SizedBox(width: 20.0))
                          .addToStart(const SizedBox(width: 0.0))
                          .addToEnd(const SizedBox(width: 0.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
