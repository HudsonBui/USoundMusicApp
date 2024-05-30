import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:usound/assets/colors.dart';
import 'package:usound/assets/fonts.dart';
import 'package:usound/screens/main_screem/tab_screen/dashboard.dart';
import 'package:usound/widgets/list_songs/horizontal_list_song.dart';
import 'package:usound/widgets/list_songs/song.dart';
import 'package:usound/widgets/list_songs/song_large.dart';
import 'package:usound/widgets/list_songs/themed_playlist.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      print('Vi tri: $index');
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _activedScreen = const Dashboard();

    if (_selectedPageIndex == 1) {
      _activedScreen = Container(
        child: Text(
          'Favorite',
          style: textLargeStyle,
        ),
      );
    }
    if (_selectedPageIndex == 2) {
      _activedScreen = Container(
        child: Text(
          'Upload',
          style: textLargeStyle,
        ),
      );
    }
    if (_selectedPageIndex == 3) {
      _activedScreen = Container(
        child: Text(
          'Library',
          style: textLargeStyle,
        ),
      );
    }
    if (_selectedPageIndex == 4) {
      _activedScreen = Container(
        child: Text(
          'Person',
          style: textLargeStyle,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: textMediumStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
        backgroundColor: solidBackgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: const BoxDecoration(
          color: solidBackgroundColor,
        ),
        child: _activedScreen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectedPage(index);
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
        backgroundColor: bottomNavigationBarColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: subtitleColor,
        unselectedItemColor: Colors.white,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
            backgroundColor: bottomNavigationBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
            backgroundColor: bottomNavigationBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: '',
            backgroundColor: bottomNavigationBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: '',
            backgroundColor: bottomNavigationBarColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            backgroundColor: bottomNavigationBarColor,
          ),
        ],
      ),
    );
  }
}
