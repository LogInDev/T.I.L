## 입출력 스트림
>데이터 입력은 키보드를 통해 입력될 수도 있고, 파일 또는 프로그램을부터 입력될 수 있다. 데이터 출력은 모니터로 출력될 수 있고, 파일에 저장되거나 다른 프로그램으로 전송될 수 있다. 이것을 총칭해서 데이터 입출력이라고 한다.

자바는 입력 스트림과 출력 스트림을 통해 데이터를 입출력한다. 
스트림(Stream)은 단방향으로 데이터가 흐르는 것을 말하는데, 데이터는 출발지에서 나와 도착지로 흘러들어간다.
![](18-1.png)
프로그램을 기준으로 데이터가 들어오면 입력 스트림, 데이터가 나가면 출력 스트림이 된다. 프로그램이 다른 프로그램과 데이터를 교환하려면 양쪽 모두 입력 스트림과 출력 스트림이 필요하다.
![](18-2.png)

어떤 데이터를 입출력하느냐에 따라 스트림을 두 종류로 나눌 수 있다.
- `바이트 스트림` : 그림, 멀티미디어, 문자 등 모든 종류의 데이터를 입출력할 때 사용
- `문자 스트림` : 문자만 입출력할 때 사용

자바는 데이터 입출력과 관련된 라이브러리를 `java.io` 패키지에서 제공하고 있다. 

| 구분      | 입/출력             | 최상위 클래스                     | 하위클래스(예)                                                             |
| ------- | ---------------- | --------------------------- | -------------------------------------------------------------------- |
| 바이트 스트림 | 입력 스트림<br>출력 스트림 | InputStream<br>OutputStream | XXXInputStream(FileInputStream)<br>XXXOutputStream(FileOutputStream) |
| 문자 스트림  | 입력스트림<br>출력스트림   | Reader<br>Writer            | XXXReader(FileReader)<br>XXXWriter(FileWriter)                       |
![](18-3.png)



## 바이트 출력 스트림
> `OutputStream`은 바이트 출력 스트림의 최상위 클래스로 추상 클래스이다. 모든 바이트 출력 스트림 클래스는 이 `OutputStream` 클래스를 상속받아서 만들어진다.
![](18-4.png)

| 리턴 타입 | 메소드                               | 설명                                  |
| ----- | --------------------------------- | ----------------------------------- |
| void  | write(int b)                      | 1byte를 출력                           |
| void  | write(byte[] b)                   | 매개값으로 주어진 배열 b의 모든 바이트를 출력          |
| void  | write(byte[] b, int off, int len) | 매개값으로 주어진 배열 b[off]부터 len개의 바이트를 출력 |
| void  | flush()                           | 출력 버퍼에 잔류하는 모든 바이트를 출력              |
| void  | close()                           | 출력 스트림을 닫고 사용 메모리 해제                |

### 1byte 출력
`write(int b)` 메소드는 매개값 int(4byte)에서 끝 1byte만 출력한다. 매개변수가 4byte인 int타입이므로 모두를 보내는 것은 아니다.
![](18-5.png)

다음 예제는 10, 20, 30이 저장된 바이트를 파일 `test1.db`로 출력해서 저장한다.
`WriteExample.java`
```java
package ch18.i_o.sec02.exam01;  
  
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.OutputStream;  
  
public class WriteExample {  
    public static void main(String[] args) {  
        try {  
            OutputStream os = new FileOutputStream("/Users/g.u./Temp/test1.db");  
  
            byte a = 10;  
            byte b = 20;  
            byte c = 30;  

		// 1byte씩 출력
            os.write(a);  
            os.write(b);  
            os.write(c);  
  
            os.flush();  // 내부 버퍼에 잔류하는 바이트를 출력하고 버퍼를 비움
            os.close();  // 출력 스트림을 닫아 사용한 메모리를 해제
  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
  
    }  
}
```
```
/Users/g.u./Temp/test1.db 파일 생성(실행 전 /Users/g.u./Temp 디렉토리가 있어야함)
```

`FileOutputStream` 생성자는 주어진 파일을 생성할 수 없으면 `IOException`을 발생시킨다. `write()`, `flush()`, `close()` 메소드도 `IOException`이 발생할 수 있으므로 예외 처리를 해야한다.

`OutputStream`은 내부에 작은 버퍼(buffer)를 가지고 있다. 
- `write()` 메소드가 호출이 되면 버퍼에 바이트를 우선 저장하고, 버퍼가 차면 순서대로 바이트를 출력한다.
- `flush()`메소드는 내부 버퍼에 잔류하는 모든 바이트를 출력하고 버퍼를 비우는 역할을 한다. 내부 버퍼를 사용하는 이유는 출력 성능을 향상하기 위해서이다.
- 출력 스트림을 더 이상 사용하지 않을 때에는 `close()` 메소드를 호출해서 출력 스트림이 사용했던 메모리를 해제하는 것이 좋다.


### 바이트 배열 출력
일반적으로 1byte를 출력하는 경우는 드물고, 보통 바이트 배열을 통째로 출력하는 경우가 많다. `write(byte[] b)`메소드는 매개값으로 주어진 배열의 모든 바이트를 출력한다.
![](18-6.png)

다음 예제는 10, 20, 30이 저장된 바이트 배열을 `test2.db` 파일로 출력해서 저장한다.
`WriteExample.java`
```java
package ch18.i_o.sec02.exam02;  
  
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.OutputStream;  
  
public class WriteExample {  
    public static void main(String[] args) {  
        try {  
            OutputStream os = new FileOutputStream("/Users/g.u./Temp/test2.db");  
  
            byte[] array = {10, 20, 30};  
  
            os.write(array); // 배열의 모든 바이트를 출력  
  
            os.flush(); // 내부 버퍼에 잔류하는 바이트를 출력하고 버퍼를 비움   
			os.close(); // 출력 스트림을 닫아서 사용한 메모리를 해제  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
}
```



## 바이트 입력 스트림
> `InputStream`은 바이트 입력 스트림의 최상위 클래스로, 추상 클래스이다. 모든 바이트 입력 스트림은 `InputStream` 클래스를 상속받아 만들어진다.
![](18-7.png)

