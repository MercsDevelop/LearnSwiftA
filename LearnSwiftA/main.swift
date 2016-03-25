//
//  main.swift
//  LearnSwiftA
//
//  Created by Mercsjho on 16/3/13.
//  Copyright © 2016年 Mercsjho. All rights reserved.
//

import Foundation

print("Hello, World!")

//常量变量
var a = 1
var b = 3

let c = a+b
print(c)
//字符串拼接、类型
var str = "hello "
var s:String = "world"

str = str + "jzc"
str = "\(str),ydufsgvy + \(100)"
print(str)

//数组
var arr = ["hello",2,9.0]
print(arr)

var arr1 = []
//数组类型为string类型
var arr2 = [String]()

//字典
var dict = ["name":"1","age":"10"]
dict["sex"] = "male"
print(dict)
print(dict["age"])

//循环
var ar = [String]()
for index in 0..<10{
    ar.append("item \(index)")
}
print(ar)

for vale in ar{
    print(vale)
}

var i = 0
while i < ar.count{
    print(ar[i])
    i++
}

var dic = ["name":"jzc","age":"16"]
for (key,value) in dic{
    print("\(key),\(value)")
}

//流程控制
for index in 0..<10{
    if index%2 == 0{
        print(index)
    }
}
//可选
var myname:String?="jzc"
myname = nil
if let name = myname{
    print("hello \(name)")
}


//函数
func sayhello(name:String){
    print("hello \(name)")
}
sayhello("jzc")

func getnums()->(Int,Int){
    return(2,3)
}


//面向对象
class Hi{
    func sayhi(){
        print("jzc")
    }
}

class hello:Hi {
    override func sayhi() {
        print("hello jike")
    }
}


var hi = Hi()
hi.sayhi()


//枚举
enum sex{
    case male(Int,Int)
    case female(String)
}

var sundysex = sex.male

enum country:Int{
    case china = 1
    case usa = 2
}

var mycountry = country.china
switch mycountry{
case .china:
    print("china")
case .usa:
    print("usa")

}


//类的定义

/*class 类的关键字
  class 后面类名
*/
class Dog {
    init(){
        print("jzc")
    }
}

class person{
     //属性
     //官网上swift三种属性：储存，计算，类属性
     //在swift属性与其他语言的成员变量类似
    var name:String = ""
    
    //储存属性：主要存储一个对象的常量和变量（oc实例变量）
    //注意：⚠️储存属性必要赋初值
    var age:Int = 20
    //延迟储存属性:让资源在用到的时候再去加载，避免不必要的资源浪费
    lazy var dog:Dog = Dog()
    
    //计算属性：提供get,set方法，重写get,set，对属性值做简单运算
    var english:Int = 0
    var chinese:Int = 0
    var math:Int = 0
    //注意：⚠️计算属性不能赋初值
    var sum:Int{
        get{
            return english + chinese + math
        }
    }
    
    
    //类属性：用class修饰，只计算属性不存储,使用类调用类属性
    class var des:String{
        get{
            return "people"
        }
    }
    
    //行为 －> 方法
    func sleep(){
        print("people sleep")
    }
}

//p就是person类型的一个对象
var p = person()//默认的一个构造函数
p.name = "jzc"
print(p.name)

//方法使用（点语法）
p.sleep()

p.english = 90
p.chinese = 80
p.math = 100
print(p.sum)

print(person.des)

/*
1、属性封装了set，get方法
2、方法里封装了具体的代码块
3、类封装了属性和方法
4、一个项目封装好多类的内部实现
*/



//继承
/*
构造函数
一个对象创建完毕后，需使用构造函数对其进行初始化，也就是oc中的初始化
1、没有func关键字
2、没有返回值
*/
class Person{
    var name:String = ""
    var age:Int
    //每个类都有一个默认的构造函数
    init(){
        print("初始化方法")
        self.age = 0
    }
    
    //自定义构造函数
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
    
    //析构
    /*
    作用，一个对象释放资源的方法，就像OC中的delloc方法
    */
    //swift采用的ARC机制
    deinit{
        //做资源释放
        print("dead")
    }
    
    func sheep(){
        print("people sleep")
    }
}


class Man: Person {
    //重写父类方法关键字,默认的会自动调用父类的初始化方法
    override init() {
        super.init()
        print("男人")
    }
    //子类的优先级高于父类，要想同时使用，需加super关键字
    override func sheep(){
        super.sheep()
        print("男人睡觉")
    }
}

func f(){
    //var p2用"_"代替
    _ = Person()
}


var m = Man()

var p1 = Person(name: "jzc", age: 10)
print("name=\(p1.name),age=\(p1.age)")
print(p1)

print("**************")
f()
print("--------------")






















