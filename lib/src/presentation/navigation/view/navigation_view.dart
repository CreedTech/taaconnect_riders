import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taaconnect_riders/src/presentation/earning/view/earning.dart';
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
  String _orderIcon = ('assets/icons/wallet.png');
  IconData _profileIcon = Icons.person_outline;

  IconData _defaultHomeIcon = Icons.home_outlined;

  String _defaultHistoryIcon = ('assets/icons/truck.png');

  String _defaultOrderIcon = ('assets/icons/wallet.png');
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
