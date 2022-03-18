import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Hello!",
        "fr": "Parcourez différents fournisseurs",
        "es": "Bienvenidos",
        "de": "Durchsuchen Sie verschiedene Anbieter",
        "pt": "Bem-Vindos",
        "ar": "تصفح من خلال البائعين المختلفين",
        "ko": "다양한 공급 업체 찾아보기"
      } +
      {
        "en": "Here you find the best professionals!",
        "fr":
            "Obtenez votre repas / nourriture / articles préférés de divers fournisseurs",
        "es":
            "¡Aquí encuentras a los mejores profesionales!",
        "de":
            "Holen Sie sich Ihr Lieblingsessen / Essen / Artikel von verschiedenen Anbietern",
        "pt":
            "Aqui você encontra os melhores profissionais!",
        "ar": "احصل على وجبتك / طعامك / أصنافك المفضلة من مختلف البائعين",
        "ko": "다양한 공급 업체에서 좋아하는 식사 / 음식 / 아이템을 가져옵니다."
      } +
      {
        "en": "Services and Products",
        "fr": "Discuter avec le vendeur / livreur",
        "es": "Servicios y Productos",
        "de": "Chatten Sie mit dem Verkäufer / Lieferjungen",
        "pt": "Serviços e Produtos",
        "ar": "الدردشة مع البائع / فتى التوصيل",
        "ko": "공급 업체 / 배송 소년과 채팅"
      } +
      {
        "en":
            "Everything in the palm of your hand",
        "fr":
            "Appeler / discuter avec le vendeur / livreur pour une mise à jour sur votre commande et plus",
        "es":
            "Todo en la palma de tu mano",
        "de":
            "Rufen Sie an / chatten Sie mit dem Verkäufer / Lieferjungen, um Informationen zu Ihrer Bestellung und mehr zu erhalten",
        "pt":
            "Tudo na palma da sua mão",
        "ar": "اتصل / تحدث مع البائع / مندوب التوصيل لتحديث طلبك والمزيد",
        "ko": "주문 등에 대한 업데이트를 위해 공급 업체 / 배송 소년과 전화 / 채팅"
      } +
      {
        "en": "Ready to get started?",
        "fr": "Livraison simplifiée",
        "es": "¿Listo para comenzar?",
        "de": "Lieferung leicht gemacht",
        "pt": "Pronto pra começar?",
        "ar": "أصبح التسليم سهلاً",
        "ko": "간편한 배송"
      } +
      {
        "en":
            "Find the service you need..",
        "fr":
            "Faites livrer votre nourriture / article ou colis commandé de manière très rapide, bon marché et fiable",
        "es":
            "Encuentra el servicio que necesitas..",
        "de":
            "Lassen Sie sich Ihre bestellten Lebensmittel / Artikel oder Pakete sehr schnell, günstig und zuverlässig liefern",
        "pt":
            "Encontre o serviço que precisa..",
        "ar":
            "احصل على الطعام / العنصر أو الطرد الذي طلبته بطريقة سريعة جدًا ورخيصة وموثوقة",
        "ko": "주문한 음식 / 품목 또는 소포를 매우 빠르고 저렴하며 신뢰할 수있는 방법으로 배달하십시오."
      } +
      {
        "en": "Done",
        "fr": "Fait",
        "es": "Hecho",
        "de": "Getan",
        "pt": "Vamos lá",
        "ar": "منجز",
        "ko": "끝난"
      } +
      {
        "en": "Next",
        "fr": "Suivant",
        "es": "próximo",
        "de": "Nächster",
        "pt": "Próximo",
        "ar": "التالي",
        "ko": "다음"
      } +
      {
        "en": "Skip",
        "fr": "Sauter",
        "es": "Saltar",
        "de": "Überspringen",
        "pt": "Pular",
        "ar": "يتخطى",
        "ko": "건너 뛰기"
      };

  String get i18n => localize(this, _t);
}
