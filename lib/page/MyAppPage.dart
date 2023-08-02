import 'package:caddy_com_manager/page/HomePage.dart';
import 'package:caddy_com_manager/page/LookPage.dart';
import 'package:caddy_com_manager/page/MangementPage.dart';
import 'package:caddy_com_manager/page/SchedulingPage.dart';
import 'package:caddy_com_manager/page/SettingPage.dart';
import 'package:caddy_com_manager/page/ShopPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);


  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {


  int _selectedIndex=0; //바텀 네비게이션바 인덱스

  /*final List<Widget> _navIndex=[   //body 페이지들 , 연결할 페이지들을 리스트<위젯>으로 정의
    HomePage()
    LookPage(),
    ManagementPage(),
    ShopPage(),
    SettingPage(),
    SchedulingPage(),
  ];*/

  void _onNavTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  //_onButtonPressed 공부하기
  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        elevation: 0, //그림자 농도
        iconTheme: IconThemeData(color: Colors.white,size: 25),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new,size: 22,),),

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

      drawerEdgeDragWidth: 20,
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
// 고뇌한 부분 body 부분인데 공부하기

      body: _selectedIndex == 0
          ? HomePage(onButtonPressed: _onButtonPressed) // Show HomePage
          : _selectedIndex == 1
          ? LookPage() // Show LookPage
          : _selectedIndex ==2
          ? ManagementPage()
          : _selectedIndex ==3
          ? ShopPage()
          : _selectedIndex ==4
          ? SettingPage()
          : _selectedIndex ==5
          ? SchedulingPage()
          : Container(), //인덱스에 해당하는 페이지 표시
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.grey,     
          showUnselectedLabels: true,          //선택하지 않은 항목의 레이블을 표시할지 여부를 결정
          type: BottomNavigationBarType.fixed,

          items: const[
            BottomNavigationBarItem(

              icon: Icon(Icons.home_outlined,size: 35,),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.reorder_outlined,size: 35,),
              label: '보기',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined,size: 35),
              label: '관리',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,size: 35),
              label: '샵',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined,size: 35),
              label: '설정',
            ),

          ],

        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
      ),


    );
  }


  }



