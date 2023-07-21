/*const date = new Date();
console.log(date);
let year = date.getFullYear();
console.log(year);
// getMonth는 0부터 부여
let month = date.getMonth()+1;
console.log(month);
let day = date.getDate();
let hours = date.getHours();
let mins = date.getMinutes();
let secs = date.getSeconds();
//getDay()는 월요일이 1
let yoil = date.getDay();
console.log(day, yoil, hours, mins, secs);
// ""와 '' 혼용 가능
if(hours <5){
    console.log("일어날 준비");
}else if(hours >= 5 && hours < 7){
    console.log('기상');
}else{
    console.log('공부');
}
// ------------------------------------------------------
//배열 - 같은 타입아니여도 됨, index
let arr = [1, '나', 3, 4, 5];
arr[0] = '가';
console.log(arr);
console.log(arr.length);
let i = 0;
let arr1 = [1, 2, 3];
while(i < arr.length){
    console.log(arr1[i]);
    i++;
}
for(let i=0;i<arr1.length;i++){
    console.log(arr1[i]);
}
let output = 0;
for(let i=1;i<101;i++){
    output += i;
}
console.log(output);
// ------------------------------------------------------
function func() {
    console.log('function');
}
func();
/*1. 함수를 변수에 담을 수 있다. -> 함수를 파라미터로 전달 가능
2. 함수를 리턴 할 수 있다.
let func =function func() {
    console.log('function1');
};

func();
function callTenTimes(callback){
    for(var i = 0; i<10;i++){
        callback();
    }
    console.log(i);
    //var로 변수 선언한 경우 함수 안에서까지는 사용가능, let은 지역변수여서 i출력X
    
}
var callback = function() {
    console.log('function');
};
callTenTimes(callback);
// ---------------------------------------
//객체 선언 변수 : 값
let o = {
    v:'1'
}
console.log(o.v);
let mem1 = {
    id:'hong', pw : '1111'
    , name: '홍길동', age:22,
    getId:function() {
        return this.id;
    },
    setId:function(p_id){
        this.id=p_id;
    }
};
let id=mem1.getId();
console.log(id);
mem1.setId('Kim');
console.log(mem1.getId());
mem1.id='Lee';
console.log(mem1.id); //실질적으로 private역할은 못함.

console.log();



for(let i in mem1){
    console.log(i);
}*/
let mem1 = {
    id:'hong', pw : '1111'
    , name: '홍길동', age:22,
    getId:function () {
        this.id = id;
    }
};

console.log(mem1.id);
console.log(mem1['id']);
//  -->대괄호 안에 작은따옴표 표시 필요

for(let i in mem1){
    console.log(i,mem1[i]);
}

let arr= [1, 2, 3, 4, 5];
for (let i = 0; i < arr.length; i++) {
    console.log('a:',arr[i]);
}
for (const i in arr) {
    console.log('b:',arr[i]);
}
//of는 자기자신을 출력
for (const i of arr) {
    console.log('c:', i);    
}

let a = 3+'3'+'a';
console.log(a);