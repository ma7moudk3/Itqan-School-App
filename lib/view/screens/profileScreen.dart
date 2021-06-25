import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:itqan_school/helpers/constants.dart';
import 'package:itqan_school/view/widgets/primaryText.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/personal.jpg',
                ),
                radius: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryText(
                    text: 'الطالب',
                    fontSize: 14,
                  ),
                  PrimaryText(
                    text: ' محمود حسن أحمد',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ],
              ),
              SizedBox(
                width: 120,
              ),
              Icon(Icons.settings)
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: Container(
            width: ScreenUtil().screenWidth,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    PrimaryText(
                      text: 'العمر',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 14,
                    ),
                    PrimaryText(
                      text: '25 عام',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    PrimaryText(
                      text: 'عدد أجزاء الحفظ',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 14,
                    ),
                    PrimaryText(
                      text: '15 جزء',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    PrimaryText(
                      text: 'دورة الأحكام',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 14,
                    ),
                    PrimaryText(
                      text: 'دورة أحكام مبتدئة بتقدير ممتاز',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    PrimaryText(
                      text: 'البرنامج',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 14,
                    ),
                    PrimaryText(
                      text: 'برنامج التثبيت في شهرين',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(
                      height: 3,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    PrimaryText(
                      text: 'الإنجازات',
                      alignment: Alignment.topRight,
                      textColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              // Get.to(BookDetailsScreen());
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PrimaryText(
                                    text: 'سورة الحجرات',
                                    textColor: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  PrimaryText(
                                    text: '21/5/2021',
                                    textColor: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
