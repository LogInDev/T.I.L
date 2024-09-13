### 클래스의 구성 멤버
- 필드
- 생성자
- 메소드

필드와 메소드는 선언 방법에 따라 인스턴스 멤버와 정적 멤버로 분류할 수 있다.
- 인스턴스 멤버로 선언되면 객체 생성 후 사용할 수 있고(객체에 소속된 멤버), 정적 멤버로 선언되면 객체 생성 없이도 사용할 수 있다.(클래스에 고정된 멤버)

<br>

---
## 인스턴스 멤버

> 인스턴스 멤버(Instance)로 선언되면 객체 생성 후 사용할 수 있다.(객체에 소속된 멤버)

```java
Public class Car{
	//인스턴스 필드 선언
	int gas;

	//인스턴스 메소드 선언
	void setSpeed(int speed){...}
}
```

`gas` 필드와 `setSpeed()` 메소드는 인스턴스 멤버여서 외부 클래스에서 사용하기 위해서는 Car 객체를 먼저 생성하고 참조 변수로 접근해서 사용해야 한다.

```java
Car myCar = new Car();
myCar.gas = 10;
myCar.setSpeed(60);
```

`gas` 필드는 객체마다 따로 존재하며, `setSpeed()`메소드는 각 객체마다 존재하지 않고 메소드 영역에 저장되고 공유된다.

![[7-1.jpeg]]

`gas`필드는 객체에 소속된 멤버이지만, `setSpeed()`메소드는 객체에 포함되지 않는다. 메소드를 객체마다 저장하면 중복 저장으로 메모리 효율이 떨어지므로 메소드는 메소드 영역에 두되 공유해서 사용하고, 이때 객체 없이는 사용하지 못하도록 제한을 걸어둔 것이다.

### this 키워드

> 객체는 자신을 `this`라고 한다. 객체 내부에서는 인스턴스 멤버에 접근하기 위해 `this`를 사용할 수 있다.

생성자와 메소드의 매개변수명이 인스턴스 멤버인 필드명과 동일한 경우, 인스턴스 필드임을 강조하고자 할 때 this를 주로 사용한다.

```java
public class Car{
	//필드 선언
	String model;
	int speed;

	//생성자 선언
	Car(String model){
		this.model = model;  // 매개변수를 필드에 대입(this 생략 불가)
	}

	//메소드 선언
	void setSpeed(int speed){
		this.speed = speed; //매개변수를 필드에 대입(this 생량 불가)
	}

	void run(){
		this.setSpeed(100);  // this 생략 가능
	}
}
```

<br>

---
## 정적멤버

> 정적(static) 멤버란 메소드 영역의 클래스에 고정적으로 위치하는 멤버. 따라서 객체 생성 없이 클래스를 통해 바로 사용 가능

![[7-2.jpeg]]

자바는 클래스 로더(loader)를 이용해서 클래스를 메소드 영역에 저장하고 사용한다.

### 정적 멤버 선언

>정적 필드와 정적 메소드로 선언하려면 static 키워드를 추가하면 된다.

```java
public class 클래스 {
	//정적 필드 선언
	static 타입 필드 [= 초기값];

	//정적 메소드
	static 리턴타입 메소드(매개변수, ...) {...}
}
```

객체마다 가지고 있을 필요성이 없는 공용적인 필드는 정적 필드로 선언하는 것이 좋다. (ex : 파이 등)

인스턴스 필드를 이용하지 않는 메소드는 정적 메소드로 선언하는 것이 좋다. 그러나 인스턴스 필드를 사용하는 경우 인스턴스 필드로 선언해야한다.

```java
public class Calculator{
	String color;
	void setColor(String color){this.color = color;}
	static int puls(int x, int y){return x + y;}
}
```

`setColor`메소드의 경우 인스턴스 멤버를 사용하여 `static`을 사용하여 정적 메소드로 생상할 경우 에러가 발생한다. 인스턴스 멤버는 객체를 생성해야 사용가능하고 정적 메소드는 객체 생성 없이도 사용 가능하기 때문이다.

### 정적 멤버 사용

> 클래스가 메모리로 로딩되면 정적 멤버를 사용할 수 있고, 클래스 이름과 함께 도트(`.`)연산자로 접근하면 된다.

