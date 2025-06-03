@main
struct nestedFunction{
    static func main(){
        func returnFifteen() -> Int {
            var y = 10
            func add() {
                y += 5
            }
            add()
            return y
        }        
        print(returnFifteen())
    }

}