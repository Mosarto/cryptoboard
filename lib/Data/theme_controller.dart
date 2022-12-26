import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'theme.dart';

class ThemeController extends GetxController {
  Rx<Theme> theme = Theme(
    primaryColor: const Color(0xFF7D67FF),
    secondaryColor: const Color(0xFF9381FF),
    backgroundColor: const Color(0xFFFFFFFF),
    menuColor: const Color(0xFFF8F7FF),
    lineColor: const Color(0xffF4F2FB),
    profileTextColor: const Color(0xFFC0BBE0),
    profileTextSecondColor: const Color(0xFF352E5B).withOpacity(0.8),
    profileTextThirdColor: const Color(0xFF352E5B),
    profileTextFourthColor: const Color(0xFFA69ED6),
    etheriumCardTextColor: const Color(0xFF9381FF),
    etheriumCardColor: const Color(0xFFF8F7FF),
    etheriumCardBordColor: const Color(0xFF7D67FF),
    newAssetColor: const Color(0xFF7D67FF),
    textAtiveColor: const Color(0xFF352E5B),
    textInativeColor: const Color(0xFFA5A2B8),
    activityBackgroundColor: const Color(0xff7D67FF),
    activityCircleColor: const Color(0xff998AF2),
    activityBarColor: const Color(0xffFFFFFF),
    activityTextColor: const Color(0xffFFFFFF),
    activityTextSecondColor: const Color(0xffC8C2E8),
    extraButtonsText: const Color(0xffFFFFFF),
    extraButtons: const Color(0xff7D67FF),
    criptoBackgroundColor: const Color(0xFFFFFFFF),
    criptoCollumtextMainColor: const Color(0xFF352E5B),
    criptoCollumtextSecondColor: const Color(0xFF352E5B),
    criptoCollumtextThirdColor: const Color(0xFF6E6990),
  ).obs;

  Theme light = Theme(
    primaryColor: const Color(0xFF7D67FF),
    secondaryColor: const Color(0xFF9381FF),
    backgroundColor: const Color(0xFFFFFFFF),
    menuColor: const Color(0xFFF8F7FF),
    lineColor: const Color(0xffF4F2FB),
    profileTextColor: const Color(0xFFC0BBE0),
    profileTextSecondColor: const Color(0xFF352E5B).withOpacity(0.8),
    profileTextThirdColor: const Color(0xFF352E5B),
    profileTextFourthColor: const Color(0xFFA69ED6),
    etheriumCardTextColor: const Color(0xFF9381FF),
    etheriumCardColor: const Color(0xFFF8F7FF),
    etheriumCardBordColor: const Color(0xFF7D67FF),
    newAssetColor: const Color(0xFF7D67FF),
    textAtiveColor: const Color(0xFF352E5B),
    textInativeColor: const Color(0xFFA5A2B8),
    activityBackgroundColor: const Color(0xff7D67FF),
    activityCircleColor: const Color(0xff998AF2),
    activityBarColor: const Color(0xffFFFFFF),
    activityTextColor: const Color(0xffFFFFFF),
    activityTextSecondColor: const Color(0xffC8C2E8),
    extraButtonsText: const Color(0xffFFFFFF),
    extraButtons: const Color(0xff7D67FF),
    criptoBackgroundColor: const Color(0xFFFFFFFF),
    criptoCollumtextMainColor: const Color(0xFF352E5B),
    criptoCollumtextSecondColor: const Color(0xFF352E5B),
    criptoCollumtextThirdColor: const Color(0xFF6E6990),
  );

  Theme dark = Theme(
    primaryColor: const Color(0xFF7D67FF),
    secondaryColor: const Color(0xFF9381FF),
    backgroundColor: const Color(0xFF0B091A),
    menuColor: const Color(0xFF0d0b1c),
    lineColor: const Color(0xffFFFFFF).withOpacity(0.2),
    profileTextColor: const Color(0xFFFFFFFF).withOpacity(0.5),
    profileTextSecondColor: const Color(0xFFFFFFFF).withOpacity(0.8),
    profileTextThirdColor: const Color(0xFFFFFFFF).withOpacity(0.8),
    profileTextFourthColor: const Color(0xFFFFFFFF).withOpacity(0.5),
    etheriumCardTextColor: const Color(0xFFE1DFEC),
    etheriumCardColor: const Color(0xFF131024),
    etheriumCardBordColor: const Color(0xFFFFFFFF).withOpacity(0.1),
    newAssetColor: const Color(0xFFFFFFFF).withOpacity(0.5),
    textAtiveColor: const Color(0xFFE1DFEC),
    textInativeColor: const Color(0xFFE1DFEC).withOpacity(0.5),
    activityBackgroundColor: const Color.fromARGB(255, 17, 14, 34),
    activityCircleColor: const Color(0xff151229),
    activityBarColor: const Color(0xffFFFFFF).withOpacity(0.2),
    activityTextColor: const Color(0xffFFFFFF),
    activityTextSecondColor: const Color(0xffFFFFFF).withOpacity(0.5),
    extraButtonsText: const Color(0xff0D0B1C),
    extraButtons: const Color(0xffFFFFFF),
    criptoBackgroundColor: const Color(0xFF110E22),
    criptoCollumtextMainColor: const Color(0xFFFFFFFF).withOpacity(0.5),
    criptoCollumtextSecondColor: const Color(0xFFFFFFFF),
    criptoCollumtextThirdColor: const Color(0xFFFFFFFF).withOpacity(0.5),
  );

  void setLight() {
    theme.value = light;
  }

  void setDark() {
    theme.value = dark;
  }
}
