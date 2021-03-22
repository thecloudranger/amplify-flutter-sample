import 'dart:io';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'image_upload_page.dart';

class HomePage extends StatelessWidget {
  // 2
  final VoidCallback shouldLogOut;

  HomePage({Key key, this.shouldLogOut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Amplify.Auth.getCurrentUser(),
      builder: (BuildContext context, AsyncSnapshot<AuthUser> snapshot) {
        final currentUser = snapshot.data;
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            actions: [
              // Log Out Button
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                    child: Icon(Icons.logout), onTap: shouldLogOut),
              )
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("AWS Amplify"),
                Text("User ID ${currentUser?.userId}"),
                Text("User Name ${currentUser?.username}"),
                OutlineButton(
                  child: Text("Gallery View"),
                  onPressed: () => _gotoGalleryScreen(context),
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _gotoGalleryScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => GalleryView(),
      ),
    );
  }    
}
