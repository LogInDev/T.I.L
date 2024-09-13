# 상속

> 상속(Inheritance)은 부모가 자식에게 물려주는 행위를 말한다.

자바에서 상속은 객체 지향 프로그래밍의 핵심 요소 중 하나로, 기존 클래스의 필드와 메서드를 새로운 클래스에서 재사용하게 해준다.

이름 그대로 기존 클래스의 속성과 기능을 그대로 물려받는 것이다.

상속을 사용하려면 `extends` 키워드를 사용하면 되고, 상속의 대상은 하나만 선택할 수 있다.

- 부모 클래스(super class) : 상속을 통해 자신의 필드와 메서드를 다른 클래스에 제공하는 클래스
- 자식 클래스(sub class) : 부모 클래스로부터 필드와 메서드를 상속받는 클래스

```java
public class Car {
	public void move(){
		System.out.println("차가 이동합니다.");
	}
}

public class ElectricCar extends Car {
	public void charge(){
		System.out.println("충전합니다.");
	}
}

public class GasCar extends Car {
	public void fillUp(){
		System.out.println("기름을 주유합니다.");
	}
}
```

```java
public class CarMain{
	public static void main(String[] args){
		ElectricCar electricCar = new ElectricCar();
		electricCar.move();
		electricCar.charge();

		GasCar gasCar = new GasCar();
		gasCar.move();
		gasCar.fillUp();
	}
}
------------------
차를 이동합니다.
충전합니다.
차를 이동합니다.
기름을 주유합니다.
```

![[8-1.excalidraw]]

전기차와 가솔린차가 `Car`를 상속받은 덕분에 `electricCar.move()`, `gasCar.move()`를 사용할 수 있다.

상속은 부모의 기능을 자식이 물려받는 것이다. 반대로 부모 클래스는 자식 클래스가 누군지도 모르고 따라서 접근할 수 없다. 

## 단일 상속

> 자바는 다중 상속을 지원하지 않는다. `extends`의 대상은 하나만 선택할 수 있다. 


---
## 상속과 메모리 구조

- 자식 객체 생성
```java
ElectricCar electricCar = new ElectricCar();
```

![[8-2.excalidraw]]

`new ElectricCar()`를 호출하면 `ElectricCar`뿐만 아니라 상속 관계에 있는 `Car`까지 함께 포함해서 인스턴스를 생성한다. 참조값은 x001로 하나지만, 실제로 그 안에서는 `Car`, `ElectricCar라는 두가지 클래스 정보가 공존한다.
상속 관계를 사용하면 부모 클래스도 함께 포함해서 생성된다.


- 자식 객체 메서드 호출
```java
electricCar.charge();
```

![[8-3.excalidraw]]

메서드 호출시 참조값을 확인해서 `x001.charge()`를 호출한다. 상속에서 메서드 호출시 부모인 `Car`를 통해서 찾을지 `ElectricCar`를 통해서 찾을지 선택을 해야하는데 이때는 호출하는 변수의 타입(클래스)을 기준으로 선택한다. `electricCar` 변수의 타입이 `ElectricCar`이므로 인스턴스 내부에 같은 타입인 `ElectricCar`를 통해서 `charge()`를 호출한다.


- 부모 클래스 메서드 호출
```java
electricCar.move();
```

![[8-4.excalidraw]]

`electricCar.move()`를 호출하면서 x001로 이동한다. `Car`, `ElectricCar` 두가지 타입이 있다. 이때 호출하는 변수인 `electricCar`는 `ElectricCar`타입이므로 `ElectircCar`에서 `move()`를 찾는다. 없는 경우 상속 관계에서는 자식 타입에 해당 기능이 없으면 부모 타입으로 올라가서 찾는다. 부모인 `Car`에 `move()`가 있으므로 부모에 있는 메서드를 사용한다.

> - 상속 관계의 객체를 생성하면 그 내부에는 부모와 자식이 모두 생성된다.
> - 상속 관계의 객체를 호출할 때, 대상 타입을 정해야 한다. 이때 호출자의 타입을 통해 대상 타입을 찾는다.
> - 현재 타입에서 기능을 찾지 못하면 상위 부모 타입으로 기능을 찾아서 실행한다.


---
## 상속과 메서드 오버라이딩

> 부모 타입의 기능을 자식에서 다르게 재정의 할 수 있다. 부모에게서 상속 받은 기능을 자식이 재정의 하는 것을 메서드 오버라이딩(Overriding)이라 한다.

- 오버라이딩과 메모리 구조
```java
public class Car{
	public void move(){
		System.out.println("차를 이동합니다.");
	}

