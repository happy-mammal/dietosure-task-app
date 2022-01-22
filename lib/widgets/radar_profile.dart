import 'package:dietosure_task_app/widgets/radar_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadarProfile extends StatefulWidget {
  const RadarProfile({Key? key}) : super(key: key);

  @override
  _RadarProfileState createState() => _RadarProfileState();
}

class _RadarProfileState extends State<RadarProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350.w,
          height: 350.w,
          alignment: Alignment.center,
          child: Container(
            width: 300.w,
            height: 300.w,
            alignment: Alignment.center,
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: Container(
                width: 170.w,
                height: 170.w,
                alignment: Alignment.center,
                child: Container(
                  width: 120.w,
                  height: 120.w,
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50.w,
                    backgroundImage: const AssetImage("assets/profile1.jpg"),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150.w),
                    border: Border.all(
                      width: 4.w,
                      color: const Color(0xFF444c85),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFeef6ff),
                  borderRadius: BorderRadius.circular(150.w),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFd5e6fb),
                borderRadius: BorderRadius.circular(150.w),
                border: Border.all(
                  width: 3.w,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150.w),
              border: Border.all(
                width: 3.w,
                color: const Color(0xFFebeefb),
              ),
            ),
          ),
        ),
        Container(
          width: 350.w,
          height: 350.w,
          alignment: Alignment.center,
          child: Column(
            children: [
              const RadarAvatar(),
              SizedBox(height: 75.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  RadarAvatar(),
                  RadarAvatar(),
                ],
              ),
              SizedBox(height: 65.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  RadarAvatar(),
                  RadarAvatar(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
