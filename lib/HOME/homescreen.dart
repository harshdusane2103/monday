import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monday/utils/List.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('homescreen'),

      ),
      body: Column(
        children: [...List.generate(productlist.length, (index) =>
          InkWell(
            onTap: () {
              selectindex=index;
              Navigator.of(context).pushNamed('/det');
            },
            child: Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(productlist[index]['image']),
                )
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 1,
                    child: Container(
                      height: 50,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(productlist[index]['name'],style: TextStyle(color:Colors.white,fontSize: 24),),
                          Text(productlist[index]['price'].toString(),style: TextStyle(color:Colors.white,fontSize: 24),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        )
        ],
      ),
    );
  }
}
