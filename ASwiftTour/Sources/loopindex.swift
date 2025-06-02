//@main
struct LoopIndex{
    static func main(){
        var total = 0
        for i in 0...4 {
            total += i
        }
        print(total)
        // Prints "6"
    }
}