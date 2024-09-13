## 람다식이란

함수형 프로그래밍(functional programming)이란 함수를 정의하고 이 함수를 데이터 처리부로 보내 데이터를 처리하는 기법을 말한다. 데이터 처리부는 데이터만 가지고 있을 뿐, 처리 방법이 정해져 있지 않아서 외부에서 제공된 함수에 의존한다.

Java 8부터 람다식(Lambda Expressions)을 지원한다. 데이터 처리부는 람다식을 받아 매개변수에 데이터를 대입하고 중괄호를 실행시켜 처리한다.
```
람다식: (매개변수, ...) -> { 처리 내용 }
```

자바는 람다식을 익명 구현 객체로 변환한다. 익명 구현 객체는 이름이 없는 인터페이스 구현 객체를 말한다.

```java
public interface Calculable{
	//추상메소드
	void calculate(int x, int y);
}
```

`Calculable` 인터페이스의 익명 구현 객체는 다음과 같이 생성할 수 있다.
```java
new Calculable(){
	@Override
	public void caculate(int , int y) { 처리 내용 }
};
```

이것을 람다식으로 표현하면
```java
(x, y) -> { 처리 내용};
```

람다식은 인터페이스의 익명 구현 객체이므로 인터페이스 타입의 매개변수에 대입될 수 있다.
```java
public void action(Calculable calculable){
	int x = 10;
	int y = 4;
	calculable.calculate(x, y); // 데이터를 제공하고 추상 메소드를 호춮
}
```

`action()`메소드를 호출할 때 매개값으로 다음과 같이 람다식을 제공할 수 있다. `action()` 메소드에서 `calculable.calcuate(x, y)`를 실행하면 람다식의 중괄호 블록이 실행되면서 데이터가 처리된다. 여기서 `action()`메소드는 제공된 람다식을 이용해서 내부 데이터를 처리하느 처리부 역할을 한다.

```java
action( (x, y) -> {
	int result = x + y;
	System.out.println(result);
})
```

인터페이스의 익명 구현 객체를 람다식으로 표현하려면 인터페이스가 단 하나의 추상 메소드만 가져야 한다. 인터페이스가 단 하나의 추상 메소드를 가질 때, 이를 `함수형 인터페이스(functional interface)`라고 한다.

인터페이스가 함수형 인터페이스임을 보장하기 위해서는 `@FunctionalInterface` 어노테이션을 붙이면된다. `@FunctionalInterface`를 붙이는 것은 선택사항이지만, 컴파일 과정에서 추상 메소드가 하나인지 검사하기 때문에 정확한 함수형 인터페이스를 작성할 수 있게 도와주는 역할을 한다.

`Calculable.java`
```java
@FunctionalInterface  
public interface Calculable {  
    //추상 메소드  
    void calculate(int x, int y);  
}
```

`LambdaExample.java`
```java
public class LambdaExample {  
    public static void main(String[] args) {  
        action((x, y) -> {  
            int result = x + y;  
            System.out.println("result = " + result);  
        });  
  
        action((x,y) -> {  
            int result = x - y;  
            System.out.println("result = " + result);  
        });  
    }  
  
    public static void action(Calculable calculable){  
        //데이터  
        int x = 10;  
        int y = 4;  
        System.out.println("============");
        //데이터 처리  
        calculable.calculate(x, y);  
    }  
}
```
`[실행결과]`
```
============
result = 14
============
result = 6
```

<br>

## 매개변수가 없는 람다식

함수형 인터페이스의 추상 메소드에 매개변수가 없을 경우 람다식은 실행문이 하나일 경우 중괄호를 생략할 수 있고, 두 개 이상일 경우 중괄호를 생략할 수 없다.

```
() -> 실행문
```

```
() -> {
	실행문1;
	실행문2;
}
```

`Workable.java`
```java
@FunctionalInterface  
public interface Workable {  
    void work();  
}
```
`Person.java`
```java
public class Person {  
    public void action(Workable workable) {  
        workable.work();  
    }  
}
```
`LambdaExample.java`
```java
public class LambdaExample {  
    public static void main(String[] args) {  
        Person person = new Person();  
  
        //실행문이 두 개 이상인 경우 중괄호 필요  
        person.action(() ->{  
            System.out.println("출근을 합니다.");  
            System.out.println("프로그래밍을 합니다.");  
        });  
  
        //실행문이 한 개일 경우 중괄호 생략 가능  
        person.action(() -> System.out.println("퇴근합니다."));  
    }  
}
```
`[실행결과]`
```
출근을 합니다.
프로그래밍을 합니다.
퇴근합니다.
```

