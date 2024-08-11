//
//  main.swift
//  protocols demo
//
//  Created by Gözde Aydin on 10.08.2024.
//
///  interfaces?
protocol CanFly{
    func fly()
}

class Bird{
    func layEgg(){
        print("eggz")
    }
}

//eagle class inherits from bird class and also can use fly method
class Eagle: Bird,CanFly{
    func fly() {
        //flies
    }
    func eagleStuff()
    {
        
    }}

//penguin is a "bird" but does not have fly ability
class Penguin:Bird {
    func swim(){
        //swims
    }
}

struct FlyingMouse{
    //canfly protocal used as data type
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

//airplanes can also fly
struct Airplane: CanFly{
    func fly() {
        //flies
    }
}

let myPenguin = Penguin()
let myPlane = Airplane()
let mouse = FlyingMouse()

myPenguin.layEgg()
myPenguin.swim()
myPlane.fly()
///anythin that can fly as parameter
//mouse.flyingDemo(flyingObject: <#T##any CanFly#>)

