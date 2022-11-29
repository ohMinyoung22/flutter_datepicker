import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  _TopPart(),
                  _BottomPart(),
                ],
              )),
        ));
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
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
              Text('2003.02.22',
                  style: TextStyle(
                    fontFamily: 'NanumGothic',
                    fontSize: 20,
                  )),
            ],
          ),
          IconButton(
            iconSize: 50,
            onPressed: () {},
            icon: Icon(
              Icons.star,
            ),
          ),
          Text(
            'D+?',
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
