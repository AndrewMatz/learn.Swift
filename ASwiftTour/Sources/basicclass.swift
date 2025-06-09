@main
struct classes{
    static func main(){
        var shape = Shape(name: "Heptagon")
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        print(shapeDescription)
    }
    class Shape {
        var numberOfSides = 0
        var name: String

        init (name: String){
            self.name = name;
        }

        func simpleDescription() -> String {
            return "A \(name) has \(numberOfSides) sides."
        }
    }
}