import 'package:flutter/material.dart';
import 'package:toonflix/widgets/card.dart';

import 'widgets/button.dart';

void main() {
  // runApp()은 하나의 argument를 요구하는데 그게 Widget이다.
  // Widget: UI를 만드는 레고블럭, Widget을 만든다는 건 class를 만든다는 것
  runApp(App());
}
// 모든게 다 Widget
// 클래스를 Widget으로 만들기 위해 flutter SDK에 있는 3개의
// core Widget 중에 하나를 상속 받아야함.
// root Widget은 두 개의 옵션 중 하나를 return 해야함. (material 앱, cupertino 앱)
// material = 구글 디자인 시스템, cupertino는 애플 디자인 시스템

class App extends StatelessWidget {
  // build() 메서드는 flutter가 실행함. build 메서드의 return 값을 화면에 출력
  // build() 메서드는 Widget의 UI를 만듦
  @override
  Widget build(BuildContext context) {
    // 모바일 앱의 모든 화면은 scaffold가 필요함
    return MaterialApp(
      // 우리 앱의 home
      // Scaffold: 화면의 구성 및 구조에 관한 것들을 갖고 있는 Widget
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        // Column은 children이라는 list가 있음 -> 여러개의 child를 가질 수 있음
        // Column은 한가지 위에 다른 걸 올리기 위해 사용
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Clone Coding_JB',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Designed by Alexandr V',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 23,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5 194 382',
                  style: TextStyle(
                    color: Colors.white.withOpacity(1),
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      bgColor: Color(0xFFF2B33A),
                      text: 'Transfer',
                      textColor: Colors.black,
                    ),
                    Button(
                      bgColor: Color(0xFF1F2123),
                      text: 'Request',
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_sharp,
                  isInverted: false,
                  offset: 1,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_sharp,
                  isInverted: true,
                  offset: 2,
                ),
                const CurrencyCard(
                  name: 'Dollor',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_sharp,
                  isInverted: false,
                  offset: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
