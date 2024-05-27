import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/user_actions_main/user_actions_main_widget.dart';
import '/pages/profile_edit_main_item/profile_edit_main_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customer_new_model.dart';
export 'customer_new_model.dart';

class CustomerNewWidget extends StatefulWidget {
  const CustomerNewWidget({super.key});

  @override
  State<CustomerNewWidget> createState() => _CustomerNewWidgetState();
}

class _CustomerNewWidgetState extends State<CustomerNewWidget> {
  late CustomerNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerNewModel());

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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ],
          ),
          title: Text(
            valueOrDefault<String>(
              _model.nationalityCode?.toString(),
              '111',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Open Sans',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Stack(
                    alignment: const AlignmentDirectional(-0.0, 1.0),
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://www.travelandleisure.com/thmb/hm1djoflREA9IsW5rIGwrAGCxbQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-wild-dunes-BEACHWEDHOTEL1223-c4aed295aa9d413bbad9cc911e8c65d5.jpg',
                          width: double.infinity,
                          height: 330.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.9,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          wrapWithModel(
                            model: _model.userActionsMainModel1,
                            updateCallback: () => setState(() {}),
                            child: const UserActionsMainWidget(
                              icon: FaIcon(
                                FontAwesomeIcons.hamsa,
                              ),
                              text: 'Salam',
                              status: 0,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.userActionsMainModel2,
                            updateCallback: () => setState(() {}),
                            child: const UserActionsMainWidget(
                              icon: Icon(
                                Icons.star_border,
                              ),
                              text: 'Favorites',
                              status: 1,
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 2.0))
                            .around(const SizedBox(width: 2.0)),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.profileEditMainItemModel1,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 3,
                                itemType: 'country',
                                itemLable: 'الدولة',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.nationalityCode = actionReturn;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.profileEditMainItemModel2,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 45,
                                itemType: 'age',
                                itemLable: 'السن',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.age = actionReturn;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.profileEditMainItemModel3,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 90,
                                itemType: 'weight',
                                itemLable: 'الوزن',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.weight = actionReturn;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.profileEditMainItemModel4,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 190,
                                itemType: 'height',
                                itemLable: 'الطول',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.height = actionReturn;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.profileEditMainItemModel5,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 1,
                                itemType: 'religion',
                                itemLable: 'الديانة',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.religionCode = actionReturn;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.profileEditMainItemModel6,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 1,
                                itemType: 'marital_status',
                                itemLable: 'الحاله',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.maritalCode = actionReturn;
                                  });
                                },
                              ),
                            ),
                            wrapWithModel(
                              model: _model.profileEditMainItemModel7,
                              updateCallback: () => setState(() {}),
                              child: ProfileEditMainItemWidget(
                                itemCode: 1,
                                itemType: 'readiness\n',
                                itemLable: 'الاستعداد للزواج',
                                actionCallBack: (actionReturn) async {
                                  setState(() {
                                    _model.readinessCode = actionReturn;
                                  });
                                },
                              ),
                            ),
                          ]
                              .divide(const SizedBox(height: 10.0))
                              .addToStart(const SizedBox(height: 5.0))
                              .addToEnd(const SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