다음은 익명 구현 객체를 람다식으로 대체해 버튼  클릭 이벤트를 처리하는 예제이다.
`Button.java`
```java
public class Button {  
    //정적 멤버 인터페이스  
    @FunctionalInterface  
    public static interface ClickListener{  
        //추상 메소드  
        void onClick();  
    }  
  
    //필드  
    private ClickListener clickListener;  
  
    //메소드  
    public void setClickListener(ClickListener clickListener) {  
	    System.out.println("=====================");
        this.clickListener = clickListener;  
    }  
  
    public void click(){  
        this.clickListener.onClick();  
    }  
}
```
`ButtonExample.java`
```java
public class ButtonExample {  
    public static void main(String[] args) {  
        //Ok 버튼 객체 생성  
        Button btnOk = new Button();  
  
        //Ok 버튼 객체에 람다식(ClickListener 익명 구현 객체) 주입  
        btnOk.setClickListener(() -> {  
            System.out.println("Ok 버튼을 클릭했습니다.");  
        });  
  
        //Ok 버튼 클릭하기  
        btnOk.click();  
  
        //Cancel 버튼 객체 생성  
        Button btnCancel = new Button();  
  
        //Cancel 버튼 객체에 람다식(ClickListener 익명 구현 객체) 주입  
        btnCancel.setClickListener(() -> {  
            System.out.println("Cancel 버튼을 클릭했습니다.");  
        });  
  
        //Cancel 버튼 클릭하기  
        btnCancel.click();  
    }  
}
```
`[실행결과]`
```
=====================
Ok 버튼을 클릭했습니다.
=====================
Cancel 버튼을 클릭했습니다.
```

<br>

## 매개변수가 있는 람다식

**함수형 인터페이스의 추상 메소드에 매개변수가  있을 경우**
```
(타입 매개변수, ...) -> {
	실행문1;
	실행문2;
}
(타입 매개변수, ...) -> 실행문;
```
1) 매개변수를 선언할 때 타입을 생략할 수 있다. - 더 일반적
```
(매개변수, ...) -> {
	실행문1;
	실행문2;
}
(매개변수, ...) -> 실행문1
```

2) 구체적인 타입 대신에 `var`를 사용할 수 있다.
```
(var 매개변수, ...) -> {
	실행문1;
	실행문2;
}
(var 매개변수, ...) -> 실행문;
```

매개변수가 하나일 경우에는 괄호를 생략할 수도 있다. 이때는 타입 또는  `var`를 붙일 수 없다.
`Workable.java`
```java
@FunctionalInterface  
public interface Workable {  
    void work(String name, String job);  
}
```
`Speakable.java`
```java
@FunctionalInterface  
public interface Speakable {  
    void speak(String content);  
}
```
`Person.java`
```java
public class Person {  
    public void action1(Workable workable) {  
        workable.work("홍길동", "프로그래밍");  
    }  
  
    public void action2(Speakable speakable) {  
        speakable.speak("안녕하세요");  
    }  
}
```
`LambdaExample.java`
```java
public class LambdaExample {  
    public static void main(String[] args) {  
        Person person = new Person();  
  
        //매개변수가 두 개일 경우  
        person.action1((name, job) -> {  
            System.out.print(name + "이 ");  
            System.out.println(job + "을 합니다.");  
        });  
        person.action1((name, job) -> System.out.println(name + "이 " + job + "을 하지 않습니다."));  
  
        //매개변수가 한 개일 경우  
        person.action2(word ->{  
            System.out.print("\"" + word + "\"");  
            System.out.println("라고 말합니다.");  
        });  
        person.action2(word -> System.out.println("\"" + word + "\"라고 외칩니다."));  
    }  
}
```
`[실행결과]`
```
홍길동이 프로그래밍을 합니다.
홍길동이 프로그래밍을 하지 않습니다.
"안녕하세요"라고 말합니다.
"안녕하세요"라고 외칩니다.
```

<br>

## 리턴값이 있는 람다식

