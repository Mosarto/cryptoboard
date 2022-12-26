import 'package:cryptoboard/Data/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Dashboard  >  Home',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: themeController.theme.value.textInativeColor,
                ),
              ),
              const SizedBox(height: 54),
              Row(
                children: [
                  Text(
                    'ASSETS',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: themeController.theme.value.textAtiveColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'More Assets',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: themeController.theme.value.primaryColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  SvgPicture.asset('assets/svg/arrow_right.svg'),
                ],
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bitcoin',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: themeController.theme.value.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 158,
                        width: 269,
                        padding: const EdgeInsets.only(
                          top: 13,
                          bottom: 16,
                          left: 14,
                          right: 14,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.4, 1),
                            colors: <Color>[
                              Color.fromARGB(157, 148, 129, 255),
                              Color(0xff7D67FF),
                            ],
                            tileMode: TileMode.mirror,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff7D67FF).withOpacity(0.4),
                              offset: const Offset(5, 10),
                              blurRadius: 50,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '1,820',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                        wordSpacing: 1.60,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 69,
                                  width: 106,
                                  alignment: Alignment.bottomCenter,
                                  margin: const EdgeInsets.only(top: 15),
                                  child: Image.asset(
                                    'assets/png/Chart.png',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Profit',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        '+ 2,87%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3EDD87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Loss',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        '- 0,17%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffF46565),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Netral',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        '2,70%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffCABBB2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ethereum',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: themeController.theme.value.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 158,
                        width: 269,
                        padding: const EdgeInsets.only(
                          top: 13,
                          bottom: 16,
                          left: 14,
                          right: 14,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: themeController.theme.value.etheriumCardColor,
                          border: Border.all(
                            color: themeController
                                .theme.value.etheriumCardBordColor,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: themeController
                                            .theme.value.etheriumCardTextColor,
                                      ),
                                    ),
                                    Text(
                                      '1,820',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                        wordSpacing: 1.60,
                                        color: themeController
                                            .theme.value.etheriumCardTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 69,
                                  width: 106,
                                  alignment: Alignment.bottomCenter,
                                  margin: const EdgeInsets.only(top: 15),
                                  child: Image.asset(
                                    'assets/png/Chart2.png',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Profit',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: themeController
                                              .theme.value.textAtiveColor,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        '+ 2,87%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3EDD87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Loss',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: themeController
                                              .theme.value.textAtiveColor,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        '- 0,17%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffF46565),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Netral',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: themeController
                                              .theme.value.textAtiveColor,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        '0,00%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffCABBB2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: themeController.theme.value.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 158,
                        width: 269,
                        padding: const EdgeInsets.only(
                          top: 13,
                          bottom: 16,
                          left: 14,
                          right: 14,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: themeController.theme.value.etheriumCardColor,
                          border: Border.all(
                            color: themeController
                                .theme.value.etheriumCardBordColor,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/new.svg',
                              color: themeController.theme.value.newAssetColor,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'New Asset',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color:
                                    themeController.theme.value.newAssetColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  Text(
                    'ACTIVITY',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: themeController.theme.value.textAtiveColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'More Activity',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: themeController.theme.value.primaryColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  SvgPicture.asset('assets/svg/arrow_right.svg'),
                ],
              ),
              const SizedBox(height: 36),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 232,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeController.theme.value.activityBackgroundColor,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -155,
                        bottom: -230,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          width: 307,
                          height: 307,
                          decoration: BoxDecoration(
                            color:
                                themeController.theme.value.activityCircleColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -130,
                        right: -40,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color:
                                themeController.theme.value.activityCircleColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 22,
                            left: 35,
                            right: 41,
                            bottom: 26,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      'Transactions',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Amount',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Total',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Status',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Date',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                height: 1,
                                color: themeController
                                    .theme.value.activityTextSecondColor,
                              ),
                              const SizedBox(height: 18),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.asset(
                                            'assets/png/ethereum.png'),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        'Ethereum Purchased',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: themeController
                                              .theme.value.activityTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    '0.0154 ETH',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeController
                                          .theme.value.activityTextColor,
                                    ),
                                  ),
                                  Text(
                                    '\$10.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: themeController
                                          .theme.value.activityTextSecondColor,
                                    ),
                                  ),
                                  Text(
                                    'Pending',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: themeController
                                          .theme.value.activityTextSecondColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      'February 21, 2021',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.asset(
                                            'assets/png/bitcoin.png'),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        'Bitcoin Purchased',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: themeController
                                              .theme.value.activityTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 24,
                                  ),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      '0.3 BTC',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: themeController
                                            .theme.value.activityTextColor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '\$140.00',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: themeController
                                          .theme.value.activityTextSecondColor,
                                    ),
                                  ),
                                  Text(
                                    'Done',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: themeController
                                          .theme.value.activityTextColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      'February 14, 2021',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.asset(
                                            'assets/png/bitcoin.png'),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        'Bitcoin Purchased',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: themeController
                                              .theme.value.activityTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 24,
                                  ),
                                  SizedBox(
                                    width: 72,
                                    child: Text(
                                      '0.025 BTC',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: themeController
                                            .theme.value.activityTextColor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '\$80.50',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: themeController
                                          .theme.value.activityTextSecondColor,
                                    ),
                                  ),
                                  Text(
                                    'Done',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: themeController
                                          .theme.value.activityTextColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      'January 14, 2021',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: themeController.theme.value
                                            .activityTextSecondColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 38),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeController.theme.value.criptoBackgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 22,
                      left: 35,
                      right: 41,
                      bottom: 26,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Cryptocurrency',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: themeController
                                      .theme.value.criptoCollumtextMainColor,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Updated',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: themeController
                                      .theme.value.criptoCollumtextMainColor,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Change',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: themeController
                                      .theme.value.criptoCollumtextMainColor,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Price',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: themeController
                                      .theme.value.criptoCollumtextMainColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          height: 1,
                          color: themeController
                              .theme.value.activityTextSecondColor,
                        ),
                        const SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child:
                                        Image.asset('assets/png/bitcoin.png'),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'BITCOIN',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeController.theme.value
                                          .criptoCollumtextSecondColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '1 minute ago',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: themeController
                                      .theme.value.criptoCollumtextThirdColor,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset('assets/svg/arrow_down.svg'),
                                  const Text(
                                    '2.64%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFD5252),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$12,729',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: themeController
                                      .theme.value.criptoCollumtextThirdColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child:
                                        Image.asset('assets/png/ethereum.png'),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'ETHEREUM',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeController.theme.value
                                          .criptoCollumtextSecondColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '2 minute ago',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: themeController
                                      .theme.value.criptoCollumtextThirdColor,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset('assets/svg/arrow_down.svg'),
                                  const Text(
                                    '4.32%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFD5252),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$6,242',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: themeController
                                      .theme.value.criptoCollumtextThirdColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
