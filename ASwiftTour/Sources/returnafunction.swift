//@main
struct ReturnAFunction{
    static func main(){
        //Function as a return value
        let increment = makeIncrementer()
        print("Function as return value: " + String(increment(7)))

        //Function as an argument
        let numbers = [20, 19, 7, 12]
        print("Function as argument: " + String(hasAnyMatches(list: numbers, condition: lessThanTen)))
    }

    //Functions are a first-class type. This means that a function can return another function as its value.
    static func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }

    //A function can take another function as one of its arguments.
    static func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    static func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
}