import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ScreenPrivacyConditions extends StatelessWidget {
  const ScreenPrivacyConditions({
    required this.screenName,
    required this.screenData,
    super.key,
  });
  final String screenName;
  final String screenData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          screenName,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Html(data: screenData),
        )),
      ),
    );
  }
}
