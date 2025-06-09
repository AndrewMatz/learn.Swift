@main
struct classes{
    static func main(){
        var shape = Shape()
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        print(shapeDescription)
    }
    class Shape {
        var numberOfSides = 0
        let text = "A shape with "

        func simpleDescription() -> String {
            return "\(text) \(numberOfSides) sides."
        }
        func simpleFunc(x: String){
            print("This function does nothing")
        }
    }
}