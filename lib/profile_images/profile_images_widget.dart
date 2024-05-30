import '/backend/backend.dart';
import '/components/show_photo_from_d_b_widget.dart';
import '/components/upload_photo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_images_model.dart';
export 'profile_images_model.dart';

class ProfileImagesWidget extends StatefulWidget {
  const ProfileImagesWidget({super.key});

  @override
  State<ProfileImagesWidget> createState() => _ProfileImagesWidgetState();
}

class _ProfileImagesWidgetState extends State<ProfileImagesWidget> {
  late ProfileImagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileImagesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: false,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.uploadPhotoModel,
                updateCallback: () => setState(() {}),
                child: const UploadPhotoWidget(),
              ),
              Expanded(
                child: StreamBuilder<List<CusPhotosRecord>>(
                  stream: queryCusPhotosRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<CusPhotosRecord> listViewCusPhotosRecordList =
                        snapshot.data!;
                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewCusPhotosRecordList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 6.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewCusPhotosRecord =
                            listViewCusPhotosRecordList[listViewIndex];
                        return Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF522A2A),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: ShowPhotoFromDBWidget(
                              key: Key(
                                  'Keyzrr_${listViewIndex}_of_${listViewCusPhotosRecordList.length}'),
                              image: listViewCusPhotosRecord.img,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
