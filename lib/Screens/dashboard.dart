import 'package:cryptoboard/Containers/Sidebar_left/sidebar_left.dart';
import 'package:cryptoboard/Containers/Sidebar_right/sidebar_right.dart';
import 'package:cryptoboard/Containers/home/home.dart';
import 'package:cryptoboard/Data/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          color: themeController.theme.value.backgroundColor,
          child: Row(
            children: [
              const SidebarLeft(),
              const Expanded(
                child: Home(),
              ),
              Container(
                width: 1,
                height: double.infinity,
                color: const Color(0xffC1BDD4).withOpacity(0.12),
              ),
              const SidebarRight(),
            ],
          ),
        ),
      ),
    );
  }
}
