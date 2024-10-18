import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: buildAppBar(),

        // body: bunny(),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 100, height: 100, color: Colors.green,),
            // Container(width: 100, height: 100, color: Colors.blue,)
            Expanded(child: Container(color: Colors.blue))
          ],
        )

        
      ),
    ),
  );
}

Center bunny() {
  return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Column 크기를 자식들의 크기만큼만 줄임
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 이미지가 들어가는 박스
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // 둥근 모서리
                border: Border.all(
                  color: Color.fromARGB(255, 255, 137, 137),
                  width: 2,
                ),
              ),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // 이미지도 둥근 모서리로
                child: Image.asset(
                  'assets/bunny.png', // PNG 파일 경로
                  fit: BoxFit.cover, // 이미지를 컨테이너에 맞춤
                ),
              ),
            ),
            
            SizedBox(height: 20), // 이미지와 텍스트 박스 사이 간격 추가
            
            // 텍스트가 있는 박스
            Container(
              width: 350,
              height: 160,
              padding: EdgeInsets.all(16), // 컨테이너 내부 여백
              decoration: BoxDecoration(
                color: Colors.white, // Container의 배경색
                borderRadius: BorderRadius.circular(20), // 둥근 모서리 반경 설정
                border: Border.all(
                  color: Color.fromARGB(255, 255, 137, 137), // 테두리 색상
                  width: 2, // 테두리 두께
                ),
              ),
              alignment: Alignment.center, // 컨테이너 내부의 텍스트를 가운데로 정렬
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 정렬
                crossAxisAlignment: CrossAxisAlignment.center, // 가로 중앙 정렬
                children: const [
                  Text(
                    '염버니',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(201, 27, 3, 3),
                    ),
                  ),
                  
                  SizedBox(height: 10), // 텍스트 사이에 여백 추가
                  Text(
                    '[토끼 포켓몬]\n뛰어다니며 체온을 높이면 불꽃 에너지가\n'
                    '몸 안에 맴돌아 본래의 힘을 발휘할 수 있다',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(201, 27, 3, 3),
                    ),
                    textAlign: TextAlign.center, // 텍스트를 가운데 정렬
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

AppBar buildAppBar() {
  return AppBar(
        title: Text(
          '내가 만든 첫 앱',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 244, 237),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 137, 137),
        centerTitle: true,
        elevation: 20.0,
      );
}
