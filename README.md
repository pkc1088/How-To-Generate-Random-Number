# How-To-Generate-Random-Number
## TRNG와 LCG를 이용한 FPGA 보드용 이진 퀴즈

## 1. 프로젝트 소개
- **프로젝트 명**
  - TRNG와 LCG를 이용한 FPGA 이진 퀴즈<br/><br/>
- **시연 url 링크**
  - 시연 url 링크 업로드<br/><br/>
- **프로젝트 동기**
  - 가장 낮은 레벨에서 컴퓨터가 어떻게 난수를 구현하는지 의문이 들었다
  - 과연 컴퓨터가 생성한 난수는 일반적인 관점에서 랜덤하다라고 할 수 있는지 검증하고
  - 한계를 개선시키기 위해 직접 설계 및 실험을 시작했다<br/><br/>
- **프로젝트 목표**
  - 무작위로 제공된 2진수를 암산으로 10진수로 변환해, 값을 맞추는 게임을 구현
  - Quartus Prime과 Vivado를 활용하여 Random Number Generator(RNG), 타이머 및 사용자 입력 검증 시스템을 구현
  - 시뮬레이션을 통해 회로의 동작을 검증하고, FPGA 보드를 사용해 전체 시스템이 올바르게 작동하는지 확인<br/><br/>
- **프로젝트 설치 및 실행 방법**
  - 아래 링크에서 AMD 계정 생성 후 Vivado를 설치한다
    - https://www.xilinx.com/support/download.html
  - 'SpeedMentalConversionQuiz' 폴더의 모든 bdf, bsf, v 파일을 Vivado에 업로드한다
  - '보고서&제안서&발표자료'의 FPGA board pin map을 참고해 핀 셋팅한다
  - HBE combo2 보드를 포팅한 후 실행한다<br/><br/>

## 2. 프로젝트 스펙
  - **제작 기간** : 2024.11.11 - 2024.12.20<br/><br/>
  - **팀원 구성 및 역할 분배** <br/><br/>
    - 편경찬
      - LCG기반 PRNG 설계
      - TRNG 요소 첨가
      - 실제 시간에 동기화된 타이머 구현  <br/><br/>
    - 한 네이 네인
      - keypad 입출력 및 segment 맵핑
      - 모듈 연결<br/><br/>
  - **개발 환경**<br/><br/>
    - 보드
      - FPGA HBE-Combo2
    - 사용 툴
      - Quartus Prime
      - Xilinx Vivado
    - 사용 언어
      - logic design diagram
      - Verilog <br/><br/>
  - **리포지토리 구조**
    ```
    ├── README.md
    ├── SpeedMentalConversionQuiz
    ├── 보고서&제안서&발표자료
    ```

## 3. 프로젝트 시나리오
  - 2개의 RNG를 통해 무작위로 생성된 두 정수(0-15)를 D2B로 변환
  - 변환된 비트열을 LED 1-4, LED 5-8에 각각 표시 
  - LED 표시 직후 타이머가 시작
  - 사용자는 해당 이진수의 10진수 값을 키패드를 통해 연달아 입력
  - 타이머는 사용자가 입력을 완료할 때까지 증가하며 8-array segments에 표시
  - 사용자가 제시간 안에 정답을 입력한 경우
  ▷ Full Color LED가 초록색으로 변화
  - 제시간에 입력하지 못하거나 틀렸을 경우
  ▷ Full Color LED가 빨간색 유지 <br/><br/>