| 리턴 타입 | 메소드            | 설명                                      |
| ----- | -------------- | --------------------------------------- |
| int   | read()         | 1byte를 읽은 후 읽은 바이트를 리턴                  |
| int   | read(byte[] b) | 읽은 바이트를 매개값으로 주어진 배열에 저장 후 읽은 바이트 수를 리턴 |
| void  | close()        | 입력 스트림을 닫고 사용 메모리 해제                    |


### 1byte 읽기
`read()` 메소드는 입력 스트림으로부터 1byte를 읽고 int(4byte)타입으로 리턴한다. 따라서 리턴된 4byte 중 끝 1byte에만 데이터가 들어 있다. 
![](18-8.png)
더 이상 입력 스트림으로부터 바이트를 읽을 수 없다면 `read()` 메소드는`-1`을 리턴한다.
다음 예제는 ch18.sec02.exam01.WriteExample에서 저장한 test1.db에 저장한 내용을 1byte씩 끝까지 읽는다.
`ReadExample.java`
```java
package ch18.i_o.sec03.exam01;  
  
import java.io.FileInputStream;  
import java.io.FileNotFoundException;  
import java.io.IOException;  
import java.io.InputStream;  
  
public class ReadExample {  
    public static void main(String[] args) {  
        try {  
            InputStream is = new FileInputStream("/Users/g.u./Temp/test1.db");  
  
            while (true) {  
                int data = is.read(); // 1byte씩 읽기  
                if (data == -1) break; // 더이상 읽을 내용이 없을 경우  
                System.out.println(data);  
            }  
  
            is.close(); // 입력 스트림을 닫고 사용 메모리 해제  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
}
```
`[실행결과]`
```
10
20
30
```
`FileInputStream` 생성자는 주어진 파일이 존재하지 않을 경우 `FileNotFoundException`을 발생시킨다. 그리고 `read()`, `close()` 메소드에서 `IOException`이 발생할 수 있으므로 두 가지 예외를 모두 처리해야한다.


### 바이트 배열로 읽기

`read(bytep[] b)` 메소드는 입력 스트림으로부터 주어진 배열의 길이만큼 바이트를 읽고 배열에 저장한 다음 읽은 바이트 수를 리턴한다. 예를 들어 입력 스트림에 5개의 바이트가 들어오면 다음과 같이 길이 3인 배열로 두 번 읽을 수 있다.
![](18-9.png)
`read(byte[] b)` 역시 입력 스트림으로부터 바이트를 더 이상 읽을 수 없다면 `-1`을 리턴한다.

다음은 ch18.sec02.exam02.WriteExample에서 test2.db에 저장한 내용을 끝까지 읽고 출력하는 예제이다.
`ReadExample.java`
```java
package ch18.i_o.sec03.exam02;  
  
import java.io.FileInputStream;  
import java.io.FileNotFoundException;  
import java.io.IOException;  
import java.io.InputStream;  
  
public class ReadExample {  
    public static void main(String[] args) {  
        try {  
            InputStream is = new FileInputStream("/Users/g.u./Temp/test2.db");  
  
            byte[] data = new byte[100];  
  
            while (true) {  
                int num = is.read(data);  // 최대 100byte를 읽고 읽은 바이트는 data에 저장, 읽은 수는 리턴  
                if (num == -1) break; // 더 이상 읽을 내용이 없을 경우  
  
                for (int i = 0; i < num; i++) {  
                    System.out.println(data[i]); // 읽은 바이트를 출력  
                }  
            }  
  
            is.close(); // 배열의 모든 바이트를 출력  
  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
}
```
`[실행결과]`
```
10
20
30
```

다음은 파일 복사 예제이다. 파일 복사 원리는 `FileInputStream`에서 읽은 바이트를 바로 `FileOutputStream`으로 출력하는 것이다.
`CopyExample.java`
```java
package ch18.i_o.sec03.exam03;  
  
import java.io.FileInputStream;  
import java.io.FileOutputStream;  
import java.io.InputStream;  
import java.io.OutputStream;  
  
public class CopyExample {  
    public static void main(String[] args) throws Exception{  
        String originalFileName = "/Users/g.u./Temp/1-2.png";  
        String targetFileName = "/Users/g.u./Temp/1-3.png";  
  
        InputStream is = new FileInputStream(originalFileName);  
        OutputStream os = new FileOutputStream(targetFileName);  
  
//        byte[] data = new byte[1024]; // 읽은 바이트를 저장할 배열 생성  
//        while (true) {  
//            int num = is.read(data); // 최대 1024바이트를 읽고 배열에 저장. 읽은 바이트는 리턴  
//            if (num == -1) break; // 파일을 다 읽으면 while 문 종료  
//            os.write(data, 0, num); // data배열의 data[0]부터 주어진 num만큼 바이트를 출력  
//        }  
        //Java9부터 사용가능  - 위에 주석을 다음 한줄로 생성 가능
        is.transferTo(os); // 입력 스트림에서 출력 스트림으로 바이트를 복사
  
        os.flush(); // 내부 버퍼 잔류 바이트를 출력하고 버퍼를 비움  
        os.close();  
        is.close();  
  
        System.out.println("복사가 잘 되었습니다.");  
    }  
}
```

Java9부터는 입력 스트림에서 출력 스트림으로 바이트를 복사하는 `transferTo()` 메소드가 InputStream에 추가되었다.


# 문자 입출력 스트림
> 문자 입출력 스트림으로 `Reader`와 `Writer`가 있다.

## 문자 출력
>`Writer`는 문자 출력 스트림의 최상위 클래스로, 추상 클래스이다. 모든 문자 출력 스트림 클래스는 `Writer`클래스를 상속받아서 만들어진다.
![](18-10.png)

**`Writer`클래스의 주요 메서드**

| 리턴 타입 | 메소드                                  | 설명                                        |
| ----- | ------------------------------------ | ----------------------------------------- |
| void  | wirte(int c)                         | 매개값으로 주어진 한 문자를 출력                        |
| void  | write(char[] cbuf)                   | 매개값으로 주어진 배열의 모든 문자를 출력                   |
| void  | write(char[] cbuf, int off, int len) | 매개값으로 주어진 배열에서 cbuf[off]부터 len개까지의 문자를 출력 |
| void  | write(String str)                    | 매개값으로 주어진 문자열을 출력                         |
| void  | write(String str, int off, int len)  | 매개값으로 주어진 문자열에서 off 순번부터 len개까지의 문자를 출력   |
| void  | flush()                              | 버퍼에 잔류하는 모든 문자를 출력                        |
| void  | close()                              | 출력 스트림을 닫고 사용 메모리를 해제                     |

