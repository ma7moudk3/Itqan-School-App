import 'package:flutter/material.dart';
import 'package:itqan_school/helpers/constants.dart';
import 'package:itqan_school/view/widgets/primaryText.dart';

class MonthlyPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffolodColor,
      appBar: AppBar(
        title: Text('الخطة الشهرية'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     PrimaryText(
                //       text: 'الإنجاز',
                //       textColor: secondaryColor,
                //       fontSize: 14,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     PrimaryText(
                //       text: 'التاريخ',
                //       textColor: secondaryColor,
                //       fontSize: 14,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     PrimaryText(
                //       text: 'إتمام الإنجاز',
                //       textColor: secondaryColor,
                //       fontSize: 14,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ],
                // ),
              ),
              Expanded(
                child: ListView.builder(
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 2,
                  //   childAspectRatio: MediaQuery.of(context).size.width /
                  //       (MediaQuery.of(context).size.height * 0.83),
                  // ),
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        // Get.to(BookDetailsScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top: 10, right: 15, left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              text: 'سورة الحجرات',
                              textColor: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            Center(
                              child: PrimaryText(
                                text: '21/5/2021',
                                textColor: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.check_circle_outline_rounded,
                              color: primaryColor,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