```java
double result1 = 10 * 10 * Calculator.pi;
int result = Calculator.plus(10, 5);

// 객체 참조 변수로도 접근 가능
Calculator myCalcu = new Calculator();
double result1 = 10 * 10 * myCalcu.pi;
```

객체 참조 변수로 정적 멤버 사용이 가능하지만, 정적 요소는 클래스 이름으로 접근하는 것이 정석이므로 정적 멤버를 객체 참조 변수로 접근했을 경우 경고 표시를 나타낸다.

### 정적 블록

> 정적 필드는 필드 선언과 동시에 초기값을 주는 것이 일반적이만, 복잡한 초기화 작업이 필요하면 정적 블록(static block)을 이용해야 한다.

정적 블록은 클래스가 메모리로 로딩될 때 자동으로 실행된다. 정적 블록이 클래스 내부에 여러 개가 선언되어 있을 경우 선언된 순서대로 실행된다.

```java
public class Television {
	static String company = "MyCompany";
	static String model = "LCD";
	static String info;
	//정적 블록
	static {
		info = company + "-" + model;
	}
}
```

- 생성자에서 초기화를 하지 않는 정적 필드
	- 정적 필드는 객체 생성 없이도 사용할 수 있기 때문에 생성자에서 초기화 작업을 하지 않는다. 생성자는 객체 생성 후 실행되기 때문이다.

### 인스턴스 멤버 사용 불가

> 정적 메소드와 정적 블록은 객체가 없어도 실행되기 때문에 내부에 인스턴스 필드나 인스턴스 메소드를 사용할 수 없다. 객체 자신의 참조인 `this`도 사용할 수 없다.

```java
public class ClassName {
	int field1;
	void method1(){...}

	static{
		// field1 = 10;  사용불가 - 컴파일 에러
		// method1();    사용불가 - 컴파일 에러
	}
}
```

정적 메소드와 정적 블록에서 인스턴스 멤버를 사용하고 싶다면 객체를 먼저 생성하고 참조 변수로 접근해야 한다.

```java
static void Method3(){
	ClassName obj = new ClassName();
	obj.field1 = 10;
	obj.method1();
}
```

`main()` 메소드도 정적 메소드이므로 객체 생성 없이 인스턴스 필드와 인스턴스 메소드를 바로 사용할 수 없다.

```java
public class Car {
	// 인스턴스 필드 선언
	int speed;

	// 인스턴스 메소드 선언
	void run(){...}

	public static void main(String []args){
		//speed = 60;  사용불가 - 컴파일 에러
		//run();       사용불가 - 컴파일 에러
	}
}
```

<br>

---
## final 필드와 상수

> 값을 변경하는 것을 막고 읽기만 허용해야 할 때에는 `final`필드와 상수를 선언해서 사용한다.

### final 필드 선언

> final 필드는 초기값이 저장되면 이것이 최종적인 값이 되어 프로그램 실행 도중에 수정할 수 없게 된다.

```java
final 타입 필드 [=초기값];
```

final 필드에 초기값을 줄 수 있는 방법
1. 필드 선언 시 초기값 대입
2. 생성자에서 초기값 대입

```java
public class Korean{
	//인스턴스 final 필드 선언
	final String nation = "대한민국";
	final String ssn;

	//인스턴스 필드 선언
	String name;

	//생성자 선언
	public Korean(String ssn, String name){
		this.ssn = ssn;
		this.name = name;
	}
}

public class KoreanExample{
	public static void main(String[] args){
		Korean k1 = new Korean("123456-1234567", "김자바");

		//final 필드는 값을 변경할 수 없음
		//k1.nation = "USA";      변경불가 - 컴파일에러
		//k1.ssn = "123-123-12";  변경불가 - 컴파일에러

		//final 아닌 필드는 변경 가능
		k1.name = "이자바";
	}

}
```

### 상수 선언

> 불변의 값을 저장하는 필드를 상수(constant)라고 부른다. 상수는 객체마다 저장할 필요가 없고, 여러 개의 값을 가져도 안되기 때문에 `static`이면서 `final`인 특성을 가져야 한다.

```java
static final 타입 상수 [=초기값];
```

초기값은 선언 시에 주는 것이 일반적이지만, 복잡한 초기화가 필요한 경우에는 정적 블록에서 초기화 할 수 있다.

```java
static final 타입 상수;
static {
	상수 = 초기값;
}
```

