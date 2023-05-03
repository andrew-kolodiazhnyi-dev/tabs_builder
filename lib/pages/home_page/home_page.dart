import 'package:flutter/material.dart';

import '../../utils/tabs_builder.dart';
import 'home_page_tab_type.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///TabBuilder is a simple wrapper for tabs, see my other
      ///project for detailed explanation why it is very useful
      body: TabsBuilder<HomePageTabType>(
        ///Parameter that defines how many tabs you have
        tabs: HomePageTabType.values,
        ///Builder for Tabs
        tabBuilder: (item) => item.getTabTile(),
        ///Builder for TabBarViews
        tabViewBuilder: (item) => item.getTabView(),
        ///Common builder that gives you already builded tabBar, tabViews,
        ///and controller if additional control is needed
        builder: (context, tabBar, tabView, controller) {
          return SafeArea(
            child: Column(
              children: [
                tabBar,
                Expanded(child: tabView),
              ],
            ),
          );
        },
      ),
    );
  }
}
