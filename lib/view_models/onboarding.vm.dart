import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:fuodz/constants/app_images.dart';
import 'package:fuodz/constants/app_routes.dart';
import 'package:fuodz/services/auth.service.dart';
import 'base.view_model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fuodz/translations/onboarding.i18n.dart';

class OnboardingViewModel extends MyBaseViewModel {
  OnboardingViewModel(BuildContext context) {
    this.viewContext = context;
  }

  final PageController pageController = PageController();

  final List<OnBoardModel> onBoardData = [
    OnBoardModel(
      title: "Bem-Vindos".i18n,
      description: "Aqui você encontra os melhores profissionais!".i18n,
      imgUrl: AppImages.onboarding1,
    ),
    OnBoardModel(
      title: "Serviços e Produtos".i18n,
      description:
          "Tudo na palma da sua mão".i18n,
      imgUrl: AppImages.onboarding2,
    ),
    OnBoardModel(
      title: "Pronto pra começar?".i18n,
      description:
          "Get your ordered food/item or parcel delivered at a very fast, cheap and reliable way".i18n,
      imgUrl: AppImages.onboarding3,
    ),
  ];

  void onDonePressed() async {
    //
    await AuthServices.firstTimeCompleted();
    viewContext.navigator.pushNamedAndRemoveUntil(
      AppRoutes.homeRoute,
      (route) => false,
    );
  }
}