함수형 인터페이스의 추상 메소드에 리턴값이 있을 경우 return문 하나만 있을 경우 중괄호와 함께 return 키워드를 생략할 수 있다. 리턴값은 연산식 또는 리턴값 있는 메소드 호출로 대체할 수 있다.
```
(매개변수, ...) -> {
	실행문;
	return 값;
}
(매개변수, ...) -> 값
```
`Calculable.java`
```java
@FunctionalInterface  
public interface Calculable {  
    double calc(double x, double y);  
}
```
`Person.java`
```java
public class Person {  
    public void action(Calculable calculable) {  
        double result = calculable.calc(10, 4);  
        System.out.println("결과 = " + result);  
    }  
}
```
`LambdaExample.java`
```java
public class LambdaExample {  
    public static void main(String[] args) {  
        Person person = new Person();  
  
        //실행문에 두 개 이상일 경우  
        person.action((x, y) -> {  
            double result = x + y;  
            return result;  
        });  
  
        //리턴문이 하나만 있을 경우(연산식)  
        //person.action((x, y) -> {        //return (x + y);        //});        person.action((x, y) -> (x + y));  
  
        //리턴문이 하나만 있을 경우(메소드 호출)  
        //person.action((x, y) -> {        //return sum(x, y);        //});        person.action((x, y) -> sum(x, y));  
    }  
  
    public static double sum(double x, double y) {  
        return (x + y);  
    }  
}
```
`[실행결과]`
```
결과 = 14.0
결과 = 14.0
결과 = 14.0
```

<br>

## 메소드 참조

> 메소드 참조는 메소드를 참조해서 매개변수의 정보 및 리턴 타입을 알아내 람다식에서 불필요한 매개변수를 제거하는 것을 목적으로 한다.

예를 들어 다음은 두 개의 값을 받아 큰 수를 리턴하는 Math 클래스의 max() 정적 메소드를 호출하는 람다식이다.
```java
(left, right) -> Math.max(left, right);
```
람다식은 단수히 두 개의 값을 `Math.max()`메소드의 매개값으로 전달하는 역할만 한다. 이 경우 다음과 같이 메소드 참조를 이용하여 깔끔하게 처리할 수 있다.
```java
Math :: max;
```

### 정적 메소드와 인스턴스 메소드 참조

>정적(static) 메소드를 참조할 경우에는 클래스 이름 뒤에 `::`기호를 붙이고 정적 메소드 이름을 기술한다.

```java
클래스 :: 메소드
```

>인스턴스 메소드일 경우에는 먼저 객체를 생성한 다음 참조 변수 뒤에 `::`기호를 붙이고 인스턴스 메소드 이름을 기술한다.

```java
참조변수 :: 메소드
```

다음 예제는 두 수를 계산하는 방법을 람다식으로 기술하는 대신 Computer의 정적 및 인스턴스 메소드 참조로 대체하는 방법이다.
`Calculable.java`
```java
@FunctionalInterface  
public interface Calculable {  
    double calc(double x, double y);  
}
```
`Person.java`
```java
public class Person {  
    public void action(Calculable calculable) {  
        double result = calculable.calc(10, 4);  
        System.out.println("결과 = " + result);  
    }  
}
```
`Computer.java`
```java
public class Computer {  
    public static double staticMethod(double x, double y) {  
        return x + y;  
    }  
  
    public double instanceMethod(double x, double y) {  
        return x * y;  
    }  
}
```
`MethodReferenceExample.java`
```java
public class MethodReferenceExample {  
    public static void main(String[] args) {  
        Person person = new Person();  
  
        //정적 메소드일 경우  
        //람다식  
        //person.action((x, y) -< Computer.staticMethod(x, y));  
        //메소드 참조  
        person.action(Computer::staticMethod);  
  
        //인스턴스 메소드일 경우  
        Computer com = new Computer();  
        //람다식  
        //person.action((x,y) -> com.instanceMethod(x, y));  
        //메소드 참조  
        person.action(com::instanceMethod);  
  
    }  
}
```
`[실행결과]`
```
결과 = 14.0
결과 = 40.0
```

### 매개변수의 메소드 참조

다음은 람다식에서 제공되는 a 매개변수의 메소드를 호출해서 b 매개변수의 매개값으로 사용하는 경우이다.
```java
(a, b) -> { a.instanceMethod(b); }
```
a의 클래스 이름 뒤에 `::`기호를 붙이고 메소드 이름을 기수한다. 작성 방법은 정적 메소드 참조와 동일하지만, a의 인스턴스 메소드가 사용된다는 점에서 다르다.
```java
클래스 :: instanceMethod
```

