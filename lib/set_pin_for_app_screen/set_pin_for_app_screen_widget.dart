import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../retype_security_pin_screen/retype_security_pin_screen_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetPinForAppScreenWidget extends StatefulWidget {
  const SetPinForAppScreenWidget({Key key}) : super(key: key);

  @override
  _SetPinForAppScreenWidgetState createState() =>
      _SetPinForAppScreenWidgetState();
}

class _SetPinForAppScreenWidgetState extends State<SetPinForAppScreenWidget> {
  TextEditingController securityPinController;
  bool securityPinVisibility;
  bool isValidPinLength;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    securityPinController = TextEditingController();
    securityPinVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 180,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Image.asset(
                              'assets/images/hello.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, -0.75),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Icon(
                                Icons.help_outlined,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 7),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'm2ftdijj' /* Set your 6 digit */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'm6qh9k65' /* Security Pin */,
                              ),
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                          child: TextFormField(
                            controller: securityPinController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'securityPinController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: !securityPinVisibility,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'm6nv3ocu' /* Enter PIN */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Noto Sans',
                                    color: Color(0xFF7F7F85),
                                    fontSize: 16,
                                    useGoogleFonts: false,
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).lineColor,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => securityPinVisibility =
                                      !securityPinVisibility,
                                ),
                                child: Icon(
                                  securityPinVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).subtitle1,
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return FFLocalizations.of(context).getText(
                                  'v78bgldd' /* Field is required */,
                                );
                              }
                              if (val.length < 6) {
                                return FFLocalizations.of(context).getText(
                                  '9nxee944' /* Enter 6 digit pin */,
                                );
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 50, 24, 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          isValidPinLength = await actions.validatePinLength(
                            securityPinController.text,
                          );
                          if ((isValidPinLength) == true) {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 200),
                                reverseDuration: Duration(milliseconds: 200),
                                child: RetypeSecurityPinScreenWidget(
                                  pin: securityPinController.text,
                                ),
                              ),
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Invalid Pin'),
                                  content: Text('Enter a 6 digit PIN for app'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                          setState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '2tdd02cj' /* PROCEED */,
                        ),
                        options: FFButtonOptions(
                          width: 250,
                          height: 60,
                          color: Color(0xFF332D6B),
                          textStyle: FlutterFlowTheme.of(context).subtitle2,
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 40,
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
