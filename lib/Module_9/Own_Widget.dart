import 'package:flutter/material.dart';
class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 280,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(24)
            ),
            child: Center(
              child: Column(

                children: [
                  ClipRect(
                    child: Stack(
                      children: [
                        Image.network('https://www.3ponts.edu/template/cache/7b/french-immersion-school-021-7b44d8ab.jpeg')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Text(''),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
