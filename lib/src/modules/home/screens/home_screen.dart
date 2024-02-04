import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../radio/blocs/radio_blocs_listener.dart';
import '../../radio/blocs/radio_player_cubit/radio_player_cubit.dart';
import '../../radio/models/radio_station_model.dart';
import '../../radio/screens/all_radio_stations_screen.dart';
import '../../radio/screens/favorite_stations_screen.dart';
import '../../radio/widgets/radio_controls_bottom_sheet.dart';
import '../models/enums.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTabIndex = 0;

  HomeTab get _currentTab => _tabsOrder[_currentTabIndex];

  static const _tabsOrder = [
    HomeTab.allRadioStations,
    HomeTab.favoriteRadioStations,
  ];

  void _setCurrentTabIndex(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  String _getTabAppbarTitle(HomeTab tab) => switch (tab) {
    HomeTab.allRadioStations => 'All Stations',
    HomeTab.favoriteRadioStations => 'Favorite Stations',
  };

  String _getTabLabel(HomeTab tab) => switch (tab) {
    HomeTab.allRadioStations => 'All',
    HomeTab.favoriteRadioStations => 'Favorite',
  };

  @override
  Widget build(BuildContext context) {
    return RadioBlocsListener(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _getTabAppbarTitle(_currentTab),
          ),
        ),
        body: switch (_currentTab) {
          HomeTab.allRadioStations => const AllRadioStationsScreen(),
          HomeTab.favoriteRadioStations => const FavoriteStationsScreen(),
        },
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentTabIndex,
          onDestinationSelected: _setCurrentTabIndex,
          destinations: _tabsOrder.map((tab) => NavigationDestination(
            icon: tab.getIcon(),
            selectedIcon: tab.getIcon(true),
            label: _getTabLabel(tab),
          )).toList(),
          // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        ),

        bottomSheet: Builder(
            builder: (context) {
              final selectedStation = context.select<RadioPlayerCubit, RadioStation?>(
                  (cubit) => cubit.state.currentStation,
              );

              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                switchInCurve: Curves.fastOutSlowIn,
                switchOutCurve: Curves.fastOutSlowIn,
                child: selectedStation == null
                    ? const SizedBox()
                    : RadioControlsBottomSheet(
                  radioStation: selectedStation,
                ),
                transitionBuilder: (child, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    axis: Axis.vertical,
                    axisAlignment: -1.0,
                    child: child,
                  );
                },
              );
            }
        ),
      ),
    );
  }
}
