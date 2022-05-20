import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class InitiateUserOnboardingCall {
  static Future<ApiCallResponse> call({
    String countryCode = '91',
    String phoneNumber = '',
  }) {
    final body = '''
{
  "operationName": "initiateOnBoarding",
  "variables": {
    "countryCode": "${countryCode}",
    "phoneNumber": "${phoneNumber}"
  },
  "query": "mutation initiateOnBoarding(\$countryCode: String!, \$phoneNumber: String!) {\\n  initiateOnBoarding(data: {countryCode: \$countryCode, phoneNumber: \$phoneNumber}) {\\n    isBlocked\\n    message\\n    nextChallenge\\n    sessionId\\n    username\\n    warning\\n  }\\n}\\n"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate User Onboarding',
      apiUrl: 'https://dev.api.neobank.gojoco.io/gojoy/v1/graphql',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'countryCode': countryCode,
        'phoneNumber': phoneNumber,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic sessionId(dynamic response) => getJsonField(
        response,
        r'''$.data.initiateOnBoarding.sessionId''',
      );
}

class OtpVerificationCall {
  static Future<ApiCallResponse> call({
    String otp = '',
    String sessionId = '',
  }) {
    final body = '''
{
  "operationName": "verifyOtp",
  "variables": {
    "otp": "${otp}",
    "sessionId": "${sessionId}"
  },
  "query": "mutation verifyOtp(\$otp: String!, \$sessionId: String!) {\\n  verifyOtp(data: {otp: \$otp, sessionId: \$sessionId}) {\\n    isBlocked\\n    message\\n    nextChallenge\\n    sessionId\\n    username\\n    warning\\n  }\\n}\\n"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Otp Verification',
      apiUrl: 'https://dev.api.neobank.gojoco.io/gojoy/v1/graphql',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'otp': otp,
        'sessionId': sessionId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SetPinCall {
  static Future<ApiCallResponse> call({
    String pin = '',
    String sessionId = '',
  }) {
    final body = '''
{
  "operationName": "setPin",
  "variables": {
    "pin": "${pin}",
    "sessionId": "${sessionId}"
  },
  "query": "mutation setPin(\$pin: String!, \$sessionId: String!) {\\n  setPin(data: {pin: \$pin, sessionId: \$sessionId}) {\\n    isBlocked\\n    message\\n    nextChallenge\\n    sessionId\\n    username\\n    warning\\n  }\\n}\\n"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Set Pin',
      apiUrl: 'https://dev.api.neobank.gojoco.io/gojoy/v1/graphql',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'pin': pin,
        'sessionId': sessionId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class AdditionalUserDetailsCall {
  static Future<ApiCallResponse> call({
    String email = '',
    String pincode = '',
    String sessionId = '',
  }) {
    final body = '''
{
  "operationName": "sendAdditionalDetails",
  "variables": {
    "email": "${email}",
    "pincode": "${pincode}",
    "sessionId": "${sessionId}"
  },
  "query": "mutation sendAdditionalDetails(\$email: String!, \$pincode: String!, \$sessionId: String!) {\\n  sendAdditionalDetails(data: {email: \$email, pincode: \$pincode, sessionId: \$sessionId}) {\\n    isBlocked\\n    message\\n    nextChallenge\\n    sessionId\\n    username\\n    warning\\n  }\\n}\\n"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Additional User Details',
      apiUrl: 'https://dev.api.neobank.gojoco.io/gojoy/v1/graphql',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'pincode': pincode,
        'sessionId': sessionId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ResendOtpCall {
  static Future<ApiCallResponse> call({
    String sessionId = '',
  }) {
    final body = '''
{
  "operationName": "resendOtp",
  "variables": {
    "sessionId": "${sessionId}"
  },
  "query": "mutation resendOtp(\$sessionId: String!) {\\n  resendOtp(data: {sessionId: \$sessionId}) {\\n    isBlocked\\n    message\\n    nextChallenge\\n    sessionId\\n    username\\n    warning\\n  }\\n}\\n"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Resend Otp',
      apiUrl: 'https://dev.api.neobank.gojoco.io/gojoy/v1/graphql',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'sessionId': sessionId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
