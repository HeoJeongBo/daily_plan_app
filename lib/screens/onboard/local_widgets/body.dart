import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map> splashData = [
    {
      "text": "설정한 일정에 알람이 울리도록 도와줍니다.",
      "image": 'assets/images/main_image1.svg',
    },
    {
      "text": "설정한 시간에 알람이 울려\n계획하는데 도움이 됩니다.",
      "image": "assets/images/main_image2.svg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index: index)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.h),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/LOGIN');
                      },
                      child: Text(
                        "시작하기",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        minimumSize: Size(300.w, 50.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    print(index);
    return AnimatedContainer(
      duration: Duration(microseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 10.h,
      width: currentPage == index ? 30.w : 10.w,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.cyan : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30.h),
        Text(
          "하루 알람.",
          style: TextStyle(
            fontSize: 45.sp,
            color: Colors.cyan,
            fontWeight: FontWeight.w900,
          ),
        ),
        Container(
          height: 50.h,
          child: Text(
            '$text',
            style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 60.h),
        SvgPicture.asset(
          image,
          height: 150.h,
          width: 300.sw,
        )
      ],
    );
  }
}
