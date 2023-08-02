import 'package:caddy_com_manager/page/LookPage.dart';
import 'package:caddy_com_manager/page/MyAppPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
//final Function 공부  required this 공부
  final Function(int) onButtonPressed; //1.
  const HomePage({Key? key, required this.onButtonPressed}) : super(key: key);//2.

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      //처음에 Mypage.dart에 지정했는데 안돼서 HomePage에 지정하니 잘되네 나중에 생각해보자 ^^
      body: MainBody(),
        //onButtonPressed: widget.onButtonPressed,

        

    );
  }
}


class MainBody extends StatelessWidget {

  const MainBody({Key? key}) : super(key: key);
  //final Function(int) onButtonPressed;
  //const MainBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,

        padding: EdgeInsets.all(5),
        child: Column(children: [
            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.next_plan_outlined, color: Colors.white),
                    iconSize: 50,
                    onPressed: () {}
                  ),
                  Text('사이트 연동', style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.grading_outlined, color: Colors.white),
                    iconSize: 50,
                    onPressed:() {
                      // Call the callback function with index 1
                      // The callback function is received from HomePage's constructor
                      // and can be accessed through the context.
                      (context as Element).findAncestorWidgetOfExactType<HomePage>()?.onButtonPressed(1);
                      //여기부분 몰라여 공부하세용
                    }, /*() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LookPage(),));
                    },*/
                  ),
                  Text('전체배정', style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.wysiwyg_outlined, color: Colors.white),
                    iconSize: 50,
                    onPressed: () {},
                  ),
                  Text('예외배정', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),

          //두번쨰 박스
          SizedBox(height: 20),

          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              width: 380, height: 160, //흰 네모 박스 크기
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("07월13일 목요일 2부 12:41 M 김정은 배정",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ]),

                    Divider(
                      color: Colors.blue,
                      height: 5,
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.green,
                            size: 40,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("7월13일 일정이 5건 중",
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("일정이 4건남았습니다.",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ]),
                    Divider(color: Colors.blue, height: 5), //구분선
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("밸리",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900)),
                              Text("2",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900))
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("레이크",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900)),
                              Text("2",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900))
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("마운틴",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900)),
                              Text("0",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900))
                            ])
                      ],
                    ),
                  ]),
            ),
          ),
          // 두번째 큰 틀

          SizedBox(height: 10),
          Flexible(
              flex: 7,
              child: Container(
                height: double.infinity,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월8일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월9일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월10일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월11일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월12일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월13일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월14일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월15일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                        Divider(color: Colors.blue, height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("5월16일",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("일정이 110건 중",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("배정이 20건 남았습니다.",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900))
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              ))

          /*Flexible(flex: 7,child:   Column(
              children: [
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  width: 380,
                  height: 400,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("d"),
                        // 추가적인 컨텐츠
                      ],
                    ),

                  ),)
              ],
            ))*/
        ] //마지막 3번째 박스 틀

        ) // 큰 Column 틀

    ); //큰 틀;
  }
}