`Writer`는 `OutputStream`과 사용 방법은 동일하지만, 출력 단위가 문자(char)이다.
문자열을 출력하는 writer(String str) 메소드를 추가로 제공한다.

다음 예제는 하나의 문자, 문자 배열, 문자열을 각각 출력하는 예제이다.
`WriteExample.java` -  해당 위치에 Temp 폴더가 있어야함.
```java
package ch18.i_o.sec04.exam01;  
  
import java.io.FileWriter;  
import java.io.IOException;  
  
public class WriteExample {  
    public static void main(String[] args) {  
        try {  
            //문자 기반 출력 스트림 생성  
            FileWriter writer = new FileWriter("/Users/g.u./Temp/test.txt");  
  
            //1 문자씩 출력  
            char a = 'A';  
            writer.write(a);  
            char b = 'B';  
            writer.write(b);  
  
            //char 배열 출력  
            char[] arr = {'C', 'D', 'E'};  
            writer.write(arr);  
  
            //문장열 출력  
            writer.write("FGH");  
  
            //버퍼에 잔류하고 있는 문자들을 출력하고, 버퍼를 비움  
            writer.flush();  
  
            //출력 스트림을 닫고 메모리 해제  
            writer.close();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
}
```



## 문자 읽기
>`Reader`는 문자 입력 스트림의 최상위 클래스로, 추상 클래스이다. 모든 문자 입력 스트림 클래스는 `Reader` 클래스를 상속받아서 만들어 진다.
![](18-11.png)

**`Reader` 주요 메소드**

| 메소드  |                   | 설명                                        |
| ---- | ----------------- | ----------------------------------------- |
| int  | read()            | 1개의 문자를 읽고 리턴                             |
| int  | read(char[] cbuf) | 읽은 문자들을 매개값으로 주어진 문자 배열에 저장하고 읽은 문자 수를 리턴 |
| void | close()           | 입력 스트림을 닫고, 사용 메모리 해제                     |

`Reader`는 `InputStream`과 사용 방법은 동일하지만, 출력 단위가 문자(char)이다.
다음은 문자를 하나씩 읽거나 문자 배열로 읽는 예제이다.
`ReadExample.java`
```java
package ch18.i_o.sec04.exam02;  
  
import java.io.FileNotFoundException;  
import java.io.FileReader;  
import java.io.IOException;  
import java.io.Reader;  
  
public class ReadExample {  
    public static void main(String[] args) {  
        try {  
            Reader reader = null;  
  
            //1 문자씩 읽기  
            reader = new FileReader("/Users/g.u./Temp/test.txt");  
            while (true) {  
                int data = reader.read();  
                if (data == -1) break;  
                System.out.print((char) data);  
            }  
            reader.close();  
            System.out.println();  
  
            //문자 배열로 읽기  
            reader = new FileReader("/Users/g.u./Temp/test.txt");  
            char[] data = new char[100];  
            while (true) {  
                int num = reader.read(data);  
                if (num == -1) break;  
                for (int i = 0; i < num; i++) {  
                    System.out.print(data[i]);  
                }  
            }  
            reader.close();  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
}
```
`[실행결과]`
```
ABCDEFGH
ABCDEFGH
```


# 보조 스트림
>보조 스트림이란 다른 스트림과 연결되어 여러 가지 편리한 기능을 제공해주는 스트림을 말한다. 보조 스트림은 자체적으로 입출력을 수행할 수 없기 땜누에 입출력 소스로부터 직접 생성된 입출력 스트림에 연결해서 사용해야 한다.
![](18-12.png)

입출력 스트림에 보조 스트림을 연결하려면 보조 스트림을 생성할 때 생성자 매개값으로 입출력 스트림을 제공하면 된다.
```java
보조스트림 변수 = new 보조스트림(입출력스트림);
```

 예를 들어 바이트 입력 스트림인 FileInputStream에 InputStreamReader 보조 스트림을 연결한다면
```java
InputStream is = new FileInputStream("...");
InputSteamReader reader = new InputStreamReader(is);
```

보조 스트림은 또 다른 보조 스트림과 연결되어 스트림 체인으로 구성할 수 있다.
```java
보조스트림2 변수 = new 보조스트림2(보조스트림1);
```

예를 들어 문자 변환 보조 스트림인 `InputStreamReader`에 `BufferedReader` 보조 스트림을 연결한다면
```java
InputStream is = new FileInputStream("...");
InputStreamReader reader = new InputStreamReader(is);
BufferedReader br = new BufferedReader(reader);
```

| 보조 스트림                                                                      | 기능                   |
| --------------------------------------------------------------------------- | -------------------- |
| InputStreamReader                                                           | 바이트 스트림을 문자 스트림으로 변환 |
| BufferedInputStream, BufferedOutputStream<br>BufferedReader, BufferedWriter | 입출력 성능 향상            |
| DataInputStream, DataOutputStream                                           | 기본 타입 데이터 입출력        |
| PrintStream, PrintWriter                                                    | 줄바꿈 처리 및 형식화된 문자열 출력 |
| ObjectInputSteam, ObjectOutputStream                                        | 객체 입출력               |


# 문자 변환 스트림
> 바이트 스트림(`InputStream`, `OutputStream`)에서 입출력할 데이터가 문자라면 문자 스트림(`Reader`와 `Writer`)로 변환해서 사용하는 것이 좋다. 그 이유는 문자로 바로 입출력하는 편리함이 있고, 문자셋의 종류를 지정할 수 있다.

## InputStream을 Reader로 변환
>`InputStream`을 `Reader`로 변환하려면 `InputStreamReader` 보조 스트림을 연결하면 된다.
![](18-13.png)
```java
InputStream is = new FileInputStream("/Users/g.u./Temp/test.txt");
Reader reader = new InputStreamReader(is);
```

