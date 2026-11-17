import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyShared extends StatefulWidget {
  const MyShared({super.key});
  @override
  State<MyShared> createState() {
    return _MySharedState();
  }
}

class _MySharedState extends State<MyShared> {
  late SharedPreferences preft;
  final TextEditingController _data = TextEditingController();
  String isData = '';

  @override
  void dispose() {
    _data.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _data,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                child: const Text("Save"),
                onPressed: () {
                  savedata();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: isData,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text("Get Value"),
                onPressed: () {
                  retriveData();
                },
              ),
              ElevatedButton(
                child: const Text("Delete Value"),
                onPressed: () {
                  deleteData();
                },
              )
            ],
          )),
    );
  }
  Future<void> savedata() async {
    preft = await SharedPreferences.getInstance();
    preft.setString("TextContoh", _data.text);
    _data.clear();
  }

  Future<void> retriveData() async {
    preft = await SharedPreferences.getInstance();
    setState(() {
      isData = preft.getString("TextContoh").toString();
    });
  }

  Future<void> deleteData() async {
    preft = await SharedPreferences.getInstance();
    preft.remove("TextContoh");
    setState(() {
      isData = "";
    });
  }
}