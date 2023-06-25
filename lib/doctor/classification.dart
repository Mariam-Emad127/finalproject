import 'package:flutter/material.dart';
class classification  extends StatefulWidget {
  const classification({super.key}) ;

  @override
  State<classification> createState() => _State();
}

class _State extends State<classification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xff10E4EA),
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
       elevation: 0,
      ),
    );
  }
}