다음은 사람의 이름을 비교하기 위해 String의 인스턴스 메소드인 compareToIgnoreCase를 메소드 참조로 사용하는 예제이다. `a.compareToIgnoreCase(b)`로 호출했을 때 사전 순으로 a가 b보다 먼저 오면 음수를, 동일하면 0을, 나중에 오면 양수를 리턴한다.
`Comparable.java`
```java
@FunctionalInterface  
public interface Comparable {  
    int compare(String a, String b);  
}
```
`Person.java`
```java
public class Person {  
    public void ordering(Comparable comparable) {  
        String a = "홍길동";  
        String b = "김길동";  
  
        int result = comparable.compare(a, b);  
  
        if (result < 0) {  
            System.out.println(a + "은 " + b + "보다 앞에 옵니다.");  
        } else if (result == 0) {  
            System.out.println(a + "은 " + b + "과 같습니다.");  
        } else {  
            System.out.println(a + "은 " + b + "보다 뒤에 옵니다.");  
        }  
    }  
}
```
`MethodReferenceExample.java`
```java
public class MethodReferenceExample {  
    public static void main(String[] args) {  
        Person person = new Person();  
        person.ordering(String::compareToIgnoreCase);  
    }  
}
```
`[실행결과]`
```
홍길동은 김길동보다 뒤에 옵니다.
```

<br>

## 생성자 참조

> 생성자를 참조한다는 것은 객체를 생성하는 것을 의미한다.

람다식이 단순히 객체를 생성하고 리턴하도록 구성된다면 람다식을 생성자 참조로 대치할 수 있다. 다음 람다식은 단순히 객체를 생성한 후 리턴만 한다.
```java
(a, b) -> { return new 클래스(a, b); }
```
이것을 생성자 참조로 표현하면 클래스 이름 뒤에 `::`기호를 붙이고 new 연산자를 기술하면 된다.
```java
클래스 :: new
```

생성자가 오버로딩되어 여러 개가 있을 경우, 컴파일러는 함수형 인터페이스의 추상 메소드와 동일한 매개변수 타입과 개수를 가지고 있는 생성자를 찾아 실행한다. 만약 해당 생성자가 존재하지 않으면 컴파일 오류가 발생한다.

다음 예제는 생성자 참조를 이용해서 두 가지 방법으로 Member 객체를 생성한다. 하나는 CreateTable1함수형 인터페이스의 create() 메소드를 이용해서 Member 객체를 생성하였고, 다른 하나는 CreateTable2 함수형 인터페이스의 create() 메소드를 이용해서 Member 객체를 생성하였다.
`CreateTabel1.java`
```java
@FunctionalInterface  
public interface CreateTabel1 {  
    public Member create(String id);  
}
```
`CreateTable2.java`
```java
@FunctionalInterface  
public interface CreateTable2 {  
    public Member create(String id, String name);  
}
```
`Member.java`
```java
public class Member {  
    private String id;  
    private String name;  
  
    public Member(String id) {  
        this.id = id;  
    }  
  
    public Member(String id, String name) {  
        this.id = id;  
        this.name = name;  
    }  
  
    @Override  
    public String toString() {  
        return "Member{" +  
                "id='" + id + '\'' +  
                ", name='" + name + '\'' +  
                '}';  
    }  
}
```
`Person.java`
```java
public class Person {  
    public Member getMember1(CreateTabel1 createTable) {  
        String id = "winter";  
        Member member = createTable.create(id);  
        return member;  
    }  
  
    public Member getMember2(CreateTable2 createTable) {  
        String id = "winter";  
        String name = "한겨울";  
        Member member = createTable.create(id, name);  
        return member;  
    }  
}
```
`ConstructorReferenceExample.java`
```java
public class ConstructorReferenceExample {  
    public static void main(String[] args) {  
        Person person = new Person();  
  
        Member m1 = person.getMember1(Member::new);  
        System.out.println("m1 = " + m1);  
        System.out.println();  
  
        Member m2 = person.getMember2(Member::new);  
        System.out.println("m2 = " + m2);  
    }  
}
```
`[실행결과]`
```
m1 = Member{id='winter', name='null'}

m2 = Member{id='winter', name='한겨울'}
```


