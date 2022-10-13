import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Hacker's game"),
          TextButton(
            onPressed: () async {
              // print("On Click!");
              final Uri _url = Uri.parse("https://vk.com/infolab_club");
              if (!await launchUrl(_url)) {
                throw 'Could not launch $_url';
              }
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black
            ),
            child: const Text('Hack')
          )
        ],
      ),
    );
  }
}

void main() {
  print('Hello world!');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('Hacked')),
      body: const MyBody()
    )
  ));
}