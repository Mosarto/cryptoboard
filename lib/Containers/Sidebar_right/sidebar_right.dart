import 'package:cryptoboard/Data/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SidebarRight extends StatefulWidget {
  const SidebarRight({Key? key}) : super(key: key);

  @override
  State<SidebarRight> createState() => _SidebarRightState();
}

class _SidebarRightState extends State<SidebarRight> {
  ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        width: 269,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        color: themeController.theme.value.menuColor,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Trader Profile',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: themeController.theme.value.textAtiveColor,
                    ),
                  ),
                  const SizedBox(height: 36),
                  Container(
                    height: 69,
                    width: 69,
                    decoration: BoxDecoration(
                      color: themeController.theme.value.menuColor,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/png/perfil.png',
                        ),
                      ),
                      border: Border.all(
                        color: themeController.theme.value.primaryColor,
                        width: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Han Ji Pyeong',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: themeController.theme.value.textAtiveColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: themeController.theme.value.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            Text(
              'Account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: themeController.theme.value.textAtiveColor,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Joined',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextColor,
                  ),
                ),
                Text(
                  'June 22, 2020',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextSecondColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Assets Value',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextColor,
                  ),
                ),
                Text(
                  '\$1,328,240.00',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextSecondColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: 1,
              color: themeController.theme.value.lineColor,
            ),
            const SizedBox(height: 36),
            Text(
              'Assets',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: themeController.theme.value.textAtiveColor,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  'Bitcoin',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextColor,
                  ),
                ),
                const Spacer(),
                Text(
                  '23.5',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextThirdColor,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'BTC',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextFourthColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Ethereum',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextColor,
                  ),
                ),
                const Spacer(),
                Text(
                  '190.45',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextThirdColor,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'ETH',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextFourthColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Doge',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextColor,
                  ),
                ),
                const Spacer(),
                Text(
                  '239,500',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextThirdColor,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'DOGE',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextFourthColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Ripple',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextColor,
                  ),
                ),
                const Spacer(),
                Text(
                  '65,100',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextThirdColor,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'XRP',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: themeController.theme.value.profileTextFourthColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Text(
              'More assets...',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: themeController.theme.value.primaryColor,
              ),
            ),
            const Spacer(),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: 56,
              decoration: BoxDecoration(
                color: themeController.theme.value.extraButtons,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/trade.svg',
                    color: themeController.theme.value.extraButtonsText,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Trade Now',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: themeController.theme.value.extraButtonsText,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
