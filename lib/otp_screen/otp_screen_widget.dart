import '../backend/api_requests/api_calls.dart';
import '../email_register_screen/email_register_screen_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreenWidget extends StatefulWidget {
  const OtpScreenWidget({
    Key key,
    this.mobileNumber,
  }) : super(key: key);

  final String mobileNumber;

  @override
  _OtpScreenWidgetState createState() => _OtpScreenWidgetState();
}

class _OtpScreenWidgetState extends State<OtpScreenWidget> {
  ApiCallResponse isVerified;
  bool isConnected;
  bool isValidPinLength;
  TextEditingController otpTextController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    otpTextController = TextEditingController();
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
                                'z5dhqsfh' /* We have sent you a  */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '3c09b6qw' /* 6 Digit OTP */,
                              ),
                              style: FlutterFlowTheme.of(context).title2,
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
                                'iq9fn1m3' /* on  */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                            Text(
                              widget.mobileNumber,
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
                            controller: otpTextController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'otpTextController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '83f2lw5t' /* Enter OTP */,
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
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Noto Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  useGoogleFonts: false,
                                ),
                            keyboardType: TextInputType.number,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return FFLocalizations.of(context).getText(
                                  'orhgf56r' /* Field is required */,
                                );
                              }
                              if (val.length < 6) {
                                return FFLocalizations.of(context).getText(
                                  'kevkci69' /* enter six digit otp */,
                                );
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 20,
                        child: custom_widgets.BuildTimer(
                          width: double.infinity,
                          height: 20,
                          time: 60,
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
                            otpTextController.text,
                          );
                          if ((isValidPinLength) == true) {
                            isConnected = await actions.hasInternetConnection();
                            if ((isConnected) == true) {
                              isVerified = await OtpVerificationCall.call(
                                otp: otpTextController.text,
                                sessionId: FFAppState().sessionId,
                              );
                              if ((getJsonField(
                                    (isVerified?.jsonBody ?? ''),
                                    r'''$.data''',
                                  ) !=
                                  null)) {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 200),
                                    reverseDuration:
                                        Duration(milliseconds: 200),
                                    child: EmailRegisterScreenWidget(),
                                  ),
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Invalid OTP'),
                                      content: Text(
                                          'you have x number of tries left'),
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
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Check your internet connection',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                ),
                              );
                            }
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Invalid OTP'),
                                  content: Text('OTP length must be 6 digits'),
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
                          'y6bw3a3h' /* VERIFY */,
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
