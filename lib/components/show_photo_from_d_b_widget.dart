import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'show_photo_from_d_b_model.dart';
export 'show_photo_from_d_b_model.dart';

class ShowPhotoFromDBWidget extends StatefulWidget {
  const ShowPhotoFromDBWidget({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  State<ShowPhotoFromDBWidget> createState() => _ShowPhotoFromDBWidgetState();
}

class _ShowPhotoFromDBWidgetState extends State<ShowPhotoFromDBWidget> {
  late ShowPhotoFromDBModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowPhotoFromDBModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.imageURL = await actions.getImageURL(
        'cus_photos',
        widget.image!,
      );
      _model.imgURL = functions.stringToImagePath(_model.imageURL);
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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  _model.imgURL!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
