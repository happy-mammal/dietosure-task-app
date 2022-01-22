import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatefulWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu_rounded,
                color: const Color(0xFF3e4685),
                size: 25.w,
              ),
              Icon(
                Icons.more_vert_rounded,
                color: const Color(0xFF3e4685),
                size: 25.w,
              ),
            ],
          ),
          SizedBox(height: 10.w),
          CircleAvatar(
            backgroundColor: const Color(0xFF3e4685),
            radius: 45.w,
          ),
          SizedBox(height: 10.w),
          Text(
            "Hira Riaz",
            style: GoogleFonts.poppins(
              color: const Color(0xFF3e4685),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "UI/UX Designer",
            style: GoogleFonts.poppins(
              color: Colors.grey.shade900,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 20.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: _infoCols("\$8900", "Income"),
              ),
              SizedBox(height: 55.w, child: const VerticalDivider()),
              Padding(
                padding: EdgeInsets.only(right: 10.w, left: 10.w),
                child: _infoCols("\$5500", "Expenses"),
              ),
              SizedBox(height: 55.w, child: const VerticalDivider()),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: _infoCols("\$890", "Loan"),
              ),
            ],
          ),
          SizedBox(height: 40.w),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.w),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFeaeffb),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
    );
  }

  _infoCols(String primary, String secondary) {
    return Column(
      children: [
        Text(
          primary,
          style: GoogleFonts.inter(
            color: const Color(0xFF3e4685),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 4.w),
        Text(
          secondary,
          style: GoogleFonts.inter(
            color: Colors.grey.shade900,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
