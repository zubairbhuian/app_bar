import 'package:flutter/material.dart';
import 'package:hospital_ui/custom_clip_path.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: const Text("My app"),
        centerTitle: true,
        flexibleSpace: Container(
            decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          gradient: LinearGradient(
              colors: [Colors.red, Colors.pink],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        )),
      ),
      body: Center(
        child: ClipPath(
          clipper: CustomClipPth(),
          child: Container(
              // width: 200,
              height: 218,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 45, 202, 50),
                Color.fromARGB(255, 174, 238, 26)
              ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
              child: const Center(
                child: Text('This is demo text'),
              )),
        ),
      ));
}
