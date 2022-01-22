import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewCard extends StatefulWidget {
  final IconData icon;
  final String title, description, amount;
  final bool hasIconBg;
  const OverviewCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.amount,
    required this.hasIconBg,
  }) : super(key: key);

  @override
  _OverviewCardState createState() => _OverviewCardState();
}

class _OverviewCardState extends State<OverviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.w),
      margin: EdgeInsets.symmetric(vertical: 10.w),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            child: Icon(
              widget.icon,
              color: widget.hasIconBg
                  ? Colors.grey.shade900
                  : const Color(0xFF3e4685),
              size: 30.w,
            ),
            decoration: widget.hasIconBg
                ? BoxDecoration(
                    color: const Color(0xFFe6e7f9),
                    borderRadius: BorderRadius.circular(18.w),
                  )
                : null,
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.poppins(
                  color: Colors.grey.shade900,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 270.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.description,
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      widget.amount,
                      style: GoogleFonts.poppins(
                        color: widget.hasIconBg
                            ? Colors.grey.shade900
                            : const Color(0xFF3e4685),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
}
