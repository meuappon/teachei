import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Menu",
        "fr":
            "Vous devez vous connecter pour accéder au profil et à l'historique",
        "es": "Menu",
        "de":
            "Sie müssen sich anmelden, um auf Profil und Verlauf zugreifen zu können",
        "pt": "Menu",
        "ar": "يجب عليك تسجيل الدخول للوصول إلى الملف الشخصي والتاريخ",
        "ko": "프로필 및 기록에 액세스하려면 로그인해야합니다."
      } +
      {
        "en": "Te Achei",
        "fr": "Connexion",
        "es": "Te Achei",
        "de": "Anmeldung",
        "pt": "Te Achei",
        "ar": "تسجيل الدخول",
        "ko": "로그인"
      };

  String get i18n => localize(this, _t);
}
