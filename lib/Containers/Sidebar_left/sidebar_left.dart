import 'package:cryptoboard/Data/menu.dart';
import 'package:cryptoboard/Data/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SidebarLeft extends StatefulWidget {
  const SidebarLeft({Key? key}) : super(key: key);

  @override
  State<SidebarLeft> createState() => _SidebarLeftState();
}

class _SidebarLeftState extends State<SidebarLeft> {
  ThemeController themeController = Get.find<ThemeController>();

  bool light = false;

  List<bool> selected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 269,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      color: themeController.theme.value.menuColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 60,
              vertical: 44,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 30,
                  child: Stack(
                    children: [
                      Positioned(
                        child: SvgPicture.asset(
                          'assets/svg/logo-1.svg',
                        ),
                      ),
                      Positioned(
                        left: 5.8,
                        child: SvgPicture.asset(
                          'assets/svg/logo-2.svg',
                          color: themeController.theme.value.textAtiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Crypto',
                    style: TextStyle(
                      fontFamily: 'DMSans',
                      color: themeController.theme.value.textAtiveColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Board',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          color: themeController.theme.value.textAtiveColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          for (final option in meunuOptions) ...[
            InkWell(
              onTap: () {
                setState(() {
                  select(option.id);
                });
              },
              child: Container(
                height: 20,
                padding: const EdgeInsets.only(left: 60),
                margin: const EdgeInsets.only(
                  bottom: 36,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      option.icon,
                      color: selected[option.id]
                          ? themeController.theme.value.textAtiveColor
                          : themeController.theme.value.textInativeColor,
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      option.title,
                      style: TextStyle(
                        color: selected[option.id]
                            ? themeController.theme.value.textAtiveColor
                            : themeController.theme.value.textInativeColor,
                      ),
                    ),
                    const Spacer(),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      height: selected[option.id] ? 18 : 9,
                      width: selected[option.id] ? 3 : 0,
                      decoration: BoxDecoration(
                        color: themeController.theme.value.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          bottomLeft: Radius.circular(2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                value: light,
                activeColor: themeController.theme.value.primaryColor,
                onChanged: (bool value) {
                  setState(
                    () {
                      light = value;
                      if (light == true) {
                        themeController.setDark();
                      } else {
                        themeController.setLight();
                      }
                    },
                  );
                },
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 32,
            ),
            child: AnimatedContainer(
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
                    'assets/svg/guide.svg',
                    color: themeController.theme.value.extraButtonsText,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Guide',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: themeController.theme.value.extraButtonsText,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
