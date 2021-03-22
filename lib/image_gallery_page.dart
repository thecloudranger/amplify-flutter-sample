import 'package:flutter/material.dart';

// 1
class GalleryView extends StatelessWidget {
  // 2
  final VoidCallback shouldLogOut;

  GalleryView({Key key, this.shouldLogOut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        actions: [
          // Log Out Button
          Padding(
            padding: const EdgeInsets.all(8),
            child:
                GestureDetector(child: Icon(Icons.logout), onTap: shouldLogOut),
          )
        ],
      ),
      // 5
      body: Container(),
    );
  }
}