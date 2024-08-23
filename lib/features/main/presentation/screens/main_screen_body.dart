import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:shagra_club_app/core/constants/icon_assets.dart';

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
  PersistentTabController? _controller;
  int? selectedIndex;
  //Sizes of Icons Of Bottom Nav Bar
  static const double kSizeBottomNavigationBarHeight = 70.0;
  static const double kSizeBottomNavigationBarIconHeight = 30.0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
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
              _controller?.index = index; // THIS IS CRITICAL!! Don't miss it!

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
