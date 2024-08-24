import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:rubber_app_bar/rubber_app_bar.dart';
import 'package:shagra_club_app/core/constants/icon_assets.dart';
import 'package:shagra_club_app/features/main/presentation/widgets/exit_show_dialogue.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/theme/colors.dart';
import '../../../account/presentation/account_screen.dart';
import '../../../home/presentation/home_screen.dart';
import '../../../offers/presentation/offers_screen.dart';
import '../../../sports/presentation/sports_screen.dart';
import '../../../tracking/presentation/tracking_screen.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  PersistentTabController? controller;
  int? selectedIndex;
  //Sizes of Icons Of Bottom Nav Bar
  static const double kSizeBottomNavigationBarHeight = 70.0;
  static const double kSizeBottomNavigationBarIconHeight = 30.0;

  final List<String> screenNames = [
    'Home',
    'Sports',
    'Offers',
    'Tracking',
    'Account'
  ];

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RubberAppBar(
        transitionCurve: Curves.ease,
        height: 95,
        maxExtent: 500,
        mode: RubberAppBarMode.movementDirection,
        builder: (extending) => Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: MyColors.appColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  ImageAssets.appLogoImage,
                  height: 70.h,
                ),
                const Spacer(),
                Text(
                  screenNames[controller?.index ?? 0],
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active_outlined,
                    size: 25,
                    color: Colors.amberAccent,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => const ExitShowDialog(),
                    );
                  },
                  icon: Image.asset(IconAssets.exit, height: 25.h),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PersistentTabView(
        context,
        controller: controller,
        navBarHeight: kSizeBottomNavigationBarHeight,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: MyColors.kColorBNBBackground,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarStyle: NavBarStyle.style19,
        onItemSelected: (final index) {
          setState(
            () {
              controller?.index = index;

              if (index == 1) {}
            },
          );
        },
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const SportsScreen(),
      const OffersScreen(),
      const TrackingScreen(),
      const AccountScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.homeIcon,
              ),
            ),
          ],
        ),
        inactiveIcon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.homeDeactiveIcon,
              ),
            ),
          ],
        ),
        title: ('Home'),
        activeColorPrimary: MyColors.kColorBNBActiveTitleColor,
        inactiveColorPrimary: MyColors.kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.sportsIcon,
              ),
            ),
          ],
        ),
        inactiveIcon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.sportsDeactiveIcon,
              ),
            ),
          ],
        ),
        title: ('Sports'),
        activeColorPrimary: MyColors.kColorBNBActiveTitleColor,
        inactiveColorPrimary: MyColors.kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.offersIcon,
              ),
            ),
          ],
        ),
        inactiveIcon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.offersDeactiveIcon,
              ),
            ),
          ],
        ),
        title: ('Offers'),
        activeColorPrimary: MyColors.kColorBNBActiveTitleColor,
        inactiveColorPrimary: MyColors.kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.trackingIcon,
              ),
            ),
          ],
        ),
        inactiveIcon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.trackingDeactiveIcon,
              ),
            ),
          ],
        ),
        title: ('Tracking'),
        activeColorPrimary: MyColors.kColorBNBActiveTitleColor,
        inactiveColorPrimary: MyColors.kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.accountIcon,
              ),
            ),
          ],
        ),
        inactiveIcon: Column(
          children: [
            SizedBox(
              height: kSizeBottomNavigationBarIconHeight,
              child: Image.asset(
                IconAssets.accountDeactiveIcon,
              ),
            ),
          ],
        ),
        title: ('Account'),
        activeColorPrimary: MyColors.kColorBNBActiveTitleColor,
        inactiveColorPrimary: MyColors.kColorBNBDeactiveTitleColor,
      ),
    ];
  }
}
