
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

ButtonsTabBar tab_bar() {
  return ButtonsTabBar(
      unselectedLabelStyle: TextStyle(
          color: Colors.white
      ),
      backgroundColor: Color(0xffe94212),
      unselectedBackgroundColor: Color(0xff1f1f1f),
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      unselectedBorderColor: Colors.red,
      radius:80,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),

      tabs: [
        Tab(
          text: 'For you',
        ),
        Tab(
          text: 'Songs',
        ),
        Tab(
          text: 'Playlist',
        ),
        Tab(
          text: 'Folders',
        ),
        Tab(
          text: 'Albums',
        ),
        Tab(
          text: 'Artists',
        ),
        Tab(
          text: 'Genres',
        ),
      ]);
}