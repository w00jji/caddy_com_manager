import 'package:caddy_com_manager/page/MyAppPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp()); //앱 시작시켜주세용~ main페이지 구동
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // main 페이지 디자인은 여기서 한다
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'CADDY',
        /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    useMaterial3: true,),*/
        home: MyAppPage()/*Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0.0,  //AppBar 그림자 없애기

            iconTheme: IconThemeData(color: Colors.white,size: 25),

            //actions -> 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용

            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new),
                iconSize: 20,
                color: Colors.white),

            bottom: PreferredSize(
              preferredSize: Size(48,48),

              child: Container(
                width: 300,
                height: 48,
                padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    hintText: '경주신라CC',
                    suffixIcon: FloatingActionButton(onPressed: () {},backgroundColor: Colors.blue,child:
                      Text('등록',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                      prefixIcon: Icon(Icons.g_mobiledata,color: Colors.green,size: 50
                        ,),
                  ),
                ),
              )
            ),
            /*title: Text('CADDYCOM', style: TextStyle(color: Colors.white60, letterSpacing: 4),//자간,
                ),
            centerTitle: true*/  // 제목을 중간으로 가게 해준다.
            /*title:Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('CADDYCOM',style: TextStyle(
            color: Colors.blueAccent,letterSpacing: 4 //자간,
          ),)
          ],)*/

          ),
          drawerEdgeDragWidth: 50,
          endDrawer: Drawer( child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/.png'),
                ),
                accountName: Text('CADDYCOM'),
                accountEmail: Text('call0@naver.com'),
                onDetailsPressed: () {
                  print('Hello, My Hope World!');
                },
                decoration: BoxDecoration(
                  color: Colors.blueAccent[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              ListTile(
                //간단한 위젯이나 icon 등을 앱바 타이블 왼쪽에 배치할 때 사용한다. 앱바 말고 다론 곳에서도 자주 사용한다.
                //listTile 위와 동일 원리
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('홈',style: TextStyle(fontWeight: FontWeight.bold)
                ),
                onTap: () {
                  print('Home button is clicked!');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('설정',style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  print('settings button is clicked!');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: () {
                  print('Q&A button is clicked!');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),),
         // extendBodyBehindAppBar: true, //body 위에 AppBar 만들기 경계실선이 생겨서 없애는 용도로 사용함
          body: MainBody(),
          resizeToAvoidBottomInset : false, //body가 키보드를 눌렀을 때안올라가게 해줌
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 68,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_outlined,
                            size: 35,
                            color: Colors.grey,
                          )),
                      Text(
                        '홈',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.reorder_outlined,
                              size: 35, color: Colors.grey)),
                      Text('보기', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.assignment_outlined,
                              size: 35, color: Colors.grey)),
                      Text('관리', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined,
                              size: 35, color: Colors.grey)),
                      Text('샵', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings_outlined,
                              size: 35, color: Colors.grey)),
                      Text('설정', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )*/);
  }
}





