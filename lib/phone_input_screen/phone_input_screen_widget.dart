import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../otp_screen/otp_screen_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneInputScreenWidget extends StatefulWidget {
  const PhoneInputScreenWidget({Key key}) : super(key: key);

  @override
  _PhoneInputScreenWidgetState createState() => _PhoneInputScreenWidgetState();
}

class _PhoneInputScreenWidgetState extends State<PhoneInputScreenWidget> {
  ApiCallResponse onboardingResponse;
  bool isConnected;
  TextEditingController phoneNumberController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
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
                              color: FlutterFlowTheme.of(context).primaryColor,
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
                              'fvvuw10u' /* Enter your  */,
                            ),
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Noto Sans',
                                  fontSize: 21,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'ap2ze6yb' /* Mobile Number */,
                            ),
                            style: FlutterFlowTheme.of(context).title2,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'abntwq1b' /* to proceed */,
                            ),
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                        ],
                      ),
                    ),
                    Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                        child: TextFormField(
                          controller: phoneNumberController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'uk546b0m' /* Mobile Number */,
                            ),
                            labelStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            hintText: FFLocalizations.of(context).getText(
                              '32je9pni' /* Mobile Number */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
                          keyboardType: TextInputType.number,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return FFLocalizations.of(context).getText(
                                'vnuncent' /* Field is required */,
                              );
                            }
                            if (val.length < 10) {
                              return FFLocalizations.of(context).getText(
                                'zi40kvfn' /* Enter 10 digit mobile number */,
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
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        isConnected = await actions.hasInternetConnection();
                        if ((isConnected) == true) {
                          onboardingResponse =
                              await InitiateUserOnboardingCall.call(
                            phoneNumber: phoneNumberController.text,
                          );
                          if ((getJsonField(
                                (onboardingResponse?.jsonBody ?? ''),
                                r'''$.data''',
                              ) !=
                              null)) {
                            setState(
                                () => FFAppState().sessionId = getJsonField(
                                      (onboardingResponse?.jsonBody ?? ''),
                                      r'''$.data.initiateOnBoarding.sessionId''',
                                    ).toString());
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 200),
                                reverseDuration: Duration(milliseconds: 200),
                                child: OtpScreenWidget(
                                  mobileNumber: phoneNumberController.text,
                                ),
                              ),
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Invalid Phone No'),
                                  content:
                                      Text('Enter your 10 digit mobile number'),
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).lineColor,
                            ),
                          );
                        }

                        setState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'ywu42gar' /* GET OTP */,
                      ),
                      options: FFButtonOptions(
                        width: 250,
                        height: 60,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Noto Sans',
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'u56bn3z5' /* By clicking next you agree to ... */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 5, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'jhp3muab' /* privacy policy */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '3qua77g9' /*  and  */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '5pzsld2f' /* terms of use  */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '2bxoa58e' /* of Gojo */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: false,
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
