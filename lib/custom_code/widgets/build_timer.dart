// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
import '../../backend/api_requests/api_calls.dart';

class BuildTimer extends StatefulWidget {
  const BuildTimer({
    Key key,
    this.width,
    this.height,
    this.time,
  }) : super(key: key);

  final double width;
  final double height;
  final int time;

  @override
  _BuildTimerState createState() => _BuildTimerState();
}

class _BuildTimerState extends State<BuildTimer> {
  var _isResendOtpTap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "change number?",
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Noto Sans',
                color: FlutterFlowTheme.of(context).secondaryColor,
                useGoogleFonts: false,
              ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: widget.time, end: 0.0),
          duration: const Duration(seconds: 60),
          builder: (_, dynamic value, child) => Row(
            children: [
              GestureDetector(
                child: Text(
                  'resend OTP',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Noto Sans',
                        color: _isResendOtpTap
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).primaryText,
                        useGoogleFonts: false,
                      ),
                ),
                onTap: (() async {
                  if (value.toInt() == 0) {
                    await ResendOtpCall.call(
                      sessionId: FFAppState().sessionId,
                    );
                    setState(() {
                      _isResendOtpTap = true;
                    });
                  }
                }),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "00:${value.toInt() < 10 ? '0${value.toInt()}' : value.toInt()}",
                style: FlutterFlowTheme.of(context).bodyText1,
              )
            ],
          ),
        ),
      ],
    ));
  }
}
