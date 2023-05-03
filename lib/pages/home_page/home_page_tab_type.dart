import 'package:flutter/material.dart';

import 'tabs/tab_1.dart';
import 'tabs/tab_2.dart';
import 'tabs/tab_3.dart';

///Here in this enum you have to specify your tabs 
enum HomePageTabType {
  tab1,
  tab2,
  tab3;

  ///Method that return Tab label depending on enum value
  ///Here is possible to use localization
  String _getLabel() {
    switch (this) {
      case HomePageTabType.tab1:
        return 'Tab1';
      case HomePageTabType.tab2:
        return 'Tab2';
      case HomePageTabType.tab3:
        return 'Tab3';
    }
  }

  /// Method that build Tab with styles
  Widget getTabTile() {
    return Tab(
      iconMargin: EdgeInsets.zero,
      height: 24,
      child: Text(
        _getLabel(),
        textAlign: TextAlign.left,
        maxLines: 1,
      ),
    );
  }

  ///Method that return TabBarView Widget depending on enum value
  Widget getTabView() {
    switch (this) {
      case HomePageTabType.tab1:
        return const Tab1();
      case HomePageTabType.tab2:
        return const Tab2();
      case HomePageTabType.tab3:
        return const Tab3();
    }
  }
}
