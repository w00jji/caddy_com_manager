
import 'package:caddy_com_manager/page/SchedulingPage.dart';

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class LookPage extends StatefulWidget {
  const LookPage({Key? key}) : super(key: key);

  //final Function(int) onButtonPressed; //1.
  //const HomePage({Key? key, required this.onButtonPressed}) : super(key: key);//2.
  @override
  State<LookPage> createState() => _LookPageState();
}

class _LookPageState extends State<LookPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug 안보이게하기
      supportedLocales: [ //언어 로컬 목록
        const Locale('ko','KR'),
        const Locale('en','US'),
      ],
      localizationsDelegates: [ //번역 파일을 직접 불러오는 현지화 기능
        GlobalMaterialLocalizations.delegate, //현지화된 문자열의 값 등을 제공
        GlobalWidgetsLocalizations.delegate, //위젯 라이브러리의 기본 텍스트 방향
        GlobalCupertinoLocalizations.delegate //언어별 하위 클래스에서 날짜 시간 형식 이외의 추가 문자열 현지화
      ],
      locale: const Locale("ko"),
      title: ('Calendar'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: SfCalendar(
            view: CalendarView.month,
            monthViewSettings: MonthViewSettings(showAgenda: false), //하단 일정 보여주는 코드 지금은 안보이게함
            onTap: (CalendarTapDetails details){
              if(details.targetElement ==CalendarElement.calendarCell){
                DateTime selectedDate =details.date!;
                //(context as Element).findAncestorWidgetOfExactType<HomePage>()?.onButtonPressed(5);
                Navigator.push(
                  context,
                MaterialPageRoute(
                    builder: (context) => SchedulingPage(),
                ),
                );
              }
            },
          ),
        ),

      ),
    );
  }
}




