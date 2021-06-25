import 'package:flutter/material.dart';
import 'package:itqan_school/helpers/constants.dart';
import 'package:itqan_school/view/widgets/primaryText.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffolodColor,
      appBar: AppBar(
        title: Text('المكتبة'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height * 0.70),
        ),
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              //  Get.to(BookDetailsScreen());
            },
            child: Container(
              padding: EdgeInsets.only(top: 0, right: 15, left: 15),
              child: Column(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('images/book.png', fit: BoxFit.cover),
                    ),
                  ),
                  PrimaryText(
                    text: 'كتاب الماجريات',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    alignment: Alignment.centerRight,
                    textColor: secondaryColor,
                  ),
                  PrimaryText(
                    text: 'إبراهيم عمر السكران',
                    fontSize: 13,
                    alignment: Alignment.centerRight,
                  )
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
