import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taaconnect_riders/src/presentation/view/earning.dart';
// import 'package:lastmile/src/presentation/history/bloc/history/history_bloc.dart';
// import 'package:lastmile/src/presentation/home/bloc/home/home_bloc.dart';
// import 'package:lastmile/src/presentation/order/bloc/order/order_bloc.dart';
// import 'package:lastmile/src/presentation/profile/bloc/profile/profile_bloc.dart';

import '../../../core/components/component_theme.dart';
// import '../../../injector.dart';
import '../../home/view/home_view.dart';
import '../../profile/view/profile_view.dart';

class NavigationViews extends StatefulWidget {
  const NavigationViews({super.key});

  @override
  State<NavigationViews> createState() => _NavigationViewsState();
}

class _NavigationViewsState extends State<NavigationViews> {
  int _selectedIndex = 0;

  IconData _homeIcon = Icons.home_outlined;

  String _historyIcon = ('assets/icons/truck.png');
  String _orderIcon = ('assets/icons/order.png');
  IconData _profileIcon = Icons.person_outline;

  IconData _defaultHomeIcon = Icons.home_outlined;

  String _defaultHistoryIcon = ('assets/icons/truck.png');

  String _defaultOrderIcon = ('assets/icons/order.png');
  IconData _defaultProfileIcon = Icons.person_outline;
  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        _homeIcon = Icons.home_outlined;
        _historyIcon = _defaultHistoryIcon;
        _orderIcon = _defaultOrderIcon;
        _profileIcon = _defaultProfileIcon;
      } else if (index == 1) {
        _orderIcon = _defaultOrderIcon;
        _profileIcon = _defaultProfileIcon;
        _historyIcon = _defaultHistoryIcon;
        _homeIcon = _defaultHomeIcon;
      } else if (index == 2) {
        _historyIcon = _defaultHistoryIcon;
        _orderIcon = _defaultOrderIcon;
        _profileIcon = _defaultProfileIcon;
        _homeIcon = _defaultHomeIcon;
      } else if (index == 3) {
        _profileIcon = _defaultProfileIcon;
        _orderIcon = _defaultOrderIcon;
        _historyIcon = _defaultHistoryIcon;
        _homeIcon = _defaultHomeIcon;
      }

      // Update the selected index
      _selectedIndex = index;
    });
  }

  // List<Widget> _buildScreens() {
  //   return [
  //     BlocProvider(
  //       create: (_) => sl<HomeBloc>(),
  //       child: const HomeView(),
  //     ),
  //     BlocProvider(
  //       create: (_) => sl<HistoryBloc>(),
  //       child: const HistoryView(),
  //     ),
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _buildPage(_selectedIndex),
        ),
        bottomNavigationBar: SizedBox(
          height: 70.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedIconTheme: IconThemeData(color: colorPrimary),
            selectedLabelStyle: GoogleFonts.nunito(
                color: colorPrimary, fontWeight: FontWeight.w700),
            backgroundColor: colorWhite,
            showUnselectedLabels: true,
            unselectedIconTheme: IconThemeData(
              color: textGray,
            ),
            unselectedItemColor: textGray,
            unselectedLabelStyle: GoogleFonts.nunito(color: textGray),
            selectedItemColor: colorPrimary,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(_homeIcon),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  _orderIcon,
                  width: 16.w,
                  color: _selectedIndex == 1 ? colorPrimary : colorGray,
                ),
                label: 'Earnings',
              ),
              // BottomNavigationBarItem(
              //   icon: Image.asset(
              //     _historyIcon,
              //     width: 16.w,
              //     color: _selectedIndex == 2 ? colorPrimary : colorGray,
              //   ),
              //   label: 'Earnings',
              // ),
              BottomNavigationBarItem(
                icon: Icon(_profileIcon),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }

  // List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
  //   return [
  //     PersistentBottomNavBarItem(
  //       contentPadding: 0,
  //       title: 'Home',
  //       textStyle: const TextStyle(color: colorWhite),
  //       activeColorPrimary: colorPrimary,
  //       icon: SvgPicture.asset(
  //         "assets/icons/home.svg",
  //         height: 20.h,
  //         width: 20.w,
  //         color: colorPrimary,
  //       ),
  //       inactiveIcon: SvgPicture.asset(
  //         "assets/icons/home.svg",
  //         height: 20.h,
  //         width: 20.w,
  //         color: colorWhite,
  //       ),
  //     ),
  //     // PersistentBottomNavBarItem(
  //     //   icon: SvgPicture.asset(
  //     //     "assets/icons/order.svg",
  //     //     color: colorPrimary,
  //     //     height: 20.h,
  //     //     width: 20.w,
  //     //   ),
  //     //   inactiveIcon: SvgPicture.asset(
  //     //     "assets/icons/order.svg",
  //     //     height: 20.h,
  //     //     width: 20.w,
  //     //     color: Theme.of(context).brightness == Brightness.dark
  //     //         ? colorWhite
  //     //         : colorsBlack,
  //     //   ),
  //     // ),
  //     PersistentBottomNavBarItem(
  //       title: 'History',
  //       textStyle: const TextStyle(color: colorWhite),
  //       icon: SvgPicture.asset(
  //         "assets/icons/history.svg",
  //         height: 20.h,
  //         width: 20.w,
  //         color: colorPrimary,
  //       ),
  //       inactiveIcon: SvgPicture.asset(
  //         "assets/icons/history.svg",
  //         height: 20.h,
  //         width: 20.w,
  //         color: colorWhite,
  //       ),
  //     ),
  //   ];
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return PersistentTabView(
  //     context,
  //     screens: _buildScreens(),
  //     items: _navBarsItems(context),
  //     navBarHeight: 65.h,
  //     backgroundColor: colorsBlack,
  //     confineInSafeArea: true,
  //     resizeToAvoidBottomInset: true,
  //     stateManagement: true,
  //     hideNavigationBarWhenKeyboardShows: true,
  //     decoration: const NavBarDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black12,
  //           blurRadius: 0.2,
  //           spreadRadius: 0.2,
  //         ),
  //       ],
  //       // borderRadius: BorderRadius.only(
  //       //     topLeft: Radius.circular(15), topRight: Radius.circular(15)),
  //       colorBehindNavBar: Colors.white,
  //     ),
  //     popAllScreensOnTapOfSelectedTab: true,
  //     popActionScreens: PopActionScreensType.all,
  //     itemAnimationProperties: const ItemAnimationProperties(
  //       duration: Duration(milliseconds: 100),
  //       curve: Curves.ease,
  //     ),
  //     screenTransitionAnimation: const ScreenTransitionAnimation(
  //       animateTabTransition: true,
  //       curve: Curves.ease,
  //       duration: Duration(milliseconds: 200),
  //     ),
  //     navBarStyle: NavBarStyle.style6,
  //   );
  // }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const EarningView();
      case 2:
        return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
