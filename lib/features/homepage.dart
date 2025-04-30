import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/features/all_routine/routinepage.dart';
import 'package:project_110/features/home/homescreen.dart';
// import 'package:project_110/features/loginpage/loginpage.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AllRoutinePage(),
    Container(child: Text("data2")),
    Container(child: Text("data3")),
    // Container(child: Text("data4")),
  ];

  // function for updating Index

  void updatePageIndex(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 250),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: updatePageIndex,
          children: _widgetOptions,
        ),
      ),
      bottomNavigationBar: bottomNavigationBarWIdget(),
    );
  }

  Container bottomNavigationBarWIdget() {
    return Container(
      margin: EdgeInsets.all(12.w),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(24.w),

        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.2),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        // backgroundColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 25.w,
        selectedLabelStyle: AppTextStyles.bodyLarge(),
        showUnselectedLabels: true,
        backgroundColor: AppColors.bottomNavBackgroundColor,
        currentIndex: _selectedIndex,
        onTap: updatePageIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.secondaryTextColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: "Transections",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(radius: 30.r, child: Icon(Icons.add)),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Client"),
        ],
      ),
    );
  }
}
