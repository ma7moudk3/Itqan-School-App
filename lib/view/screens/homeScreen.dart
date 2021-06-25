import 'package:flutter/material.dart';
import 'package:itqan_school/helpers/constants.dart';
import 'package:itqan_school/view/widgets/primaryText.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffolodColor,
      appBar: AppBar(
        title: Text('الرئيسية'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView.builder(
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
              padding: EdgeInsets.only(top: 25),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PrimaryText(
                      text: 'إعلان عن حلقة تحفيظ جديدة',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      alignment: Alignment.centerRight,
                      textColor: secondaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PrimaryText(
                      text:
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص',
                      fontSize: 13,
                      alignment: Alignment.topRight,
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset("images/test.jpeg"),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