## 4. 프로젝트 배경지식 및 주요 설계
 
  - **PRNG와 LCG**
    - 난수를 생성하는 PRNG(Pseudo Random Number Generator)의 원리는 다음과 같다.<br/><br/>
      <img src="https://github.com/user-attachments/assets/1062ec79-4ed3-48a1-a870-8a064ffc58ac"  width="310" height="250"/>
    - 고정값 seed로 부터 결정적 알고리즘을 사용하여 랜덤 비트열을 출력한다.
    - PRNG의 종류 중 하나인 LCG(Linear Congruential Generator)는 해당 수식을 기반으로 동작한다.<br/><br/>
      ![Image](https://github.com/user-attachments/assets/ffb77839-656a-4ada-8bd8-2b7dba2f9e28)
      <img src="https://github.com/user-attachments/assets/42a7ee66-4642-43e0-94eb-f5a089e6adde"  width="310" height="255"/>
    -  LCG가 가능한 모든 값을 한 번씩 생성하는 최대 주기를 가질 수 있도록 이 인수들을 설정해야 한다.
    -  각각의 RNG는 4비트를 사용하기에 모듈러 *m*은 2^4(=*16*)으로 설정
    -  곱셈계수인 *a*의 경우 a-1이 m의 모든 소인수로 나누어지도록 *5*로 설정
    -  덧셈상수인 *c*는 m과 서로소가 되도록 *1*로 설정
    -  LED1에서 4로 표현되는 첫번째 LCG의 경우 시드값은 6으로 셋팅<br/><br/>
       ![Image](https://github.com/user-attachments/assets/a2c44cc1-181e-4179-a99e-312f4fd452f4)
    - waveform으로 매 클락마다 생성하는 난수를 확인해볼 수 있다<br/><br/>
 
  - **기존 방식의 문제점과 TRNG(True Random Number Generator)**
    - LCG를 이용한 PRNG는 0에서 15의 비트를 최대생성 주기를 가지면서 한 번씩 출력함을 보장한다
    - 하지만 위 알고리즘은 Linear하기에 최초의 시드값에 의존적이며 항상 같은 난수를 출력한다
    - 즉 패턴화가 생기는 문제를 피할 수 없다
    - 우리 프로젝트는 사용자가 예상할 수 없는 완전한 랜덤을 목표로 함으로 TRNG 요소를 넣기로 결정했다
    - 우선 사용자에게 항상 start 버튼과 stop 버튼을 눌러서 새로운 게임을 진행할 수 있도록 유도한다
    - 그 딜레이 시간동안 발생하는 클락 만큼 LCG를 여러번 연산하게한 뒤 stop 버튼을 누르면 연산을 멈추고 LED에 표시한다
    - 실제 랜덤한 소스인 TRNG적인 요소를 이용해 패턴화되는 랜덤 수열 중에서 어떤 부분을 시작하는지 모르게 설계한다
    - 따라서 사용자는 물론이고 시드값을 설정한 개발자 조차도 예상할 수 없는 완전한 랜덤이 구현됐다<br/><br/>
 
  - **타이머(Timer)**
    - 타이머는 싱글 7 segment 자리에서 표시되도록 위치
    - 9초에서 0초로 countdown하는 방식으로 동작
    - 시스템클럭이 500Hz를 사용하고 있기에 500배 느리게 분주시켜 실제 시간과 동기화<br/><br/>
 
  - **입출력 기능**
    - 3x4 키패드를 사용하여 표시된 이진수에 해당하는 십진수를 사용자로부터 입력받는다.
    - 입력된 십진수는 7 segment array의 com1-com4에 표시되도록 구현
    - 사용자의 입력값을 생성된 난수와 비교하여 입력이 정확하면 Full Color LED가 녹색을 표시
    - 입력이 잘못되었거나 타이머가 0이 되어 제한 시간 안에 정답을 입력하지 못하면 빨간색을 표시<br/><br/>

## 5. 프로젝트 High level 회로도
![Image](https://github.com/user-attachments/assets/8109f300-ac4e-4f8b-87d6-b7b3e6276bbb)
  - low level의 구현과 기능은 보고서를 참조<br/><br/>

## 6. 프로젝트 결과
 
  - **오답 입력**<br/><br/>
  ![Image](https://github.com/user-attachments/assets/0bdafd8e-ffc3-4e11-ac11-ac179fae3fce)
    - stop 버튼을 누르면 LED1-4와 LED5-8에 두 개의 난수가 퀴즈로 제시
    -  Full Color LED는 빨간색을 유지한 채 카운트 다운을 시작
    -  입력으로 ’0915‘를 입력해야 하지만 오답으로 ’0975‘를 입력하면 카운트 다운은 계속 진행되며 정답으로 인식되지 않는다.<br/><br/>
 
  - **정답 입력**<br/><br/>
  ![Image](https://github.com/user-attachments/assets/495ac731-6cf2-429a-9458-e7448f43d085)<br/><br/>
    - 주어진 LED 퀴즈에 따라 정답인 ‘0200’을 제한 시간 안에 입력 완료하면 Full Color LED는 초록색으로 변화하면 타이머는 멈춘다
    - 새로운 난수를 받아 게임을 다시 실행하기 위해서는 최초의 동작과 동일하게 start 버튼을 누른 후 stop 버튼을 누르면 된다<br/><br/>

## 7. 프로젝트 결론 및 리뷰
  - FPGA를 이용한 하드웨어 설계의 다양한 요소를 통합적으로 활용한 프로젝트로, 설계부터 구현, 시연까지 전 과정을 통해 디지털 논리 설계 및 시스템 통합 능력을 향상시킬 수 있었다.
  - 회로 설계뿐만 아니라 수식이 원활히 동작하도록 직접 Verilog 코드를 작성했다는 점에서 의미가 크다.
  - RNG, 타이머, 비교기, 레지스터 등의 모듈 설계와 이를 FPGA에서 구현함으로써 하드웨어 설계의 기본 개념을 심화할 수 있었다.
  - 특히, PRNG 방식인 LCG와 TRNG의 결합은 실제 응용에서 패턴 예측 가능성을 줄이는 창의적인 접근으로, 하드웨어 난수 생성의 실질적인 설계 원리를 경험하는 계기가 되었다.
  - 모듈 간 신호 연결, 클럭 분주를 통한 타이밍 제어, 입력값 비교 및 출력 처리 등의 과정을 거치며 디지털 회로 설계에서 모듈화와 통합 설계의 중요성을 체감할 수 있었다.
  - 게임의 긴장감을 높이기 위해 카운트다운 타이머를 도입하거나, 사용자 입력 혼선을 방지하기 위해 출력 디스플레이 위치를 변경하는 등
  - UI/UX를 고려한 설계 변경을 통해 단순한 논리 회로 설계에서 나아가 실질적으로 사용 가능한 시스템을 설계하는 과정을 배웠다. <br/><br/>

## 8. 참고자료
  - [1] Majzoobi, Mehrdad, Farinaz Koushanfar, and Srinivas Devadas. "FPGA-based true random number generation using circuit metastability with adaptive feedback control." Cryptographic Hardware and Embedded Systems–CHES 2011: 13th International Workshop, Nara, Japan, September 28–October 1, 2011. Proceedings 13. Springer Berlin Heidelberg, 2011
