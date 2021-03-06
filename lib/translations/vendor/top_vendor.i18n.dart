import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Available",
        "fr": "Ouvert",
        "es": "Disponible",
        "de": "Öffnen",
        "pt": "Disponível",
        "ar": "فتح",
        "ko": "열다"
      } +
      {
        "en": "Closed",
        "fr": "Fermé",
        "es": "Cerrado",
        "de": "Geschlossen",
        "pt": "Fechadas",
        "ar": "مغلق",
        "ko": "닫은"
      } +
      {
        "en": "Top Vendors",
        "fr": "Meilleurs vendeurs",
        "es": "Proveedores principales",
        "de": "Top-Anbieter",
        "pt": "Principais fornecedores",
        "ar": "كبار البائعين",
        "ko": "최고 공급 업체"
      } +
      {
        "en": "Delivery",
        "fr": "Livraison",
        "es": "Entrega",
        "de": "Lieferung",
        "pt": "Entrega",
        "ar": "توصيل",
        "ko": "배달"
      } +
      {
        "en": "Verified",
        "fr": "Ramasser",
        "es": "Verificado",
        "de": "Abholen",
        "pt": "Verificado",
        "ar": "يلتقط",
        "ko": "픽업"
      } +
      {
        "en": "Nearby Vendors",
        "fr": "Vendeurs à proximité",
        "es": "Proveedores cercanos",
        "de": "In der Nähe Anbieter",
        "pt": "Fornecedores próximos",
        "ar": "الباعة القريبون",
        "ko": "주변 공급 업체"
      } +
      {
        "en": "Top Rated",
        "fr": "Les mieux notés",
        "es": "Los más valorados",
        "de": "Bestbewertet",
        "pt": "Mais votado",
        "ar": "أعلى التقييمات",
        "ko": "최고 등급",
        "my": "ထိပ်တန်းအဆင့်သတ်မှတ်သည်"
      };

  String get i18n => localize(this, _t);
}
