import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_settings_model.dart';
export 'app_settings_model.dart';

class AppSettingsWidget extends StatefulWidget {
  const AppSettingsWidget({super.key});

  @override
  State<AppSettingsWidget> createState() => _AppSettingsWidgetState();
}

class _AppSettingsWidgetState extends State<AppSettingsWidget> {
  late AppSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppSettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 25.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'ccjsplnh' /* تغير اعدادات التطبيق */,
          ),
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Open Sans',
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'piqh14g4' /* يمكن تغير الاعدادات العامة من ... */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: SwitchListTile.adaptive(
                  value: _model.switchListTileValue1 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue1 = newValue);
                    if (newValue) {
                      setAppLanguage(context, 'ar');
                    }
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'q39v6p9f' /* تغير اللغة */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          lineHeight: 2.0,
                        ),
                  ),
                  subtitle: Text(
                    FFLocalizations.of(context).getText(
                      'acitzf5a' /* تغير اللغة الي العربيه او الان... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF8B97A2),
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                ),
              ),
              SwitchListTile.adaptive(
                value: _model.switchListTileValue2 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchListTileValue2 = newValue);
                  if (newValue) {
                    setDarkModeSetting(context, ThemeMode.dark);
                  }
                },
                title: Text(
                  FFLocalizations.of(context).getText(
                    'rptgv03p' /* تغير الي الوضع الليلي */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                        lineHeight: 2.0,
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'ud04e54g' /* تغير اعدادات من الوضع ليلا او ... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: const Color(0xFF8B97A2),
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                activeColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).accent1,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.customNavbarModel,
                    updateCallback: () => setState(() {}),
                    child: const CustomNavbarWidget(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
