import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:main_flutter/widgets/button.dart';

void main() {
  //아래의 코드가 first widget 즉 첫 화면을 뜻한다.
  runApp(App());
}

//일반 클래스인 App를 wiget으로 만들기 위해 flutter의 core widget중 하나인 StatelessWidget을 상속 받았다
//화면에 widget을 띄어준 다는 효과가 있다.
class App extends StatelessWidget {
  const App({super.key});

  @override
  //부모 class에 이미 있는 메서드를 override한다는 뜻
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          //symmetric메서드는 수직 padding과 수평 padding을 지정 할 수 있게 해준다.
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                //SizedBox widget에 ,놓는거 잊지 않기 왜냐하면 여전히 List안에 있기 때문이다.
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey, Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.7),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 120),
              Text(
                "Total Balanc",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.8),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "\$5 194 482",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "Transfer",
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: "Request",
                    backgroundColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wallet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 30,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Euro",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "6 456",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "EUR",
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.8),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//pading은 글자가 너무 한쪽으로 치우쳐 지지 않게 하기 위해 필요하다. 즉 끝에서 거리를 만들 때 사용.