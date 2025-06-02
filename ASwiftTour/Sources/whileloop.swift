//@main 
struct WhileLoop{
    static func main(){
        var n = 2
        while n < 100 {
            n *= 2
        }
        print(n)
        // Prints "128"


        var m = 2
        repeat {
            m *= 2
        } while m < 0
        print(m)
        // Prints "128"
    }
}