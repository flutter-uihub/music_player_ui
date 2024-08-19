import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:gap/gap.dart';
import 'package:styled_widget/styled_widget.dart';

import 'neumorphic_circle.dart';
import 'neumorphic_progress.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 36, 40),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(46, 51, 55, 1),
              const Color.fromARGB(255, 33, 36, 40),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(80),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context);
              },
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: NeumorphicCircleView(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'PLAYING NOW',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          inherit: false,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: NeumorphicCircleView(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.queue_music_rounded,
                        size: 28,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(40),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: NeumorphicCircleView(
                    borderWidth: 24,
                    borderColor: Color.fromARGB(255, 41, 41, 41),
                    height: 300,
                    width: 300,
                    child: Image.asset(
                      'assets/uihub/music_player_ui/music_disk.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Gap(40),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 45,
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Hymn of the Weekend',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.65),
                    inherit: false,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 35,
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Feat. Some Band',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    inherit: false,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Gap(20),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 15,
                    alignment: Alignment.topLeft,
                    child: Text(
                      '1:17',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        inherit: false,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: NeumorphicProgressView(
                    progress: 0.5,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 15,
                    alignment: Alignment.topRight,
                    child: Text(
                      '2:46',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        inherit: false,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: NeumorphicCircleView(
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.fast_rewind_rounded,
                      size: 28,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: NeumorphicCircleView(
                    height: 62,
                    width: 62,
                    color: Color.fromRGBO(230, 59, 16, 1),
                    shape: NeumorphicShape.concave,
                    child: Icon(
                      Icons.pause_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: NeumorphicCircleView(
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.fast_forward_rounded,
                      size: 28,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ).padding(horizontal: 40),
            Gap(20),
          ],
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
