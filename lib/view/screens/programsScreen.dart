import 'package:flutter/material.dart';
import 'package:itqan_school/helpers/constants.dart';
import 'package:itqan_school/view/widgets/primaryText.dart';

class ProgramsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffolodColor,
      appBar: AppBar(
        title: Text('البرامج القرآنية'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height * 0.70),
          ),
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                // Get.to(BookDetailsScreen());
              },
              child: Container(
                //  padding: EdgeInsets.only(top: 25),
                margin: EdgeInsets.all(10),
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
                    Container(
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "images/test.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: PrimaryText(
                        text: 'برنامج الإتقان لتفسير القرآن',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.topRight,
                        textColor: secondaryColor,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: PrimaryText(
                        text:
                            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص',
                        fontSize: 11,
                        alignment: Alignment.topRight,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
