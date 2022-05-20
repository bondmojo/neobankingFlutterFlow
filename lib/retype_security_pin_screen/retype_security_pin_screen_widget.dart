import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../user_dashboard/user_dashboard_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RetypeSecurityPinScreenWidget extends StatefulWidget {
  const RetypeSecurityPinScreenWidget({
    Key key,
    this.pin,
  }) : super(key: key);

  final String pin;

  @override
  _RetypeSecurityPinScreenWidgetState createState() =>
      _RetypeSecurityPinScreenWidgetState();
}

class _RetypeSecurityPinScreenWidgetState
    extends State<RetypeSecurityPinScreenWidget> {
  ApiCallResponse setPinResponse;
  bool isConnected;
  TextEditingController confirmPinController;
  bool confirmPinVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPinController = TextEditingController();
    confirmPinVisibility = false;
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
                                'c7xwx268' /* Retype your 6 digit */,
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
                                '5xi9ykj9' /* Security Pin */,
                              ),
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                              child: TextFormField(
                                controller: confirmPinController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'confirmPinController',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: !confirmPinVisibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'ga3an4ps' /* Enter PIN */,
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
                                  fillColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => confirmPinVisibility =
                                          !confirmPinVisibility,
                                    ),
                                    child: Icon(
                                      confirmPinVisibility
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
                                      'td0ijo24' /* Field is required */,
                                    );
                                  }
                                  if (val.length < 6) {
                                    return FFLocalizations.of(context).getText(
                                      '5l6b3dye' /* Retype 6 digit PIN */,
                                    );
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 50, 24, 50),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      if ((confirmPinController.text) ==
                                          (widget.pin)) {
                                        isConnected = await actions
                                            .hasInternetConnection();
                                        if ((isConnected) == true) {
                                          setPinResponse =
                                              await SetPinCall.call(
                                            pin: confirmPinController.text,
                                            sessionId: FFAppState().sessionId,
                                          );
                                          if ((getJsonField(
                                                (setPinResponse?.jsonBody ??
                                                    ''),
                                                r'''$.data''',
                                              ) !=
                                              null)) {
                                            setState(() => FFAppState()
                                                .isOnboarded = true);
                                            setState(() =>
                                                FFAppState().password =
                                                    confirmPinController.text);
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 200),
                                                reverseDuration:
                                                    Duration(milliseconds: 200),
                                                child: UserDashboardWidget(),
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Just for testing purpose',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryColor,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 2000),
                                                backgroundColor:
                                                    Color(0x00000000),
                                              ),
                                            );
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Check your internet connection',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                          );
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Wrong Pin'),
                                              content:
                                                  Text('Password mismatch'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
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
                                      'vh2rpw95' /* SET PIN */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 250,
                                      height: 60,
                                      color: Color(0xFF332D6B),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2,
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
