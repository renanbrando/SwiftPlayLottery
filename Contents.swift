//: Playground - noun: a place where people can play

import UIKit

enum Compass {
    case north
    case south
    case east
    case west
}


var heading:Compass = Compass.north
heading = .south

switch heading {
case .north:
    print("Going north")
case .south:
    print("Going south")
case .east:
    print("Going east")
case .west:
    print("Going west")
default:
    print("Wrong way pal")
}

enum Month {
    case january, february, march, april, may, june, july,
    august, september, october, november, december
}

enum WeekDay : String {
    case sunday = "domingo"
    case monday = "segunda"
    case tuesday = "terca"
    case wednesday = "quarta"
    case thursday = "quinta"
    case friday = "sexta"
}

print(WeekDay.sunday.rawValue)

enum Monthindex: Int{
    case january = 1, february, march, april, may, june, july,
    august, september, october, november, december
}

if let sunday = WeekDay(rawValue: "domingo"){
    print(sunday.hashValue, sunday.rawValue)
}

struct Driver {
    var name: String
    var registration: String
    var age: Int
    
    mutating func changeAge(newAge: Int){
        age = newAge
    }
}

let paula = Driver(name: "Paula Lima", registration: "23409-4", age:22)

var leonardo = paula
leonardo.name = "Leonardo Ferreira"
leonardo.registration = "34299-0"
leonardo.changeAge(newAge: 27)

print(paula.name, paula.age)


prefix operator |
prefix func | (value: String) -> String {
    return "|" + value + "|"
}

|"Renan"

pow(2,3)

pow(64, 0.5)

sqrt(81)

let value = -17
abs(value)


let dolar = 3.99
round(dolar)
floor(dolar)
ceil(dolar)

min(5, 9, 12, 0, 22, 14)
max(5, 9, 12, 0, 22, 14)

var teams = ["Palmeiras", "Sao Paulo", "Corinthians", "Santos", "Flamengo", "Fluminense", "Ramo", "Remo", "Chapecoense"]

for (index, team) in teams.enumerated(){
    print(index, team)
}

teams.min()
teams.max()

let teamsString = teams.joined(separator: ";")

var name = "Maria Fernanda Lima"
name.hasPrefix("A")
name.hasSuffix("o")

name.lowercased()
name.uppercased()

let teamsUppercased = teams.map({$0.uppercased()})

let ages = [29, 32, 38, 19, 34, 16, 36]
let agesCount = ages.reduce(0, {$0 + $1})
print(agesCount)


func doNothing(){}
doNothing()

func getNumberMonths() -> Int {
    return 12
}

let x1 = getNumberMonths()

func doubles(a: Int) -> Int {
    return 2 * a
}

let x2 = doubles(a: 10)

func sum(x: Int, y: Int) -> Int {
    return x + y
}

sum(x: 5, y: 6)

let student = "Renan Brando;23"
func getNameandAge(data: String) -> (name: String, age: Int){
    let student = data.components(separatedBy: ";")
    guard let name = student.first, let ageStr = student.last, let age = Int(ageStr) else {
        return ("", 0)
    }
    return (name, age)
}

getNameandAge(data: student)

func power(_ a: Double, _ b: Double = 2) -> Double {
    return pow(a,b)
}


power(3,3)

arc4random_uniform(10)

func contains(value: Int, interval: [Int]) -> Bool {
    if (interval.contains(value)){
        return false
    }
    return true
}


infix operator <->
func <-> (qtd: Int, max: Int) -> [Int] {
    var numbers: [Int] = []
    var i = 0
    var rand: Int
    while i <= qtd {
        rand = Int(arc4random_uniform(UInt32(max))) + 1
        while !contains(value: rand, interval: numbers) {
            rand = Int(arc4random_uniform(UInt32(max)))
        }
        numbers.append(rand)
        i = i+1
    }
    
    numbers.sort()
    
    return numbers
}

6<->50
















