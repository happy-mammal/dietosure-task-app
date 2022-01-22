import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadarAvatar extends StatefulWidget {
  const RadarAvatar({Key? key}) : super(key: key);

  @override
  _RadarAvatarState createState() => _RadarAvatarState();
}

class _RadarAvatarState extends State<RadarAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.w,
      alignment: Alignment.center,
      child: CircleAvatar(
        radius: 27.w,
        backgroundImage: const AssetImage("assets/profile2.jpg"),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.w),
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
