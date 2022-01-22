import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatefulWidget {
  final String text;
  final bool isActive;

  const CustomChip({
    Key? key,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.w),
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          color: widget.isActive ? Colors.white : Colors.grey.shade900,
          fontSize: 14,
        ),
      ),
      decoration: BoxDecoration(
        color: widget.isActive ? const Color(0xFF3e4685) : Colors.white,
        borderRadius: BorderRadius.circular(22.w),
        boxShadow: widget.isActive
            ? null
            : const [
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
