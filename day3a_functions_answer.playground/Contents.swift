
func greet(person: String = "Nina", greeting: String = "Greetings,") -> String {
    let output = greeting + " " + person + "."
    return output
}


func coolGreet(guy: String = "Dude", phrase: String = "Hey,") -> String {
    return greet(person: guy, greeting: phrase)
}

func potato(a:Int, b:Int) -> Int {
        return a / b
}

func demo() {
    print(potato(a:9,b:10))

    let result = greet()
    print(result)
    print(greet())
}

func demo2(){
    print(greet(person: "kevin"))

    print(coolGreet( guy: "Joe" ))
    print(coolGreet( phrase: "Yo" ))
    print(coolGreet( guy: "Joe", phrase: "Yo" ))
}

demo2()
demo()

demo2()
demo()


