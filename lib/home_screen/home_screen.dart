import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime birthday = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: SafeArea(
          bottom: false,
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  _TopPart(
                    birthday: birthday,
                    callback: onheartPressed,
                  ),
                  _BottomPart(),
                ],
              )),
        ));
  }

  void onheartPressed() {
    showCupertinoDialog(
      //barrierDismissible : 바깥 누르면 닫힘
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            //정렬할 위치 모를 경우 -> 위젯 최대 크기 차지
            color: Colors.white,
            height: 300,
            child: CupertinoDatePicker(
              initialDateTime: DateTime(DateTime.now().year,
                  DateTime.now().month, DateTime.now().day),
              maximumDate: DateTime(DateTime.now().year, DateTime.now().month,
                  DateTime.now().day),
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (value) {
                setState(() {
                  birthday = value;
                });
              },
            ),
          ),
        );
      },
    );
  }
}

class _TopPart extends StatelessWidget {
  VoidCallback? callback;
  DateTime birthday;
  _TopPart({required this.birthday, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration elapsed = DateTime.now().difference(birthday);

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'BirthDay',
            style: TextStyle(
              fontFamily: "NanumGothic",
              fontSize: 50,
            ),
          ),
          Column(
            children: [
              Text('내 생일',
                  style: TextStyle(
                    fontFamily: "NanumGothic",
                    fontSize: 30,
                  )),
              Text('${birthday.year}.${birthday.month}.${birthday.day}',
                  style: TextStyle(
                    fontFamily: 'NanumGothic',
                    fontSize: 20,
                  )),
            ],
          ),
          IconButton(
            iconSize: 50,
            onPressed: callback,
            icon: Icon(
              Icons.star,
            ),
          ),
          Text(
            'D+${elapsed.inDays}',
            style: TextStyle(
                fontFamily: 'NanumGothic',
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('assets/images/thinking.png'),
    );
  }
}
