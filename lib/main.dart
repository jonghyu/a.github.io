import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//homepage 메인
//Secondpage 메뉴

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Text('주식자산 n배 늘리기', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.amber,
            ), //자산차트
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  )
                ],
              ),
            ), //테마
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  )
                ],
              ),
            ), //테마
            Container(
                height: 120,
                width: double.infinity,
                color: Colors.black38,
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                  ),
                )) //더보기
          ],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
            child: Text("종목추천")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
            child: Text("종목수정")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
            child: Text("목표수익률수정")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page4()),
              );
            },
            child: Text("금일수익률조회")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page5()),
              );
            },
            child: Text("금일 수익조건 종목 및 횟수조회")),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('종목 추천', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 120,
        width: double.infinity,
        color: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {}, //거래량
              icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            ),
            IconButton(
              onPressed: () {}, //거래대금
              icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            ),
            IconButton(
              onPressed: () {}, //VI발동
              icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            )
          ],
        ),
        //종목별 데이터 column
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('종목 수정', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('목표 수익률 수정', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('금일 수익률 조회', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('금일 수익조건 종목 및 횟수조회', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}
