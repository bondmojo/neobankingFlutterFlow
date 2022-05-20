import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'hi'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'v697ud94': {
      'en': 'Home',
      'hi': 'Home',
    },
  },
  // languageSelect
  {
    '45ni5zh5': {
      'en': 'Please choose your ',
      'hi': 'Please choose your ',
    },
    'w8chyunq': {
      'en': 'Prefered Language',
      'hi': 'Prefered Language',
    },
    'shxp44ga': {
      'en': 'AB ab',
      'hi': 'AB ab',
    },
    'gjslvgzl': {
      'en': 'English',
      'hi': 'English',
    },
    'fo07eawk': {
      'en': 'अआ कख',
      'hi': 'अआ कख',
    },
    'n03he03d': {
      'en': 'हिंदी',
      'hi': 'हिंदी',
    },
    'lmk96q1o': {
      'en': 'Home',
      'hi': 'Home',
    },
  },
  // onboardingScreen
  {
    '1635adwt': {
      'en':
          'Avail Credit Line instantly and pay interest only for the used amount',
      'hi':
          'तुरंत क्रेडिट लाइन का लाभ उठाएं और केवल उपयोग की गई राशि के लिए ब्याज का भुगतान करें',
    },
    'yqg6l7z9': {
      'en': 'Withdraw Credit',
      'hi': 'पैसा निकाल',
    },
    'sbfuo8z6': {
      'en': 'Withdraw your Credit as and when you want',
      'hi': 'जब भी आप चाहें अपना पैसा आसानी से निकाल लें',
    },
    'uwd24isb': {
      'en': 'Gojo Coins',
      'hi': 'गोजो सिक्के',
    },
    '88efbvx5': {
      'en': 'Earn Gojo Coins and enjoy amazing benefits',
      'hi': 'गोजो सिक्के अर्जित करें और अद्भुत लाभों का आनंद लें',
    },
    '1pxnk5vk': {
      'en': 'Refer & Earn',
      'hi': 'आमंत्रित करे और कमाएँ',
    },
    'z2s05hvg': {
      'en': 'Refer & Earn by inviting your friends on Gojo',
      'hi': 'अपने दोस्तों को गोजो पर आमंत्रित \nकरे और कमाएँ',
    },
    '5tihbxc8': {
      'en': 'Get Started',
      'hi': 'शुरू करे',
    },
  },
  // PhoneInputScreen
  {
    'fvvuw10u': {
      'en': 'Enter your ',
      'hi': 'आगे बढ़ने के लिए अपना ',
    },
    'ap2ze6yb': {
      'en': 'Mobile Number',
      'hi': 'मोबाइल नंबर ',
    },
    'abntwq1b': {
      'en': 'to proceed',
      'hi': 'दर्ज करें',
    },
    'uk546b0m': {
      'en': 'Mobile Number',
      'hi': 'मोबाइल नंबर ',
    },
    '32je9pni': {
      'en': 'Mobile Number',
      'hi': 'मोबाइल नंबर ',
    },
    'vnuncent': {
      'en': 'Field is required',
      'hi': 'Field is required',
    },
    'zi40kvfn': {
      'en': 'Enter 10 digit mobile number',
      'hi': 'मोबाइल नंबर दर्ज करें',
    },
    'ywu42gar': {
      'en': 'GET OTP',
      'hi': 'ओटीपी पाये',
    },
    'u56bn3z5': {
      'en': 'By clicking next you agree to the',
      'hi': '“ओटीपी पाये” क्लिक करके आप गोजो की ',
    },
    'jhp3muab': {
      'en': 'privacy policy',
      'hi': 'गोपनीयता नीति ',
    },
    '3qua77g9': {
      'en': ' and ',
      'hi': 'और ',
    },
    '5pzsld2f': {
      'en': 'terms of use ',
      'hi': 'उपयोग की शर्तों ',
    },
    '2bxoa58e': {
      'en': 'of Gojo',
      'hi': 'से सहमत होते हैं',
    },
  },
  // OtpScreen
  {
    'z5dhqsfh': {
      'en': 'We have sent you a ',
      'hi': 'हमने आपको  ',
    },
    '3c09b6qw': {
      'en': '6 Digit OTP',
      'hi': '6 अंकों का ओटीपी ',
    },
    'iq9fn1m3': {
      'en': 'on ',
      'hi': 'पर भेजा है ',
    },
    '83f2lw5t': {
      'en': 'Enter OTP',
      'hi': 'ओटीपी दर्ज करें',
    },
    'orhgf56r': {
      'en': 'Field is required',
      'hi': 'Field is required',
    },
    'kevkci69': {
      'en': 'enter six digit otp',
      'hi': '6 अंकों का ओटीपी दर्ज करें',
    },
    'y6bw3a3h': {
      'en': 'VERIFY',
      'hi': 'सत्यापित करें',
    },
    'gg7x9jqt': {
      'en': 'Home',
      'hi': '',
    },
  },
  // EmailRegisterScreen
  {
    '3rwfhyy4': {
      'en': 'Register your ',
      'hi': 'हमारे साथ अपना ',
    },
    'dnhb2ad8': {
      'en': 'Email ID',
      'hi': 'ईमेल आईडी ',
    },
    'iflci452': {
      'en': 'with us',
      'hi': 'सेट करें',
    },
    'uqsohj4l': {
      'en': 'Enter your Email',
      'hi': 'ईमेल आईडी दर्ज करें',
    },
    '2m2tnm9m': {
      'en': 'SUBMIT EMAIL',
      'hi': 'ईमेल भरें',
    },
    'l0y3hovx': {
      'en': 'We will send real time transaction notifications,',
      'hi': 'हम आपके ईमेल पर रीयल टाइम ट्रांजैक्शन नोटिफिकेशन, ',
    },
    '3cfoh0gx': {
      'en': 'statements and other important updates ',
      'hi': 'स्टेटमेंट और अन्य महत्वपूर्ण ',
    },
    'va3ifygl': {
      'en': 'to your verified email',
      'hi': 'अपडेट भेजेंगे',
    },
    'nba7r5oa': {
      'en': 'Skip For Now',
      'hi': 'बाद में भरें',
    },
    'km4kyd5h': {
      'en': 'Home',
      'hi': '',
    },
  },
  // AvailaibilityCheckScreen
  {
    'xlkhceo2': {
      'en': 'Enter your ',
      'hi': 'उपलब्धता जांचने के लिए अपना ',
    },
    '56bdjgb3': {
      'en': 'Residence Pincode',
      'hi': 'निवास पिनकोड ',
    },
    'h76w7c9p': {
      'en': 'to check availability',
      'hi': ' दर्ज करें',
    },
    'nfrydavs': {
      'en': 'Residence Pincode',
      'hi': 'निवास पिनकोड ',
    },
    'ppxhslad': {
      'en': 'Enter Pincode',
      'hi': 'पिनकोड भरें',
    },
    'kre3r9oe': {
      'en': 'Field is required',
      'hi': 'Field is required',
    },
    'dmzjr7l6': {
      'en': 'Enter 6 digit pincode',
      'hi': 'पिनकोड भरें',
    },
    'fmogf40e': {
      'en': 'CHECK AVAILABILITY',
      'hi': 'उपलब्धता जांचें',
    },
    '6750ekkc': {
      'en': 'Home',
      'hi': '',
    },
  },
  // UserPermissionsScreen
  {
    '48iqgfad': {
      'en': 'We need some ',
      'hi': 'हमें आपसे कुछ ',
    },
    'j8yrmgui': {
      'en': 'Permissions',
      'hi': 'अनुमतियों ',
    },
    'yfugglwl': {
      'en': 'from you',
      'hi': 'की आवश्यकता है',
    },
    'i4cifszf': {
      'en': 'SMS',
      'hi': 'एसएमएस',
    },
    'og7i2xga': {
      'en': 'lorem ipsum doler mit siticum.',
      'hi': 'lorem ipsum doler mit siticum.',
    },
    'f0jrsknd': {
      'en': 'CONTACTS',
      'hi': 'CONTACTS',
    },
    'gv0y0y6x': {
      'en': 'lorem ipsum doler mit siticum.',
      'hi': 'lorem ipsum doler mit siticum.',
    },
    'pb9aner0': {
      'en': 'LOCATION',
      'hi': 'स्थान',
    },
    'ep8uu0kh': {
      'en': 'lorem ipsum doler mit siticum.',
      'hi': 'lorem ipsum doler mit siticum.',
    },
    'c50jbk8c': {
      'en': 'ALLOW ALL ACCESS',
      'hi': 'अनुमति दे',
    },
    'liu64znp': {
      'en': 'By clicking next you agree to the',
      'hi': '“अनुमति देे” क्लिक करके आप गोजो की   ',
    },
    'uqdsyr95': {
      'en': 'privacy policy',
      'hi': 'गोपनीयता नीति ',
    },
    '8nh28vjv': {
      'en': ' and ',
      'hi': 'और',
    },
    'tdpwvdpg': {
      'en': 'terms of use ',
      'hi': 'उपयोग की शर्तों ',
    },
    '66ysi7ph': {
      'en': 'of Gojo',
      'hi': 'से सहमत होते हैं',
    },
    'c2hjkpew': {
      'en': 'Home',
      'hi': '',
    },
  },
  // SetPinForAppScreen
  {
    'm2ftdijj': {
      'en': 'Set your 6 digit',
      'hi': 'अपना 6 अंकों का ',
    },
    'm6qh9k65': {
      'en': 'Security Pin',
      'hi': 'सुरक्षा पिन सेट करें',
    },
    'm6nv3ocu': {
      'en': 'Enter PIN',
      'hi': 'पिन भरें',
    },
    'v78bgldd': {
      'en': 'Field is required',
      'hi': 'Field is required',
    },
    '9nxee944': {
      'en': 'Enter 6 digit pin',
      'hi': 'पिन भरें',
    },
    '2tdd02cj': {
      'en': 'PROCEED',
      'hi': 'आगे बढे',
    },
    '166g1oif': {
      'en': 'Home',
      'hi': '',
    },
  },
  // RetypeSecurityPinScreen
  {
    'c7xwx268': {
      'en': 'Retype your 6 digit',
      'hi': 'अपना 6 अंकों का',
    },
    '5xi9ykj9': {
      'en': 'Security Pin',
      'hi': 'सुरक्षा पिन फिर से लिखें',
    },
    'ga3an4ps': {
      'en': 'Enter PIN',
      'hi': 'पिन भरें',
    },
    'vh2rpw95': {
      'en': 'SET PIN',
      'hi': 'पिन सेट करे',
    },
    'td0ijo24': {
      'en': 'Field is required',
      'hi': 'Field is required',
    },
    '5l6b3dye': {
      'en': 'Retype 6 digit PIN',
      'hi': 'सुरक्षा पिन फिर से लिखें',
    },
    'yat0hksh': {
      'en': 'Home',
      'hi': '',
    },
  },
  // userDashboard
  {
    'p3ckfi8z': {
      'en': 'Income',
      'hi': '',
    },
    'xfjtfaqp': {
      'en': '+\$12,402',
      'hi': '',
    },
    '7g9wzst5': {
      'en': '4.5% ',
      'hi': '',
    },
    '00w8gv4x': {
      'en': 'Spending',
      'hi': '',
    },
    '7tj51bz7': {
      'en': '-\$8,392',
      'hi': '',
    },
    'yoqwno3p': {
      'en': '4.5% ',
      'hi': '',
    },
    'iimefdly': {
      'en': 'Advertising Budget',
      'hi': '',
    },
    'ajh3r8eb': {
      'en': '\$3,000',
      'hi': '',
    },
    '6xyph3pj': {
      'en': '4 Days Left',
      'hi': '',
    },
    'v4kbnnem': {
      'en': 'Total Spent',
      'hi': '',
    },
    '1ffos9i1': {
      'en': '\$2,502',
      'hi': '',
    },
    '3cq3o7cm': {
      'en': 'Advertising Budget',
      'hi': '',
    },
    '4bwoejhq': {
      'en': '\$3,000',
      'hi': '',
    },
    '9bh29022': {
      'en': '4 Days Left',
      'hi': '',
    },
    'wuwo6jii': {
      'en': 'Total Spent',
      'hi': '',
    },
    '5oud3hsl': {
      'en': '\$2,502',
      'hi': '',
    },
    '0t4homtf': {
      'en': 'Advertising Budget',
      'hi': '',
    },
    'ejrj871u': {
      'en': '\$3,000',
      'hi': '',
    },
    '30lanogs': {
      'en': '4 Days Left',
      'hi': '',
    },
    'dc59we6l': {
      'en': 'Total Spent',
      'hi': '',
    },
    '3ltyzx0k': {
      'en': '\$2,502',
      'hi': '',
    },
    'zx5u6d4m': {
      'en': 'My Budget',
      'hi': '',
    },
    '51i8sqb6': {
      'en': 'Home',
      'hi': '',
    },
  },
  // userLoginScreen
  {
    'vkuu0xmm': {
      'en': 'Enter your 6 digit',
      'hi': 'अपना 6 अंकों का',
    },
    'm8ejt2j3': {
      'en': 'Security Pin',
      'hi': 'सुरक्षा पिन सेट करें',
    },
    '0j3ay68j': {
      'en': 'Enter PIN',
      'hi': 'पिन भरें',
    },
    '12b7cc4s': {
      'en': 'Field is required',
      'hi': 'Field is required',
    },
    'qvuqj6qn': {
      'en': 'Enter 6 digit pin',
      'hi': 'पिन भरें',
    },
    'vlzqawdl': {
      'en': 'LOGIN',
      'hi': 'LOGIN',
    },
    'q0ul7emj': {
      'en': 'Home',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
