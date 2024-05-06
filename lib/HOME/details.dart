import 'package:flutter/material.dart';
import 'package:monday/utils/List.dart';
class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height:200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(productlist[selectindex]['image'])
                )
              ),
            ),
            Container(
              height: 100,
              width: 360,

            )
          ],
        ),
    );
  }
}
