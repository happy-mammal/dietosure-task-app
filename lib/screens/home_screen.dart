import 'package:dietosure_task_app/widgets/info_card.dart';
import 'package:dietosure_task_app/widgets/overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<IconData> _menu = [
    Icons.home_outlined,
    Icons.payment_outlined,
    Icons.add_rounded,
    Icons.attach_money,
    Icons.person_pin,
  ];

  final List<Map> _overviews = [
    {
      'icon': Icons.arrow_upward_rounded,
      'title': 'Sent',
      'info': 'Sending Payment to Clients',
      'amount': '\$150',
    },
    {
      'icon': Icons.arrow_downward_rounded,
      'title': 'Receive',
      'info': 'Receiving Salary from company',
      'amount': '\$250',
    },
    {
      'icon': Icons.money_rounded,
      'title': 'Loan',
      'info': 'Loan for the Car',
      'amount': '\$400',
    },
  ];

  final int _currentSelected = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf2f8fd),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
          child: Column(
            children: [
              const InfoCard(),
              SizedBox(height: 30.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Overview",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF3e4685),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.notifications_none,
                        color: const Color(0xFF3e4685),
                        size: 26.w,
                      ),
                    ],
                  ),
                  Text(
                    "Sept,13,2020",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF3e4685),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.w),
              ...List.generate(
                _overviews.length,
                (index) => OverviewCard(
                  icon: _overviews[index]['icon'],
                  title: _overviews[index]['title'],
                  description: _overviews[index]['info'],
                  amount: _overviews[index]['amount'],
                  hasIconBg: true,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xFFf2f8fd),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _currentSelected,
            items: List.generate(
              _menu.length,
              (index) => BottomNavigationBarItem(
                icon: Icon(_menu[index], color: Colors.grey.shade600),
                activeIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.w),
                  child: Icon(_menu[index], color: Colors.white),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3e4685),
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ),
                label: "",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
