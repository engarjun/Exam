import 'package:flutter/material.dart';

class Bodys1 extends StatelessWidget {
  const Bodys1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task of body!'),
        titleSpacing: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
        toolbarOpacity: 1,
        toolbarHeight: 60,
        elevation: 10,
      ),
      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(40),
        
        decoration: BoxDecoration(
          color: Colors.blue,
              border: Border.all(color: Colors.black,width: 6)
        ),
        child: Image.network('https://e7.pngegg.com/pngimages/530/787/png-clipart-lord-hanuman-hanuman-temple-connaught-place-ramayana-book-four-kishkindha-sundara-kanda-hanuman-desktop-wallpaper-religion-thumbnail.png'),
      ),
    );
  }
}