상수 이름은 모두 대문자로 작성하는 것이 관례이다. 만약 서로 다른 단어가 혼합된 이름이라면 언더바(`_`)로 단어들을 연결한다.

상수는 정적 필드이므로 클래스로 접근해서 읽을 수 있다.

```java
클래스명.상수
```

<br>

---
## 패키지

> 패키지는 클래스의 일부분이며, 클래스를 식별하는 용도로도 사용된다.

패키지는 주로 개발 회사의 도메인 이름의 역순으로 만든다. 상위 패키지와 하위 패키지를 도트(`.`)로 구분한다. 도트는 물리적으로 하위 디렉토리임을 뜻한다.

### 패키지 선언

> 패키지 선언은 package 키워드와 함께 패키지 이름을 기술한 것으로, 항상 소스 파일 최상단에 위치해야 한다.

```java
package 상위패키지.하위패키지;

public class 클래스명{...}
```

패키지 이름은 모두 소문자로 작성하는 것이 관례이다. 패키지 이름은 서로 중복되지 않도로고 회사 도메인 이름의 역순으로 작성하고, 마지막에는 프로젝트 이름을 붙여주는 것이 일반적이다.

```java
com.samsung.projectname
com.lg.projectmane
org.apach.projectname
```

소스 파일(`~.java`)이 저장되면 이클립스는 자동으로 컴파일해서 thisisjava/bin 디렉토리에 패키지 디렉토리와 함께 바이트코드 파일(~.class)을 생성한다. 만약 패키지 선언이 없다면 이클립스는 클래스를 (default package)에 포함시킨다. (default package)란 패키지가 없다는 뜻이다.

### import문

> 같은 패키지에 있는 클래스는 아무런 조건 없이 사용할 수 있지만, 다른 패키지에 있는 클래스를 사용하려면 `import 문`을 이용해서 어떤 패키지의 클래를 사용하는지 명시해야 한다.

`import 문`이 작성되는 위치는 패키지 선언과 클래스 선언 사이이다. `import` 키워드 뒤에 사용하고자 하는 클래스의 전체 이름을 기술한다. 동일한 패키지에 포함된 다수의 클래스를 사용해야한다면 클래스 이름을 생략하고` *`를 사용할 수 있다.

```java
package com.mycompany;

import com.hankook.tire;
import com.hankook.project.*;
```

클래스 전체 이름을 사용할 경우 import 문은 필요없다.

```java
com.hankook.Tire tire = new com.hankook.Tire();
```

<br>

---
## 접근 제한자

> 접근 제한자(Access Modifier)는 `public`, `protected`, `private` 세 가지 종류가 있다.

![[7-3.jpeg]]

|접근 제한자|제한대상|제한범위|
|--|--|--|
|public| 클래스, 필드, 생성자, 메소드|없음|
|protected|필드, 생성자, 메소드|같은 패키지이거나, 자식 객체만 사용가능|
|(default)|클래스, 필드, 생성자, 메소드|같은 패키지
|private|필드, 생성자, 메소드|객체 내부|

### 클래스의 접근 제한

> 클래스는 `public`과 `default` 접근 제한을 가질 수 있다.

```java
[public] class 클래스{...}
```

클래스 선언시 `public` 접근 제한자를 생략했다면 클래스는 default 접근 제한을 가진다. 이 경우 클래스는 같은 패키지에서 아무런 제한 없이 사용할 수 있지만 다른 패키지에서는 사용할 수 없게 된다.

![[7-4.jpeg]]

`public` 접근 제한자의 경우 같은 패키지 뿐만 아니라 다른 패키지에서도 사용할 수 있다.

![[7-5.jpeg]]

### 생성자의 접근 제한

> 생성자는 `public`, `default`, `private` 접근 제한을 가질 수 있다.

```java
public class ClassName{
	// 생성자 선언
	[public | private] ClassName(...){...}
}
```

|접근 제한자|생성자|설명|
|--|--|--|
|public|클래스(...)|모든 패키지에서 생성자를 호출할 수 있다.<br>=모든 패키지에서 객체를 생성할 수 있다.|
||클래스(...)|같은 패키지에서만 생성자를 호출할 수 있다.<br>=같은 패키지에서만 객체를 생성할 수 있다.|
|private|클래스(...)|클래스 내부에서만 생성자를 호출할 수 있다.<br>=클래스 내부에서만 객체를 생성할 수 있다.|

