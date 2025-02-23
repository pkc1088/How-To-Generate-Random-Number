# How-To-Generate-Random-Number
## TRNG와 LCG를 이용한 FPGA 보드용 이진 퀴즈

- **리포지토리 구조**
  - SpeedMentalConversionQuiz : 프로젝트 코드
  - 보고서&제안서&발표자료 : 프로젝트 과정을 담은 문서 <br/><br/>
- **프로젝트 스펙**
  - 제작 기간 :
  - 사용 툴 :
  - 팀원 :
  - 맡은 역할 :<br/><br/>
- **프로젝트 목표**
  - 무작위로 제공된 2진수를 암산으로 10진수로 변환해, 값을 맞추는 게임을 구현 
  - Quartus Prime과 Vivado를 활용하여 Random Number Generator(RNG), 타이머 및 사용자 입력 검증 시스템을 구현
  - 시뮬레이션을 통해 회로의 동작을 검증하고, FPGA 보드를 사용해 전체 시스템이 올바르게 작동하는지 확인
  <br/>
- **프로젝트 시나리오**
  - 2개의 RNG를 통해 무작위로 생성된 정수를 D2B로 변환
  - 변환된 비트열을 LED 1~4, LED 5~8에 각각 표시 
  - LED 표시 직후 타이머가 시작
  - 사용자는 해당 이진수의 10진수 값을 키패드를 통해 연달아 입력
  - 타이머는 사용자가 입력을 완료할 때까지 증가하며 com7, com8에 표시
  - 사용자가 제시간 안에 정답을 입력한 경우
  ▷ Full Color LED가 초록색으로 변화
  - 제시간에 입력하지 못하거나 틀렸을 경우
  ▷ Full Color LED가 빨간색 유지 <br/><br/>
- **프로젝트 배경지식**
  - *PRNG와 LCG*
    - 난수를 생성하는 PRNG(Pseudo Random Number Generator)의 원리는 다음과 같다.
  
      <img src="https://github.com/user-attachments/assets/1062ec79-4ed3-48a1-a870-8a064ffc58ac"  width="310" height="250"/>
    - 고정값 seed로 부터 결정적 알고리즘을 사용하여 랜덤 비트열을 출력한다.
    - PRNG의 종류 중 하나인 LCG는 해당 수식을 기반으로 동작한다.
    
      ![Image](https://github.com/user-attachments/assets/ffb77839-656a-4ada-8bd8-2b7dba2f9e28)
    -  LCG가 가능한 모든 값을 한 번씩 생성하는 최대 주기를 가질 수 있도록 이 인수들을 설정해야 한다.
    -  곱셈계수인 *a*의 경우 a-1이 m의 모든 소인수로 나누어지도록 *5*로 설정하고 덧셈상수인 *c*는 m과 서로소가 되도록 *1*로 설정했다.
    -  LED1에서 4로 표현되는 첫번째 LCG의 경우 시드값은 6으로 셋팅했다
