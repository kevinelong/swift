// 1. Write a function named min that takes an Array of Integers and returns the smallest integer
// 2. Next write a function named max that takes an Array of Integers and returns the largest integer
// 3. Finally write a function named avg that takes a list of integers and returns a Float representing the Average value in the list

func min(list:Array<Int>) -> Int{
    var index:Int = 0
    var smallest:Int = 0
    
    for item in list{
    
        if 0 == index {
            
            smallest = item
        
        }else{
            
            if item < smallest {
                smallest = item
            }
            
        }
        
        index += 1
    }
    
    return smallest
}

func avg(_ list:Array<Int>) -> Float{
    var total:Int = 0
    
    for item in list{
        total += item
    }
    
    return Float(total) / Float(list.count)
}


func avgCountless(_ list:Array<Int>) -> Double{
    var count:Int = 0
    var total:Int = 0

    for item in list{
        total += item
        count += 1
    }
    
    return Double(total) / Double(count)
}

/*** TEST ***/

//Sample Data
let p = [123,597,631,61,93,509]

//Test function
print(min(list:p))

print(avg(p))

print(avgCountless(p))

print(Int.random(in:1...6))
