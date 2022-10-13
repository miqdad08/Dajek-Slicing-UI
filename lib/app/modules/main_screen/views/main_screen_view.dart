import 'package:dajek/app/modules/home/views/home_view.dart';
import 'package:dajek/app/modules/notification_screen/views/notification_screen_view.dart';
import 'package:dajek/app/modules/profil_screen/views/profil_screen_view.dart';
import 'package:dajek/app/modules/transaction/views/transaction_view.dart';
import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../assets/icons.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int _selectedIndex = 0;

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return HomeView();
        break;
      case 1:
        return NotificationScreenView();
        break;
      case 2:
        return TransactionView();
        break;
      case 3:
        return ProfilScreenView();
        break;
      default:
        return HomeView();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: grey1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconHome.notification,),
            label: 'Notif',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconHome.transaction),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconHome.profil2),
            label: 'Transaction',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: red1,
        onTap: _onItemTapped,
      ),
    );
  }
}