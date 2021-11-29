/* 
  1. 플러터의 material 라이브러리 임포트 
  (플러터 프레임워크, 즉 SDK에 포함된 모든 기본 위젯과 material 디자인 테마 요소들을
  사용하려면 반드시 필요하다, 여기서 material 디자인이란 모바일, 데스크탑 그외 
  다양한 디바이스를 아우르는 일관된 디자인을 위해서 구글이 제공하는 가이드라인이다)
*/
import 'package:flutter/material.dart';

/*
  =>, fat arrow라 불리는 이 두줄 화살표는 코딩을 좀 더 간결하게 하기 위한 기호라고 보면 된다.   
  아래 코드에서는 main 함수가 다른 함수를 호출한다는 의미로 사용되었다. 

  runApp()은 플러터에서 최상위에 위치하는 함수이다. 그리고 runApp 함수는 반드시 위젯을
  argument로 가져야 한다. 쉽게 설명하면, runApp 함수는 호출될때마다 함수에 전달되는 어떠한 값을
  가져야 하는데, 그 값이 구체적으로 위젯이어야 한다는 뜻이다. 그래서 runApp이 호출될 때 
  구체적으로 가지는 값, 위젯을 argument라고 한다. 
   
  플러터에서 함수의 괄호 안에는 위젯이라는 요소가 반드시 들어온다고 이해하면 된다. 
*/
void main() => runApp(MyApp());

/*
  여기서 MyApp()은 플러터에서 제공하는 기본 위젯이 아니라, 커스텀 위젯 즉 우리가 직접 
  만들어야 하는 위젯이다. 이름이 정해져있지 않다. 최상위 함수인 runApp이 최초로 불러온
  위젯인만큼 screen layout을 최초로 빌드하는 역할을 한다. 

  따라서, 어떤 변화나 움직임이 없는 정적인 위젯이 되어야 한다. 
  그래서 Stateless 위젯으로 지정한다. (단축키: stl 입력 후 엔터)
*/
class MyApp extends StatelessWidget {
  /*
    모든 커스텀 위젯은 또 다른 위젯을 리턴하는 build 라는 함수를 가지고 있다.
    그리고 현재의 MyApp 위젯은 materialApp 이라는 위젯을 리턴하고 있다.  
    여기까지가 최소한의 기본 틀은 만든 것이다. 

    이제 본격적으로 앱을 디자인해야 하는데, 이때 필요한 위젯이 Material App이다.
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 여기서 MaterialApp 위젯은 title이라는 문자열을 argument로 가지고 있다고 볼 수 있다.
      // MaterialApp 내의 타이틀은 앱을 총칭하는 이름이다. 가령 스마트폰 상에서 최근 사용한 리스트를
      // 보여줄 때 MaterialApp에서 설정한 타이틀이 보여진다.
      title: 'First app',
      theme: ThemeData(
        // ThemeData는 앱의 기본적인 디자인 테마를 지정하는 위젯이다. 이 역시도 argument를 가진다.
        // primarySwatch는 특정 색상이 아닌 특정 색의 음영들을 기본 색상으로 지정하는 역할을 한다.
        primarySwatch: Colors.blue,
      ),
      // home은 앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로이다.
      home: MyHomePage(),
    );
  }
}

/* 
  커스텀 위젯을 만들 때엔 항상 Stateless Widget으로 만들지, Stateful Widget으로 만들지를 
  먼저 고민해봐야 한다. 만약 위젯 내에 데이터를 받거나 체크박스처럼 변할 수 있는 요소가 
  하나라도 있으면 Stateful Widget으로 지정해야 한다. 
*/
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold는 사전적으로 무언가를 혼자 해낼 수 있도록 발판을 마련해주다는 의미를 내포하기도 한다.
      // 만약 Scaffold 위젯이 없다면 그 어떠한 요소들도 앱 화면에 배치할 수 없다. 그만큼 매우 중요한 위젯이다.
      // 이제부터는 본격적으로 앱 화면에 보여질 앱 페이지를 디자인할 수 있다.
      appBar: AppBar(
        title: Text('My First app!'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
