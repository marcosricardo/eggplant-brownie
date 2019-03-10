import UIKit


let name = "Lasagna"
let calories:Double = 50.5
let happiness:Int = 5

let lasagnaIsVegetable:Bool = false


func helloCalories(){
    print("Hello Calories")
}


helloCalories()


func add(name:String, calories:Double){
    print("adding \(name) with \(calories)")
}


add(name: "Lasagna", calories: 50.5)


// array
let totalCalories = [50.5, 100, 300, 500, 450]
print(totalCalories)


//laços

for i in 0...3{
    print(i)
    print("calories are  \(totalCalories[i]) ")
}

for i in 0...(totalCalories.count - 1){
    print("calories are  \(totalCalories[i]) ")
}

for calories in totalCalories {
    print(calories)
}


//let empty:Array<Int> = []

func allCalories(calories:Array<Double>) -> Double{
    var total:Double = 0
    for c in calories {
        total += c
    }
    
    print("Total: \(total)")
    return total
}

allCalories(calories: [50.5, 100, 300, 500, 450])


var notas:Array<Double> = [10, 10, 10, 10]
var soma:Double = 0
for nota in notas {
    soma += nota
}

//print("Média do aluno \(soma / notas.count)")

print("Média do aluno \(Double(soma) / Double(notas.count))")