	public void openDoor(){
		System.out.println("문을 엽니다.");
	}
}

public class ElectricCar extends Car {
	@Override
	public void move(){
		System.out.println("전기차를 빠르게 이동합니다.");
	}

	public void charge(){
		System.out.println("충전합니다.");
	}
}
```

![[8-5.excalidraw]]

1. `electricCar.move()`를 호출한다.
2. 호출한 `electricCar`의 타입은 `ElectricCar`이므로 인스터스 내부의 `ElectricCar`에서 `move()`를 찾는다.
3. `ElectricCar`에 해당 메서드가 있으므로 부모 타입에서 찾지 않고 `ElectricCar`의 메서드를 사용한다.


### `@Override`
 이 애노테이션은 상위 클래스의 메서드를 오버라이드하는 것임을 나타낸다.
컴파일러는 이 애노테이션을 보고 메서드가 정확히 오버라이드 되었는지 확인한다. 오버라이딩 조건을 만족시키지 않으면 컴파일 에러를 발생시킨다. 실수를 방지해준다.

### 메서드 오버라이딩 조건
- 메서드 이름이 같아야한다.
- 메서드 매개변수(파라미터) 타입, 순서, 개수가 같아야 한다.
- 반환 타입이 같아야한다. 단, 반환 타입이 하위 클래스 타입일 수 있다.
- 오버라이딩 메서드의 접근 제어자는 상위 클래스의 메서드보다 더 제한적이어서는 안된다. 예를 들어, 상위 클래스의 메서드가 `protected`로 선언되어 있으면 하위 클래스에서 이를 `public` 또는 `protected`로 오버라이드할 수 있지만, `private` 또는 `default`로 오버라이드 할 수 없다. 
- 오버라이딩 메서는 상위 클래스의 메서드보다 더 많은 체크 예외를 `throws`로 선언할 수 없다. 더 적거나 같은 수의 예외, 또는 하위 타입의 예외는 선언할 수 있다.
- `static`, `final`, `private` 키워드가 붙은 메서드는 오버라이딩 될 수 없다.
	- `static`은 클래스 레벨에서 작동하므로 인스턴스 레벨에서 사용하는 오버라이딩이 의미가 없다. `static`은 그냥 클래스 이름을 통해 필요한 곳에 직접 접근하면 된다.
	- `final` 메서드는 재정의를 금지한다.
	- `private` 메서드는 해당 클래스에서만 접근 가능하기 때문에 하위 클래스에서 보이지 않는다. 따라서 오버라이딩 할 수 없다.
- 생성자는 오버라이딩 할 수 없다.


### 오버로딩(Overloading)과 오버라이딩(Overriding)
- `메서드 오버로딩` : 메서드 이름이 같고 매개변수(파라미터)가 다른 메서드를 여러개 정의하는 것을 메서드 오버로딩(Overloading)이라 한다. Overloading을 번역하면 과적이다. 따라서 같은 이름의 메서드를 여러개 정의했다고 생각하면된다.
- `메서드 오버라이딩` : 메서드 오버라이딩은 하위 클래스에서 상위 클래스의 메서드를 재정의하는 과정을 의미한다. 따라서 상속 관계에서 사용한다. 부모의 기능을 자식이 다시 정의하는 것이다. Overriding은 단순 해석하면 무언가를 넘어서 타는 것이다. 자식의 새로운 기능이 부모의 기존 기능을 넘어 타서 기존 기능을 새로운 기능으로 덮어버린다고 생각하면된다.


---
## 상속과 접근제어

![[8-6.excalidraw]]

> 접근 제어자 종류( `private` → `default` → `protected` → `public` )
> - `private` : 모든 외부 호출을 막는다.
> - `default`(package-private) : 같은 패키지안에서 호출은 허용한다.
> - `protected` : 같은 패키지 안에서 호출은 허요한다. 패키지가 달라도 상속 관계의 호출은 허용한다.
> - `public` : 모든 외부 호출을 허용한다.

- 적용 예시
```java
package extends1.access.parent;

public class Parent{
	public int publicValue;
	protected int protectedValue;
	int defaultValue;
	private int privateValue;