>💡`FileReader`의 원리
>`FileInputStream`에 `InputStreamReader`를 연결하지 않고 `FileReader`를 직접 생성할 수 있다. `FileReader`는 `InputStreamReader`의 자식 클래스이다. 이것은 `FileReader`가 내부적으로 `FileInputStream`에 `InputStreamReader` 보조 스트림을 연결한 것이라고 볼 수 있다.


## OutputStream을 Writer로 변환
>`OutputStream`을 `Writer`로 변환하려면 `OutputStreamWriter`보조 스트림을 연결하면 된다.
![](18-14.png)
```java
OutputStream os = new FileOutputStream("/Users/g.u./Temp/test.txt");
Writer writer = new OutputStreamWriter(os);
```

>💡`FileWriter`의 원리
>`FileOutputStream`에 `OutputStreamWriter`를 연결하지 않고 `FileWriter`를 직접 생성할 수 있다. `FileWriter`는 `OutputStreamWriter`의 자식 클래스이다. 이것은 `FileWriter`가 내부적으로 `FileOutputStream`에 `OutputStreamWriter` 보조 스트림을 연결한 것이라고 볼 수 있다.

다은은 UTF-8 문자셋으로 파일에 문자를 저장하고, 저장된 문자를 다시 읽는다. 소스 스트림은 바이트 기반 `FileOutputStream`과 `FileInputStream`이지만, 문자 기반 스트림인 `Writer`와 `Reader`로 변환해서 사용한다.
`CharacterConvertStreamExample.java`
```java
package ch18.i_o.sec06;  
  
  
import java.io.*;  
  
public class CharacterConvertStreamExample {  
    public static void main(String[] args) throws Exception{  
        write("문자 변환 스트림을 사용합니다.");  
        String data = read();  
        System.out.println(data);  
    }  
    public static void write(String str) throws Exception {  
        OutputStream os = new FileOutputStream("/Users/g.u./Temp/test.txt");  
        Writer writer = new OutputStreamWriter(os, "UTF-8");  
        writer.write(str);  
        writer.flush();  
        writer.close();  
    }  
  
    public static String read() throws Exception {  
        InputStream is = new FileInputStream("/Users/g.u./Temp/test.txt");  
        Reader reader = new InputStreamReader(is, "UTF-8");  
        char[] data = new char[100];  
        int num = reader.read(data);  
        reader.close();  
        String str = new String(data, 0, num);  
        return str;  
    }  
}
```
`[실행결과]`
```
문자 변환 스트림을 사용합니다.
```


# 성능 향상 스트림
>CPU와 메모리가 아무리 뛰어나도 하드 디스크의 입출력이 늦어지면 프로그램의 실행 성능은 하드 디스크의 처리 속도에 맞춰진다. 네트워크로 데이터를 전송할 때도 느린 네트워크 환경이라면 컴퓨터 사용이 아무리 좋아도 메신저와 게임의 속도는 느릴 수 밖에 없다.
>이 문제에 대한 완전한 해결책은 될 수 없지만, 프로그램이 입출력 소스와 직접 작업하지 않고 중간에 메모리 버퍼(buffer)와 작업함으로써 실행 성능을 향상시킬 수 있다.

출력 스트림의 경우 직접 하드 디스크에 데이터를 보내지 않고 메모리 버퍼에 데이터를 보냄으로써 출력 속도를 향상시킬 수 있다. 버퍼는 데이터가 쌓이기를 기다렸다가 꽉 차게 되면 데이터를 한꺼번에 하드 디스크로 보냄으로써 출력 횟수를 줄여준다.
![](18-15.png)

입력 스트림에서도 버퍼를 사용하면 읽기 성능이 좋아진다. 하드 디스크로부터 직접 읽는 것 보다는 메모리 버퍼로부터 읽는 것이 빠르다.
![](18-16.png)

Java에서 메모리 버퍼를 제공하여 프로그램의 실행 성능을 향상시키는 보조 스트림은
- 바이트 스트림에는 `BufferedInputStream`, `BufferedOutputStream`
- 문자 스트림에는 `BufferedReader`, `BufferedWriter`
가 있다.
```java
// 바이트 스트림인 경우
BufferedInputStream bis = new BufferedInputStream(바이트 입력 스트림);
BufferedOutputSTream bos = new BufferedOutputStream(바이트 출력 스트림);
// 문자 스트림인 경우
BufferedReader br = new BufferedReader(문자 입력 스트림);
BufferedWriter bw = new BufferedWriter(문자 출력 스트림);
```
다음은 성능 향상 보조 스트림(`BufferedInputStream`, `BufferedOutputStream`)을 사용했을 때와 사용하지 않았을 때의 파일 복사 성능 차이를 보여주는 예제이다.
`BufferExample.java`
```java
package ch18.sec07.exam01;  
  
import java.io.*;  
  
public class BufferExample {  
    public static void main(String[] args) throws Exception{  
        //입출력 스트림 생성  
//        String originalFilePath1 = BufferExample.class.getResource("originalFile1.jpg").getPath();  
        String originalFilePath1 = "/Users/g.u./Temp/originalFile1.jpg";  
        String targetFilePath1 = "/Users/g.u./Temp/targerFile1.jpg";  
        FileInputStream fis = new FileInputStream(originalFilePath1);  
        FileOutputStream fos = new FileOutputStream(targetFilePath1);  
  
        //입출력 스트림 + 버퍼 스트림 생성  
//        String originalFilePath2 = BufferExample.class.getResource("originalFile2.jpg").getPath();  
        String originalFilePath2 = "/Users/g.u./Temp/originalFile2.jpg";  
        String targetFilePath2 = "/Users/g.u./Temp/targetFile2.jpg";  
        FileInputStream fis2 = new FileInputStream(originalFilePath2);  
        FileOutputStream fos2 = new FileOutputStream(targetFilePath2);  
        BufferedInputStream bis = new BufferedInputStream(fis2);  
        BufferedOutputStream bos = new BufferedOutputStream(fos2);  
  
        //버퍼를 사용하지 않고 복사  
        long nonBufferTime = copy(fis, fos);  
        System.out.println("버퍼 미사용:\t" + nonBufferTime + " ns");  
  
        //버퍼를 사용하고 복사  
        long bufferTime = copy(bis, bos);  
        System.out.println("버퍼 사용:\t" + bufferTime + " ns");  
  
        fis.close();  
        fos.close();  
        bis.close();  
        bos.close();  
    }  
  
    public static long copy(InputStream is, OutputStream os) throws Exception {  
        //시작 시간 저장  
        long start = System.nanoTime();  
        //1 바이트를 읽고 1 바이트를 출력  
        while (true) {  
            int data = is.read();  
            if(data == -1) break;  
            os.write(data);  
        }  
        os.flush();  
        //끝 시간 저장  
        long end = System.nanoTime();  
        //복사 시간 리턴  
        return (end - start);  
    }  
}
```
`[실행결과]`
```
버퍼 미사용:	2057301958 ns
버퍼 사용:	26721708 ns
```

