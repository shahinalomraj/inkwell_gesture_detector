import 'package:flutter/material.dart';
void main(){
  return runApp(MyApp());
}
int clickNumber = 0;
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    clickNumber = clickNumber +1;
                    print('Press Container');
                    print('Click Number is = $clickNumber');
                  });
                },
                child: Container(
                  child: Text(clickNumber.toString(),style: TextStyle(fontSize: 36,color: Colors.white),),

                  color: Colors.green,

                  alignment: Alignment.center,

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}