	public void publicMethod(){
		System.out.println("Parent.publicMethod");
	}
	protected void protectedMethod(){
		System.out.println("Parent.protectedMethod");
	}
	void defaultMethod(){
		System.out.println("Parent.defaultMethod");
	}
	private void privateMethod(){
		System.out.println("Parent.privateMethod");
	}
}
```

```java
package extends1.access.child;

import extends1.access.parent;

public class Child extends Parent{
	public void call(){
		publicValue = 1;
		protectedValue = 1; // 상속 관계 or 같은 패키지
		//defaultValue = 1; // 다른 패키지 접근 불가, 컴파일 오류
		//privateValue = 1; // 접근 불가, 컴파일 오류

		publicMethod();
		protectedMethod(); // 상속 관계 or 같은 패키지
		//defaultMethod(); // 다른 패키지 접근 불가, 컴파일 오류
		//privateMethod(); // 접근 불가, 컴파일 오류
	}

}
```

- `publicValue = 1` : 부모의 `public` 필드에 접근한다. 부모의 필드 값을 변경
- `protectedValue = 1` : 부모의 `protected` 필드에 접근한다. 패키지는 다르지만 상속 관계여서 접근 가능
- `defaultValue = 1` : 부모의 `default` 필드에 접근한다. 자식과 부모가 다른 패키지이므로 접근할 수 없다.
- `privateValue = 1` : 부모의 `private` 필드에 접근한다. 모든 외부 접근을 막으므로 자식이라도 호출 불가하다.

![[8-7.excalidraw]]

본인 타입에서 없으면 부모 타입에서 찾는데 이때 접근 제어자가 영향을 준다. 자식 타입에서 부모 타입의 기능을 호출할 때, 부모 입장에서 보면 외부에서 호출하는 것과 같다.


---
## super - 부모 참조

> `super`는 부모의 클래스에 대한 참조를 나타낸다.

부모와 자식의 필드명이 같거나 메서드가 오버라이딩 되어 있으면, 자식에서 부모의 필드나 메서드를 호출할 수 없다. 이때 `super` 키워드를 사용하면 부모를 참조할 수 있다.

```java
public class Parent{
	public String value = "parent";
	public void hello(){
		System.out.println("Parent.hello");
	}
}

public calss Child extends Parent{
	public String value = "child";
	
	@Override
	public void hello(){
		System.out.println("Child.hello");
	}

	public void call(){
		System.out.println("this value = " + this.value); // this 생략 가능
		System.out.println("super value = " + super.value);

		this.hello(); // this 생략가능
		super.hello();
	}
}
```

```java
public calss Super1Main{
	public static void main(String[] args){
		Child child = new Child();
		child.call()
	} 
}
-----------------------
this value = child
super value = parent
Child.hello
Parent.hello
```

`call()`메서드 안에서
- `this`는 자기 자신의 참조를 뜻한다. `this`는 생략 가능하다.
- `super`는 부모 클래스에 대한 참조를 뜻한다.
- 필드 이름과 메서드 이름이 같지만 `super`를 사용해서 부모 클래스에 있는 기능을 사용할 수 있다.


---
## super - 생성자

> 상속 관계를 사용하며 자식 클래스의 생성자에서 부모 클래스이 생성자를 반드시 호출해야 한다.

상속 관계의 인스턴스를 생성하면 결국 메모리 내부에는 자식과 부모 클래스가 각각 다 만들어진다. 그래서 각각의 생성자가 모두 호출되어야 한다.

상속 관계에서 부모의 생성자를 호출할 때는 `super(...)`를 사용하면 된다.

```java
public class ClassA {
	public ClassA(){
		System.out.println("ClassA 생성자");
	}
}