문자 입력 스트림 `Reader`에 `BufferedReader`를 연결하면 성능 향상뿐만 아니라 행 단위로 문자열을 읽는 `readLine()`메소드를 제공한다.
```java
// 문자 파일을 행 단위로 읽기
BufferedReader br = new BufferedREader(new FileReader("..."));
while(true){
	String str = br.readLine(); // 파일에서 한 행씩 읽음
	if(str == null) break;      // 더 이상 읽을 행이 없을 경우 (파일 끝) while 문 종료
}
```

다은은 자바 소스 파일을 행 단위로 읽고 번호를 붙여 출력하는 예제이다.
`ReadLineExample.java`
```java
package ch18.sec07.exam02;  
  
import java.io.BufferedReader;  
import java.io.FileReader;  
  
public class ReadLineExample {  
    public static void main(String[] args) throws Exception{  
        BufferedReader br = new BufferedReader(new FileReader("src/ch18/sec07/exam02/ReadLineExample.java"));  
  
        int lineNo = 1;  
        while (true) {  
            String str = br.readLine();  
            if (str == null) break;  
            System.out.println(lineNo + "\t" + str);  
            lineNo++;  
        }  
  
        br.close();  
    }  
  
}
```
`[실행결과]`
```
1	package ch18.sec07.exam02;
2	
3	import java.io.BufferedReader;
4	import java.io.FileReader;
5	
6	public class ReadLineExample {
7	    public static void main(String[] args) throws Exception{
8	        BufferedReader br = new BufferedReader(new FileReader("src/ch18/sec07/exam02/ReadLineExample.java"));
9	
10	        int lineNo = 1;
...
```


# 기본 타입 스트림
>바이트 스트림에 `DataInputStream`과 `DataOutputStream` 보조 스트림을 연결하면 기본 타입인 boolean, char, short, int, long, float, double 값을 입출력할 수 있다.
![](18-17.png)
```java
DataInputStream dis = new DataInputStream(바이트 입력 스트림);
DataOutputStream dos = new DataOutputStream(바이트 출력 스트림);
```

| DataInputStream |               | DataOutputStream |                         |
| --------------- | ------------- | ---------------- | ----------------------- |
| boolean         | readBoolean() | void             | writeBoolean(boolean v) |
| byte            | readByte()    | void             | writeByte(int v)        |
| char            | readChar()    | void             | writeChar(int v)        |
| double          | readDouble()  | void             | writeDouble(double v)   |
| float           | readFloat()   | void             | writeFloat(float v)     |
| int             | readInt()     | void             | writeInt(int v)         |
| long            | readLong()    | void             | writeLong(long v)       |
| short           | readShort()   | void             | writeShort(int v)       |
| String          | readUTF()     | void             | writeUTF(String str)    |

위 메소드를 사용해 입출력할 때는 데이터 타입의 크기가 모두 다르므로 `DataOutputStream`으로 출력한 데이터를 다시 `DataInputStream`으로 읽어 올 때에는 출력한 순서와 동일한 순서로 읽어야 한다.
예를 들어 출력할 때 순서가 int → Boolean → double 이라면 읽을 때의 순서도 int → Boolean → double이어야 한다.
`DataInputOutputStreamExample.java`
```java
package ch18.sec08;  
  
import java.io.*;  
  
public class DataInputOutputStreamExample {  
    public static void main(String[] args) throws Exception{  
        //DataOutputStream 생성  
        FileOutputStream fos = new FileOutputStream("/Users/g.u./Temp/primitive.db");  
        DataOutputStream dos = new DataOutputStream(fos);  
  
        //기본 타입 출력  
        dos.writeUTF("홍길동");  
        dos.writeDouble(95.5);  
        dos.writeInt(1);  
  
        dos.writeUTF("감자바");  
        dos.writeDouble(90.3);  
        dos.writeInt(2);  
  
        dos.flush();  
        dos.close();  
        fos.close();  
  
        //DataInputStream 생성  
        FileInputStream fis = new FileInputStream("/Users/g.u./Temp/primitive.db");  
        DataInputStream dis = new DataInputStream(fis);  
  
        //기본 타입 입력  
        for (int i = 0; i < 2; i++) {  
            String name = dis.readUTF();  
            double score = dis.readDouble();  
            int order = dis.readInt();  
            System.out.println(name + " : " + score + " : " + order);  
        }  
  
        dis.close();  
        fis.close();  
    }  
}
```
`[실행결과]`
```
홍길동 : 95.5 : 1
감자바 : 90.3 : 2
```


# 프린트 스트림
>`PrintStream`과 `PrintWriter`는 프린터와 유사하게 출력하는 `print()`, `println()`, `printf()` 메소드를 가지고 있는 보조 스트림이다. 지금까지 콘솔에 출력하려고 `System.out.println()`을 사용했던 이유는 out이 `PrintStream`타입이기 때문이다.
![](18-18.png)

`PrintStream`은 바이트 출력 스트림과 연결되고, `PrintWriter`는 문자 출력 스트림과 연결된다.
```java
PrintStream ps = new PrintStream(바이트 출력 스트림);
PrintWriter pw = new PrintWriter(문자 출력 스트림);
```

**`PrintStream` / `PrintWriter` 메소드**(둘은 거의 같은 메소드를 가지고 있음)
`println()`과 `print()` 메소드는 출력할 데이터 타입에 따라 재정의 된다.