### 필드와 메소드의 접근 제한

>필드와 메소드는 `public`, `default`, `private` 접근 제한을 가질 수 있다.

```java
// 필드 선언
[public | private] 타입 필드;
//메소드 선언
[public | private] 리턴타입 메소드(...){...}
```

| 접근 제한자  | 생성자            | 설명                                                     |
| ------- | -------------- | ------------------------------------------------------ |
| public  | 필드<br>메소드(...) | 모든 패키지에서 필드를 읽고 변경할 수 있다.<br>모든 패키지에서 메소드를 호출할 수 있다.   |
|         | 필드<br>메소드(...) | 같은 패키지에서만 필드를 읽고 변경할 수 있다.<br>같은 패키지에서만 메소드를 호출할 수 있다. |
| private | 필드<br>메소드(...) | 클래스 내부에서만 필드를 읽고 변경할 수 있다.<br>클래스 내부에서만 메소드를 호출할 수 있다. |

<br>

---
## Getter와 Setter

객체의 필드(데이터)를 외부에서 마음대로 읽고 변경할 경우 객체의 무결성(결점이 없는 성질)이 깨질 수 있다.

객체 지향 프로그래밍에서는 직접적인 외부에서의 필드 접근을 막고 대신 메소드를 통해 필드에 접근하는 것을 선호한다. 메소드는 데이터를 검증해서 유효한 값만 필드에 저장할 수 있다. 이러한 역할을 하는 메소드가 `Setter`이다.

`private` 접근 제한자를 가진 필드는 외부에서 접근하지 못한다. 이 필드를 변경하기 위해서는 `Setter` 메소드를 사용해야 한다.

```java
private double speed;

public void setSpeed(double speed){
	if(speed < 0) {    // 속도는 음수일 수 없으므로 유효한 데이터만 저장되게 검증
		this.speed = 0;     
		return;  // 실행 종료
	} else {
		this.speed = speed;
	}
}
```

필드값이 객체 외부에서 사용하기에 부적절한 경우, 메소드로 적절한 값을 변환해서 리턴할 수 있는 `Getter` 메소드가 있다.

private 접근 제한을 가진 필드는 외부에서 읽지 못한다. 이때 Getter 메소드를 사용한다.

```java
private double speed;

public double getSpeed(){
	double km = speed * 1.6;
	return km;
}
```

필드 타입이 boolean일 경우에는 Getter는 get으로 시작하지 않고 `is`로 시작하는 것이 관례이다.

```java
private boolean stop;

public boolean isStop(){ retusn stop;}
```

<br>

---
## 싱글톤 패턴

> 애플리케이션 전체에서 단 한 개의 객체만 생성해서 사용하고 싶다면 싱글톤(Singleton) 패턴을 적용할 수 있다. 

싱클톤 패턴의 핵심은 생성자를 `private` 접근 제한해서 외부에서 new 연산자로 생성자를 호출할 수 없도록 막는 것이다.

```java
private 클래스() {}
```

생성자를 호출할 수 없으니 외부에서 언제든 객체를 생성하는 것이 불가능해진다. 대신 싱글톤 패턴이 제공하는 정적 메소드를 통해 간접적으로 객체를 얻을 수 있다.

```java
public class 클래스{
	// 1. private 접근 권한을 갖는 정적 필드 선언과 초기화
	private static 클래스 singleton = new 클래스();

	// private 접근 권한을 갖는 생성자 선언
	private 클래스() {}

	// 2. public 접근 권한을 갖는 정적 메소드 선언
	public static 클래스 getInstance(){
		return singleton;
	}
}
```

1. 자신의 타입으로 정적 필드를 선언하고 미리 객체를 생성해서 초기화시킨다. private 접근 제한자를 붙여 외부에서 정적 필드 값을 변경하지 못하도록 막는다.
2. 정적 필드값을 리턴하는 getInstance() 정적 메소드를 public으로 선언.

외부에서 객체를 얻는 유일한 방법은 getInstance() 메소드를 호출하는 것이다. getInstance() 메소드가 리턴하는 객체는 정적 필드가 참조하는 싱글톤 객체이다. 따라서 이 객체를 참조하면 동일한 객체를 참조하게 된다.

```java
클래스 변수1 = 클래스.getInstance();
클래스 변수2 = 클래스.getInstance();
```

![[7-6.jpeg]]