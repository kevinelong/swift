/*  1. Create a function called roll that takes a quantity of dice to be rolled and a number of sides on each die and returns the total for that many dice being rolled e.g. quantity 3 and sides 6 would return a number in the range 3 to 18
 
    2. Roll 100 times using a for loop and a range
 
    3. calculate the average
 
    4. track how many times each possible value occurs using a Dictionary

    EXTRA CREDIT
        How would you create a simple bar graph like this?
 3  *******
 ...
 9  ***********
 ...
 18 *******

    How could you make it fit on the screen if we rolled 100,000,000 times?
 */

func roll(_ quantity:Int = 1, _ sides:Int = 6) -> Int{
    
    var total = 0
    
    for _ in 1...quantity{
        total += Int.random(in: 1...sides)
    }
    
    return total
}

print( roll(3,6) )

func printAverage(times:Int){
    var count = 0.0
    var total = 0.0
    
    for _ in 1...times {
        total += Double(roll(3,6))
        count += 1
    }
    
    print(total / count)

}
printAverage(times:100)

func trackAverage(times:Int, quantity:Int = 3, sides:Int = 6) -> [Int:Int]{
    var results: Array<Int> = []
    var history : [Int:Int] = [:]

    let max = quantity * sides
    
    //Clear all to zero
    for key in quantity...max{
        history[key] = 0
    }
    
    for _ in 1...times {
        results.append(roll(quantity,sides))
    }

    for r in results {
        history[r]! += 1
    }

    //DISPLAY
    for count in quantity...max{
        print("KEY = \(count) QUANTITY = \(history[count]!)")
    }
    return history
}

trackAverage(times: 1000)