|      |                   |      |                     |
| ---- | ----------------- | ---- | ------------------- |
| void | print(boolean b)  | void | println(boolena b)  |
| void | print(char c)     | void | println(char c)     |
| void | print(double d)   | void | println(double d)   |
| void | print(float f)    | void | println(float f)    |
| void | print(int i)      | void | println(int i)      |
| void | print(long l)     | void | println(long l)     |
| void | print(Object obj) | void | println(Object obj) |
| void | print(String s)   | void | println(String s)   |
|      |                   | void | println()           |

`printf()` 메소드는 형식화된 문자열(format string)을 출력한다. 

다음은 `FileOutputStream`에 보조로 `PrintStream`을 연결해서 `print()`, `println()`, `printf()` 메소드로 문자열을 출력하는 예제이다.
`PrintStreamExample.java`
```java
package stream.ex18;  
  
import java.io.FileOutputStream;  
import java.io.PrintStream;  
  
public class PrintStreamExample {  
    public static void main(String[] args) throws Exception {  
        FileOutputStream fos = new FileOutputStream("/Users/g.u./Temp/printstream.txt");  
        PrintStream ps = new PrintStream(fos);  
  
        ps.print("마치 ");  
        ps.println("프린터가 출력하는 것 처럼 ");  
        ps.println("데이터가 출력합니다.");  
        ps.printf("| %6d | %-10s | %10s | \n", 1, "홍길동", "도적");  
        ps.printf("| %6d | %-10s | %10s | \n", 2, "감자바", "학생");  
  
        ps.flush();  
        ps.close();  
    }  
}
```



# 객체 스트림
> 자바는 메모리에 생성된 객체를 파일 또는 네트워크로 출력할 수 있다.

객체를 출력하기 위해서는 필드값을 일렬로 늘어선 바이트로 변경해야 하는데, 이것을 `직렬화(serialization)`라고 한다.
반대로 직렬화된 바이트를 객체의 필드값으로 복원하는 것을 `역직렬화(deserialization)`라고 한다.

`ObjectInputStream`과 `ObjectOutputStream`은 객체를 입출력할 수 있는 보조 스트림이다.
`ObjectOutputStream`은 바이트 출력 스트림과 연결되어 객체를 직렬화하고, `ObjectInputStream`은 바이트 입력 스트림과 연결되어 객체로 복원하는 역직렬화를 한다.
![](18-19.png)

```java
ObjectInputStream ois = new ObjectInputStream(바이트 입력 스트림);
ObjectOutputStream oos = new ObjectOutputStream(바이트 출력 스트림);
```

`ObjectOutputStream`으로 객체를 직렬화하기 위해서는 `writeObject()`메소드를 사용한다.
반대로 `ObjectInputStream`의 `readObject()`메소드는 읽은 바이트를 역직렬화해서 객체로 생성한다.(`readObject()` 메소드의 리턴 타입은 `Object`이다.)
```java
oos.writeObject(객체);
객체타입 변수 = (객체타입) ois.readObject();
```


다음은 다양한 객체를 파일에 저장하고 다시 파일로부터 읽어 객체로 복원하는 예제이다. 복수의 객체를 저장할 경우 출력된 객체 순서와 동일한 순서로 객체를 읽어야 한다.
`Member.java`
```java
package stream.ex18;  
  
import java.io.Serializable;  
  
public class Member implements Serializable {  
  
    private static final long serialVersionUID = 0L;  
  
    private String id;  
    private String name;  
  
    public Member(String id, String name) {  
        this.id = id;  
        this.name = name;  
    }  
  
    @Override  
	public String toString() {  
	    return id + ": " + name;  
	} 
}
```
`Product.java`
```java
package stream.ex18;  
  
  
import java.io.Serializable;  
  
public class Product implements Serializable {  
  
    private static final long serialVersionUID = 1L;  
  
    private String name;  
    private int price;  
  
    public Product(String name, int price) {  
        this.name = name;  
        this.price = price;  
    }  
  
	@Override  
	public String toString() {  
	    return name + ": " + price;  
	}
}
```
`ObjectInputOutputStreamExample.java`
```java
package stream.ex18;  
  
  
import java.io.FileInputStream;  
import java.io.FileOutputStream;  
import java.io.ObjectInputStream;  
import java.io.ObjectOutputStream;  
import java.util.Arrays;  
  
public class ObjectInputOutputStreamExample {  
    public static void main(String[] args) throws Exception {  
        //FileOutputStream에 ObjectOutputStream 보조 스트림 연결  
        FileOutputStream fos = new FileOutputStream("/Users/g.u./Temp/object.dat");  
        ObjectOutputStream oos = new ObjectOutputStream(fos);  
  
        //객체 생성  
        Member m1 = new Member("fall", "단풍이");  
        Product p1 = new Product("노트북", 1500000);  
        int[] arr1 = {1, 2, 3};  
  
        // 객체를 직렬화해서 파일에 저장  
        oos.writeObject(m1);  
        oos.writeObject(p1);  
        oos.writeObject(arr1);  
  
        oos.flush();  
        oos.close();  
        fos.close();  
  
        //FileInputStream에 ObjectInputStream 보조 스트림 연결  
        FileInputStream fis = new FileInputStream("/Users/g.u./Temp/object.dat");  
        ObjectInputStream ois = new ObjectInputStream(fis);  
  
        //파일을 읽고 역직렬화해서 객체로 복원 
        //- 출력된 순서대로 읽음. 강제 타입 변환 O
        Member m2 = (Member) ois.readObject();  
        Product p2 = (Product) ois.readObject();  
        int[] arr2 = (int[]) ois.readObject();  
  
        ois.close();  
        fis.close();  
  
        //복원된 객체 내용 확인  
        System.out.println("m2 = " + m2);  
        System.out.println("p2 = " + p2);  
        System.out.println("arr2 = " + Arrays.toString(arr2));  
    }  
}
```
`[실행결과]`
```
m2 = fall: 단풍이
p2 = 노트북: 1500000
arr2 = [1, 2, 3]
```


## Serializable 인터페이스
> 자바는 `Serializable`인터페이스를 구현한 클래스만 직렬화할 수 있도록 제한한다.

