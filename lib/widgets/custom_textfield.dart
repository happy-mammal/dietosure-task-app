import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isObscure;

  const CustomTextfield({
    Key? key,
    required this.controller,
    required this.label,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.isObscure,
  }) : super(key: key);

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.poppins(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          TextField(
            controller: widget.controller,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.visiblePassword,
            obscureText: widget.isObscure,
            obscuringCharacter: "●",
            showCursor: false,
            style: GoogleFonts.poppins(
              fontSize: 17,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              isCollapsed: true,
              contentPadding: EdgeInsets.zero,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              prefixIconConstraints: const BoxConstraints(),
              suffixIconConstraints: const BoxConstraints(),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10.w, top: 4.w),
                child: Icon(
                  widget.prefixIcon,
                  color: Colors.grey.shade700,
                  size: 22.w,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 4.w),
                child: Icon(
                  widget.suffixIcon,
                  color: Colors.grey.shade700,
                  size: 24.w,
                ),
              ),
            ),
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
