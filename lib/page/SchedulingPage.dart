import 'package:flutter/material.dart';

class SchedulingPage extends StatefulWidget {
  const SchedulingPage({Key? key}) : super(key: key);

  @override
  State<SchedulingPage> createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        elevation: 0, //그림자 농도
        iconTheme: IconThemeData(color: Colors.white,size: 25),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new),),

        /*PreferredSize(child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
            Text('asdasda'),
          ],
          ),
        ), preferredSize: Size.fromHeight(80))*/
        bottom: PreferredSize(preferredSize: Size(48, 50),
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            width: 300,height: 48,
            padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
            child: TextFormField(

              decoration: InputDecoration(

                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16), //가운데 정렬
                  hintText: '경주신라CC',
                  suffixIcon: FloatingActionButton(onPressed: () {},
                    backgroundColor: Colors.blue,
                    child: Text('등록',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                  prefixIcon: Icon(Icons.g_mobiledata,color: Colors.green,size: 50,)
              ),),
          ),


        ),
        ),
      body: Center(child: Text("일정 페이지")),
    );
  }
}
