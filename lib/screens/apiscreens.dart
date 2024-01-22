import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiScreens extends StatefulWidget {
  const ApiScreens({Key? key}) : super(key: key);

  @override
  State<ApiScreens> createState() => _ApiScreensState();
}

class _ApiScreensState extends State<ApiScreens> {
  Map<String, dynamic> finalResponse = {};
  Future<void> apicall() async {
    http.Response response;
    response = await http.get(
      Uri.parse("https://api.apis.guru/v2/list.json"),
    );
    // log(response.body);
    if (response.statusCode == 200) {
      try {
        setState(() {
          finalResponse = json.decode(response.body);
        });
      } catch (e) {
        log('Error decoding JSON:  : $e');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    apicall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Api Screen",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email : ${finalResponse['1forge.com']["versions"]["0.0.1"]["info"]["contact"]["email"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Name : ${finalResponse['1forge.com']["versions"]["0.0.1"]["info"]["contact"]["name"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Url : ${finalResponse['1forge.com']["versions"]["0.0.1"]["info"]["contact"]["url"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Description : ${finalResponse['1forge.com']["versions"]["0.0.1"]["info"]["description"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Title : ${finalResponse['1forge.com']["versions"]["0.0.1"]["info"]["title"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Version : ${finalResponse['1forge.com']["versions"]["0.0.1"]["info"]["version"]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
