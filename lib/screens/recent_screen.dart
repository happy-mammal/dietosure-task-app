import 'package:dietosure_task_app/widgets/custom_chip.dart';
import 'package:dietosure_task_app/widgets/overview_card.dart';
import 'package:dietosure_task_app/widgets/radar_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({Key? key}) : super(key: key);

  @override
  _RecentScreenState createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf2f8fd),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 50,
          backgroundColor: const Color(0xFFf2f8fd),
          leadingWidth: 50.w,
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.grey.shade900,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Icon(
                Icons.search_rounded,
                color: Colors.grey.shade900,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF3e4685),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.w),
              Row(
                children: [
                  const CustomChip(text: "All", isActive: true),
                  SizedBox(width: 20.w),
                  const CustomChip(text: "Income", isActive: false),
                  SizedBox(width: 20.w),
                  const CustomChip(text: "Expense", isActive: false),
                ],
              ),
              SizedBox(height: 25.w),
              Text(
                "Today",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF3e4685),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.w),
              const OverviewCard(
                icon: Icons.mail_rounded,
                title: "Payment",
                description: "Payment from Andrea",
                amount: "\$30.00",
                hasIconBg: false,
              ),
              SizedBox(height: 20.w),
              const Center(child: RadarProfile()),
              SizedBox(height: 30.w),
              Container(
                height: 54.w,
                alignment: Alignment.center,
                child: Text(
                  "See Details",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF3e4685),
                  borderRadius: BorderRadius.circular(30.w),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