`Serializable` 인터페이스는 멤버가 없는 빈 인터페이스이지만, 객체를 직렬화 할 수 있다고 표시하는 역할을 한다.
객체가 직렬화될 때 인스턴스 필드값은 직렬화 대상이지만 **정적 필드값과 `transient`로 선언된 필드값은 직렬화에서 제외**되므로 출력되지 않는다.
```java
public class XXX implements Serializable {
	public int field1;
	protected int field2;
	int field3;
	private int field4;
	// 직렬화 
	//-> 일렬로 늘어선 바이트 데이터 : field1 | field2 | field3 | field4
	public static int field5;    // 정적 필드는 직렬화에서 제외
	transient int field6;     //transient로 선언된 필드는 직렬화에서 제외
}
```

`ObjectStreamClass.getDefaultSerialFields()` 에서 해당 클래스의 필드를 반복문 돌면서 `static`과 `transient` 키워드를 사용하면 제외하는 로직이 적용되어 있다.
- 정적 필드(static field)는 클래스 인스턴스가 아닌 클래스 자체에 속하기 때문에 객체의 상태를 저장하는 과정인 직렬화의 대상이 아니다. 
- `transient` 키워드를 사용하는 경우 해당 필드는 `null`로 출력이 된다.
- 패스워드나 주민등록번호처럼 보안상 문제가 발생할 수 있는 것들은 `transient` 키워드를 사용해서 직렬화 대상에서 제외시킬 수 있다. 

## serialVersionUID 필드
직렬화할 때 사용된 클래스와 역직렬화할 때 사용된 클래스는 기본적으로 동일한 클래스여야 한다. 만약 클래스의 이름이 같더라도 클래스의 내용이 다르면 역직렬화에 실패한다.

클래스의 내용이 다르다 할지라도 직렬화된 필드를 공통으로 포함하고 있다면 역직렬화할 수 있는 방법이 있다. 두 클래스가 동일한 `serialVersionUID` 상수값을 가지고 있으면 된다.
![](18-20.png)
![](18-21.png)

>Intellij에서 `serialVersionUID` 자동 생성되게 만들기
>이클립스는 자동 생성 기능을 제공하는 반면, intellij에서는 따로 옵션을 체크해 줘야한다.
>`Serializable class without 'serialVersionUID'` 체크!
>![](18-22.png)



# File과 Files 클래스
> `java.io` 패키지와 `java.nio.file`패키지는 파일과 디렉토리 정보를 가지고 있는 `File`과 `Files`클래스를 제공한다. `Files`는 `File`을 개선한 클래스로, 좀 더 많은 기능을 가지고 있다.

## File 클래스
```java
File file = new File("경로");
```

경로 구분자는 운영체제마다 조금씩 다르다. 윈도우에서는 `\\` 또는 `/`를 둘 다 사용할 수 있고, 맥OS 및 리눅스에서는 `/`를 사용한다. 
```java
//윈도우에서 작성 시
File file = new File("C:/Temp/file.txt");
File file = new File("C:\\Temp\\file.txt");
```

`File` 객체를 생성했다고 해서 파이이나 디렉토리가 생성되는 것은 아니다. 설정한 경로에 실제 파일이나 디렉토리가 없더라도 예외가 발생하지 않는다. 파일이나 디렉토리가 실제 있는지 확인하고 싶다면 `File` 객체를 생성하고 나서 `exists()` 메소드를 호출해보면 된다.
```java
boolean isExist = file.exists(); // 파일이나 폴더가 존재한다면 true를 리턴
```

`exists()` 메소드가 **false**를 리턴할 경우, 메소드로 파일 또는 폴더를 생성할 수 있다.

| 리턴 타입   | 메소드             | 설명                  |
| ------- | --------------- | ------------------- |
| boolean | createNewFile() | 새로운 파일을 생성          |
| boolean | mkdir()         | 새로운 디렉토리를 생성        |
| boolean | mkdirs()        | 경로상에 없는 모든 디렉토리를 생성 |

`exists()` 메소드의 리턴값이 **true**라면 다음 메소드를 사용할 수 있다.

| 리턴 타입    | 메소드                              | 설명                                                                   |
| -------- | -------------------------------- | -------------------------------------------------------------------- |
| boolean  | delete()                         | 파일 또는 디렉토리 삭제                                                        |
| boolean  | canExecute()                     | 실행할 수 있는 파일인지 여부                                                     |
| boolean  | canRead()                        | 읽을 수 있는 파일인지 여부                                                      |
| boolean  | canWrite()                       | 수정 및 저장할 수 있는 파일인지 여부                                                |
| String   | getName()                        | 파일의 이름을 리턴                                                           |
| String   | getParent()                      | 부모 디렉토리를 리턴                                                          |
| File     | getParentFile()                  | 부모 디렉토리를 File 객체로 생성 후 리턴                                            |
| String   | getPath()                        | 전체 경로 리턴                                                             |
| boolean  | isDirectory()                    | 디렉토리인지 여부                                                            |
| boolean  | isFile()                         | 파일인지 여부                                                              |
| boolean  | isHidden()                       | 숨김 파일인지 여부                                                           |
| long     | lastModified()                   | 마지막 수정 날짜 및 시간을 리턴                                                   |
| long     | length()                         | 파일의 크기 리턴                                                            |
| String[] | list                             | 디렉토리에 포함된 파일 및 서브 디렉토리 목록 전부를<br>String 배열로 리턴                       |
| String[] | list(FilenameFilter filter)      | 디렉토리에 포함된 파일 및 서브 디렉토리 목록 중에<br> FilenameFilter에 맞는 것만 String 배열로 리턴 |
| File[]   | listFiles()                      | 디렉토리에 포함된 파일 및 서브 디렉토리 목록 전부를<br> File 배열로 리턴                        |
| File[]   | listFiles(FilenameFilter filter) | 디렉토리에 포함된 파일 및 서브 디렉토리 목록 중에<br>FilenameFilter에 맞는 것만 File 배열로 리턴    |