public class ClassB extends ClassA {
	public ClassB(int a){
		super(); // 기본 생성자 생략 가능
		System.out.println("ClassB 생성자 a = " + a);
	}
	public ClassB(int a, int b){
		super(); // 기본 생성자 생략 가능
		System.out.println("ClassB 생성자 a = " + a + " b = " + b);
	}
}
```

- `ClassB`는 `ClassA`를 상속 받았다. 상속을 받으면 생성자의 첫줄에 `super(...)`를 사용해서 부모 클래스의 생성자를 호출해야 한다.
	- 예외로 생성자 첫줄에 `this(...)`를 사용할 수는 있다. 하지만 `super(...)`는 자식의 생성자 안에서 언젠가는 반드시 호출되어야 한다.

- 부모 클래스의 생성자가 기본 생성자(파라미터가 없는 생성자)인 경우에는 `super()`를 생략할 수 있다.
	- 상속 관계에서 첫줄에 `super(...)`를 생략하면 자바는 부모의 기본 생성자를 호출하는 `super()`를 자동으로 만들어준다. 


```java
public class ClassC extends ClassB {
	public ClassC(){
		super(10, 20);
		System.out.println("ClassC 생성자");
	}
}
```

`ClassC`는 `ClassB`를 상속받았다. `ClassB`에는 두가지 생성자가 있다.
	- `ClassB(int a)`
	- `ClassB(int a, int b)`

생성자는 하나만 호출할 수 있다. 두 생성자 중에 하나를 선택하면 된다.
	- `super(10, 20)`를 통해 부모 클래스의 `ClassB(int a, int b)`생성자를 선택했다.

`ClassC`의 부모인 `ClassB`는 기본생성자가 없다. 따라서 부모의 기본 생성자를 호출하는 `super()`를 사용하거나 생략할 수 없다.

```java
public class Super2Main{
	public static void main(String[] args){
		ClassC classC = new ClassC();
	}
}
----------------------------
ClassA 생성자
ClassB 생성자 a = 10 b = 20
ClassC 생성자
```

실행 순서는 `ClassA` → `ClassB` → `ClassC` 순서로 실행된다. 따라서 초기화는 최상위 부모부터 이루어진다. 자식 생성자의 첫 줄에 부모의 생성자를 호출해야하기 때문이다.

![[8-8.excalidraw]]

1. `new ClassC()`를 통해 `ClassC` 인스턴스를 생성한다.
2. 이때 `ClassC()`의 생성자가 호출된다. 해당 생성자 안에 가장 첫줄인 `super(...)`를 통해 `ClassB(...)`의 생성자가 호출된다. `ClassB()`의 생성자의 가장 첫줄인 부모 `ClassA()`의 생성자를 호출한다.
3. `ClassA()`가 실행되면서 "ClassA 생성자"를 출력한다.
4. `ClassA()` 생성자 호출이 끝나면 `ClassA()`를 호출한 `ClassB(...)` 생성자로 제어권이 돌아간다.
5. `ClassB(...)`생성자가 코드를 실행하면서 "ClassB 생성자 a = 10 b = 20"을 출력한다. 생성자 호출이 끝나면 `ClassB(...)`를 호출한 `ClassC()`의 생성자로 제어권이 돌아간다.
6. `ClassC()`가 마지막으로 생성자 코드를 실행하면서 "ClassC 생성자"를 출력한다.

→ 상속 관계의 생성자 호출은 결과적으로 부모에서 자식 순서로 실행된다. 따라서 부모의 데이터가 먼저 초기화하고 그 다음에 자시그이 데이터를 초기화한다. 
→ 상속 관계에서 자식 클래스의 생성자 첫줄에 반드시 `super(...)`를 호출해야 한다. 단, 기본 생성자 `(super())`인 경우 생략 가능하다.


### this(...)와 함께 사용

> 코드 첫줄에 `this(...)`를 사용하더라도 반드시 한번은 `super(...)`를 호출해야 한다.

```java
public class ClassB extends ClassA{
	public ClassB(int a){
		this(a, 0); // 기본 생성자 생략 가능
		System.out.println("ClassB 생성자 a = " + a);		
	}

	public ClassB(int a, int b){
		super(); // 기본 생성자 생략 가능
		System.out.println("ClassB 생성자 a = " + a +" b = " + b);
	}
}
```

```java
public class Super2Main{
	public static void main(String[] args){
		ClassB classB = new ClassB(100);
	}
}
------------------------
ClassA 생성자
ClassB 생성자 a = 100 b = 0
ClassB 생성자 a = 100
```

 >**`this(a, 0)`이 있는 `ClassB(int a)`생성자 에서는 왜 `super()`가 생략되어 있지 않는가?**
 
- 자식 클래스의 생성자에서 `super()` 를 명시적으로 호출하지 않으면 Java 컴파일러는 자동으로 부모 클래스의 기본 생성자(`super()`)를 호출한다. 
 - 하지만, **자식 클래스 생성자의 첫 줄에 `this()`를 사용하여 같은 클래스의 다른 생성자를 호출하는 경우, `super()`는 자동으로 추가되지 않는다.**
 - 대신 `this()`로 호출된 다른 생성자에서는 `super()`를 명시적으로 호출하거나, 마찬가지로 생략할 수 있고, 생략 시 컴파일러가 자동으로 추가한다.
 

