import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../onboarding_screen/onboarding_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSelectWidget extends StatefulWidget {
  const LanguageSelectWidget({Key key}) : super(key: key);

  @override
  _LanguageSelectWidgetState createState() => _LanguageSelectWidgetState();
}

class _LanguageSelectWidgetState extends State<LanguageSelectWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '45ni5zh5' /* Please choose your  */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w300,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'w8chyunq' /* Prefered Language */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).title2,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        setAppLanguage(context, 'en');
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: OnboardingScreenWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 32,
                              color: Color(0x02020F14),
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: AlignmentDirectional(0, -0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'shxp44ga' /* AB ab */,
                                ),
                                style: TextStyle(
                                  fontFamily: 'Noto Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 5),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'gjslvgzl' /* English */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Noto Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          setAppLanguage(context, 'hi');
                          await Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: OnboardingScreenWidget(),
                            ),
                            (r) => false,
                          );
                        },
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 32,
                                color: Color(0x02020F14),
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          alignment: AlignmentDirectional(0, -0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'fo07eawk' /* अआ कख */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Noto Sans Devanagari',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'n03he03d' /* हिंदी */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Noto Sans Devanagari',
                                    color: Color(0xFF7F7F85),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