다음은 Temp 디렉토리에 images 디렉토리와 file1.txt, file2.txt, file3.txt 파일을 생성하고, Temp 디렉토리에 있는 내용을 출력하는 예제이다.
`FileExample.java`
```java
package stream.ex19;  
  
import java.io.File;  
import java.io.IOException;  
import java.text.SimpleDateFormat;  
import java.util.Date;  
  
public class FileExample {  
    public static void main(String[] args) throws IOException {  
        //File 객체 생성  
        File dir = new File("/Users/g.u./Temp/images");  
        File file1 = new File("/Users/g.u./Temp/file1.txt");  
        File file2 = new File("/Users/g.u./Temp/file2.txt");  
        File file3 = new File("/Users/g.u./Temp/file3.txt");  
  
        //존재하지 않으면 디렉토리 또는 파일 생성  
        if(!dir.exists()) dir.mkdirs();  
        if(!file1.exists()) file1.createNewFile();  
        if(!file2.exists()) file2.createNewFile();  
        if(!file3.exists()) file3.createNewFile();  
  
        //Temp 폴더의 내용을 출력  
        File temp = new File("/Users/g.u./Temp");  
        File[] contents = temp.listFiles();  
  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm");  
        for (File file : contents) {  
            System.out.printf("%-25s", sdf.format(new Date(file.lastModified())));  
            if (file.isDirectory()) {  
                System.out.printf("%-10s%-20s", "<DIR>", file.getName());  
            } else {  
                System.out.printf("%-10s%-20s", file.length(), file.getName());  
            }  
            System.out.println();  
        }  
    }  
}
```
`[실행결과]`
```
2024-11-03 오전 09:52      0         file2.txt           
2024-11-03 오전 09:52      0         file3.txt           
2024-11-03 오전 09:52      0         file1.txt           
2024-11-03 오전 08:37      6148      .DS_Store           
2024-09-22 오전 10:43      3         test2.db            
2024-09-29 오전 10:37      46        primitive.db        
2024-11-03 오전 09:52      <DIR>     images   
...
```


>💡**입출력 스트림을 생성할 때 File 객체 활용하기**
>파일 또는 폴더의 정보를 얻기 위해 File 객체를 단독으로 사용할 수 있지만, 파일 입출력 스트림을 생성할 때 경로 정보를 제공할 목적으로 사용되기도 한다.
>```java
>//첫 번째 방법
>FileInputStream fis = new FileInputStream("C:/Temp/image.gif");
>//두 번째 방법
>File file = new File("C:/Temp/image.gif");
>FileInputStream fis = new FileInputStream(file);
>```




## Files 클래스
> `Files` 클래스는 정적 메소드로 구성되어 있기 때문에 `File`클래스처럼 객체로 만들 필요가 없다. `Files`의 정적 메소드는 운영체제의 파일 시스템에게 파일 작업을 수행하도록 위임한다.

다음은 `Files`클래스가 가지고 있는 정적 메소드이다.

| 기능             | 관련 메소드                                                                                                                                                                                                                                         |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 복사             | copy                                                                                                                                                                                                                                           |
| 생성             | createDirectories, createDirectory, createFile, createLink,<br>createSymbolicLink, createTempDirectory, createTempFile                                                                                                                         |
| 이동             | move                                                                                                                                                                                                                                           |
| 삭제             | delete, deleteIfExists                                                                                                                                                                                                                         |
| 존재, <br>검색, 비교 | exists, notExists, find, mismatch                                                                                                                                                                                                              |
| 속성             | getLastModifiedTime, getOwner, getPosixFilePermissions,<br>isDirectory, isExecutable, isHidden, isReadable,<br>isSymbolicLink, isWritable, size,<br>setAttribute, setLastModifiedTime, setOwner, setPosixFilePermissions,<br> probeContentType |
| 디렉토리 탐색        | list, newDirectoryStream, walk                                                                                                                                                                                                                 |
| 데이터 입출력        | newInputStream, newOutputStream,<br>newBufferedReader, newBufferedWriter,<br>readAllBytes, lines, readAllLines, readString, readSymbolicLink,<br>write, writeString                                                                            |

위 메소드들은 매개값으로 `Path` 객체를 받는다. `Path` 객체는 파일이나 디렉토리를 찾기 위한 경로 정보를 가지고 있는데, 정적 메소드인 `get()` 메소드로 얻을 수 있다.
```java
Path path = Paths.get(String first, String... more);
```

`get()`메소드이 매개값은 파일 경로인데, 전체 경로를 한꺼번에 지정해도 되고, 상위 디렉토리와 하위 디렉토리를 나열해서 지정해도 된다.
```java
Path path = Paths.get("C:/Temp/dir/file.txt");
Path path = Paths.get("C:/Temp/dir", "file.txt");
Path path = Paths.get("C:", "Temp", "dir", "file.txt");
```

다음은 Files 클래스를 이용해서 Temp 디렉토리에 user.txt 파일을 생성하고 읽는 방법을 보여준다.
`FilesExample.java`
```java
package stream.ex19;  
  
import java.io.IOException;  
import java.nio.charset.Charset;  
import java.nio.file.Files;  
import java.nio.file.Path;  
import java.nio.file.Paths;  
  
public class FilesExample {  
    public static void main(String[] args) {  
        try {  
            String data = "" +  
                    "id: winter\n" +  
                    "email: winter@mycompany.com\n" +  
                    "tel: 010-123-1234";  
  
            //Path 객체 생성  
            Path path = Paths.get("/Users/g.u./Temp/user.txt");  
  
            //파일 생성 및 데이터 저장  
            Files.writeString(Paths.get("/Users/g.u./Temp/user.txt"), data, Charset.forName("UTF-8"));  
  
            //파일 정보 얻기  
            System.out.println("파일 유형: " + Files.probeContentType(path));  
            System.out.println("파일 크기: " + Files.size(path) + " bytes");  
  
            //파일 읽기  
            String content = Files.readString(path, Charset.forName("UTF-8"));  
            System.out.println(content);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
  
    }  
}
```
`[실행결과]`
```
파일 유형: text/plain
파일 크기: 56 bytes
id: winter
email: winter@mycompany.com
tel: 010-123-1234
```
`probeContentType()` 메소드는 파일 확장명에 따른 파일 유형을 리턴한다. 예를 들어, `.txt`파일은 `text/plain`으로, `jpg`파일은 `image/jpeg`로 리턴한다.

`Files`는 입출력 스트림을 사용하지 않아도 파일의 데이터를 쉽게 읽고 쓸 수 있다. 
`writeString()` 메소드는 문자열을 파일에 저장하고, 
`readString()` 메소드는 텍스트 파일의 내용을 전부 읽고 String으로 리턴한다.


