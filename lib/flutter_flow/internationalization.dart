import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ar', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? arText = '',
    String? enText = '',
  }) =>
      [arText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    '12xj6uvi': {
      'ar': 'من فضلك ... سجل بيانات الدخول',
      'en': 'Please... Register your login details',
    },
    'oxfof9g3': {
      'ar': 'البريد الاليكتروني',
      'en': 'E-mail',
    },
    'i3m0tcyg': {
      'ar': 'كلمه المرور',
      'en': 'password',
    },
    'buvhrzne': {
      'ar': 'تسجيل',
      'en': 'registration',
    },
    'cwv6hrfj': {
      'ar': 'هل نسيت كلمة المرور ... اضغط هنا',
      'en': 'Forgot your password? Click here',
    },
    'w168r9b0': {
      'ar': 'يمكنك التسجيل عن طريق  ',
      'en': 'You can register via',
    },
    'xjhpd2rv': {
      'ar': 'تسجيل بواسطة جوجل',
      'en': 'Register with Google',
    },
    '7tpav4or': {
      'ar': 'تسجيل بواسطة ابل',
      'en': 'Register with Apple',
    },
    '86p1z442': {
      'ar': 'login',
      'en': 'Home',
    },
  },
  // Onboarding01
  {
    'r49htzye': {
      'ar': 'مرحبا بيكم',
      'en': 'welcome',
    },
    '16xvudm2': {
      'ar': 'منصة تعارف آمن بمنهج علمي لتحقيق زواج ناجح',
      'en':
          'A safe dating platform with a scientific approach to achieve a successful marriage',
    },
    'opuqcnah': {
      'ar': 'انشاء حساب جديد',
      'en': 'Create a new account',
    },
    't05aeqya': {
      'ar': 'تسجيل الدخول',
      'en': 'sign in',
    },
    'iuldz832': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // customer_details
  {
    'y2zujc0d': {
      'ar': 'Active',
      'en': '',
    },
    'upbe61i7': {
      'ar': 'Yasser, 30',
      'en': '',
    },
    'wx05iunk': {
      'ar': 'Cairo, NC, ffff',
      'en': '',
    },
    '6bfv9kgi': {
      'ar': 'معلومات هامه',
      'en': '',
    },
    'oqwu6w02': {
      'ar': 'مواصفاتي',
      'en': '',
    },
    'dipl618z': {
      'ar': 'معلومات اخري عني',
      'en': '',
    },
    '7qurox82': {
      'ar': 'Details',
      'en': 'Details',
    },
    'tfko659o': {
      'ar': 'profile',
      'en': 'Home',
    },
  },
  // profile_new
  {
    'v0vn1m81': {
      'ar': 'Joy Augustin',
      'en': 'Joy Augustin',
    },
    '27wm52uw': {
      'ar': 'joy@augustin.com',
      'en': 'joy@augustin.com',
    },
    '5ara4gux': {
      'ar': 'Account',
      'en': 'Account',
    },
    '21y6tm3u': {
      'ar': 'Payment Options',
      'en': 'PaymentOptions',
    },
    '23rtwyv7': {
      'ar': 'Country',
      'en': 'Country',
    },
    'p7p3g02q': {
      'ar': 'Notification Settings',
      'en': 'Notification Settings',
    },
    'b0k3g0q6': {
      'ar': 'Edit Profile',
      'en': 'Edit Profile',
    },
    '17c7adrx': {
      'ar': 'General',
      'en': 'General',
    },
    '7fe6lzkv': {
      'ar': 'Support',
      'en': 'Support',
    },
    'lw4kpm64': {
      'ar': 'Terms of Service',
      'en': 'Terms of Service',
    },
    '70eeyjfw': {
      'ar': 'Invite Friends',
      'en': 'Invite Friends',
    },
    '0ndcol0g': {
      'ar': 'Profile',
      'en': 'Profile',
    },
    'sp31b2ha': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // users_list
  {
    'nexn3xni': {
      'ar': 'Search listings...',
      'en': 'Search listings...',
    },
    '8jbhz90z': {
      'ar': 'Homes',
      'en': 'Homes',
    },
    'dy7ld300': {
      'ar': 'Maidstone, San Antonio, Tx.',
      'en': 'Maidstone, San Antonio, TX.',
    },
    'icscankn': {
      'ar': '\$210/night',
      'en': '\$210/night',
    },
    'li8nome1': {
      'ar': '32 miles away',
      'en': '32 miles away',
    },
    'sqgjb0ug': {
      'ar': '4.25',
      'en': '4.25',
    },
    '1hhl956f': {
      'ar': 'Maidstone, San Antonio, Tx.',
      'en': 'Maidstone, San Antonio, TX.',
    },
    'fya021vz': {
      'ar': '\$210/night',
      'en': '\$210/night',
    },
    'o8tlu8nt': {
      'ar': '32 miles away',
      'en': '32 miles away',
    },
    '0migo6zc': {
      'ar': '4.25',
      'en': '4.25',
    },
    'w8nx2e4k': {
      'ar': 'Beachfront',
      'en': 'Beachfront',
    },
    '6jifavif': {
      'ar': 'Maidstone, San Antonio, Tx.',
      'en': 'Maidstone, San Antonio, TX.',
    },
    'sw7g6meq': {
      'ar': '\$210/night',
      'en': '\$210/night',
    },
    '9j6qu8b9': {
      'ar': '32 miles away',
      'en': '32 miles away',
    },
    'atysxun6': {
      'ar': '4.25',
      'en': '4.25',
    },
    'd68z033k': {
      'ar': 'Maidstone, San Antonio, Tx.',
      'en': 'Maidstone, San Antonio, TX.',
    },
    '0b3f1zuc': {
      'ar': '\$210/night',
      'en': '\$210/night',
    },
    'x68xvtuq': {
      'ar': '32 miles away',
      'en': '32 miles away',
    },
    '7fur5mh6': {
      'ar': '4.25',
      'en': '4.25',
    },
    'ew1kg56x': {
      'ar': 'Nature',
      'en': 'Nature',
    },
    'upkn1aje': {
      'ar': 'Maidstone, San Antonio, Tx.',
      'en': 'Maidstone, San Antonio, TX.',
    },
    '5450q4rm': {
      'ar': '\$210/night',
      'en': '\$210/night',
    },
    'hz2j8cfl': {
      'ar': '32 miles away',
      'en': '32 miles away',
    },
    '4hj9ah6u': {
      'ar': '4.25',
      'en': '4.25',
    },
    '6a2c49tf': {
      'ar': 'Maidstone, San Antonio, Tx.',
      'en': 'Maidstone, San Antonio, TX.',
    },
    'js0cnazr': {
      'ar': '\$210/night',
      'en': '\$210/night',
    },
    'c579omf8': {
      'ar': '32 miles away',
      'en': '32 miles away',
    },
    '4et9md34': {
      'ar': '4.25',
      'en': '4.25',
    },
    'cg71wog8': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // test_page
  {
    '2ve436f4': {
      'ar': 'Page Title',
      'en': '',
    },
    'irk7auvq': {
      'ar': 'test',
      'en': '',
    },
  },
  // customer_new
  {
    'qno386d6': {
      'ar': 'testing data',
      'en': '',
    },
    'nw6qu0jq': {
      'ar': 'profile',
      'en': 'Home',
    },
  },
  // profile_images
  {
    '5no8ob7k': {
      'ar': 'Shop',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'd04dzvhy': {
      'ar': '',
      'en': '',
    },
    'kf0v8l5w': {
      'ar': '',
      'en': '',
    },
    'zvyob3a7': {
      'ar': '',
      'en': '',
    },
    'teyi6a8s': {
      'ar': '',
      'en': '',
    },
    'vpx9t9m3': {
      'ar': '',
      'en': '',
    },
    'hx9bipe8': {
      'ar': '',
      'en': '',
    },
    'g4xthqtl': {
      'ar': '',
      'en': '',
    },
    '505rr5xq': {
      'ar': '',
      'en': '',
    },
    '41ygp9fw': {
      'ar': '',
      'en': '',
    },
    '53ej067p': {
      'ar': '',
      'en': '',
    },
    '9zlcnctm': {
      'ar': '',
      'en': '',
    },
    'cs8e3bah': {
      'ar': '',
      'en': '',
    },
    '74ep2yyb': {
      'ar': '',
      'en': '',
    },
    'kq9jp9wu': {
      'ar': '',
      'en': '',
    },
    'gn0g872w': {
      'ar': '',
      'en': '',
    },
    'itis32qz': {
      'ar': '',
      'en': '',
    },
    'j2g4fwiu': {
      'ar': '',
      'en': '',
    },
    '04j2u9cm': {
      'ar': '',
      'en': '',
    },
    'kvbcwg86': {
      'ar': '',
      'en': '',
    },
    'bp12vk3d': {
      'ar': '',
      'en': '',
    },
    '44itbqhw': {
      'ar': '',
      'en': '',
    },
    'ilnlhwno': {
      'ar': '',
      'en': '',
    },
    'u3yhq0uq': {
      'ar': '',
      'en': '',
    },
    'xsu01n3g': {
      'ar': '',
      'en': '',
    },
    '6kqmmlr4': {
      'ar': '',
      'en': '',
    },
    'j89rbf1o': {
      'ar': '',
      'en': '',
    },
    '3dhrutq9': {
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
