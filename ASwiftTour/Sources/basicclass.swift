@main
struct classes{
    static func main(){
        var shape = Shape(name: "Heptagon")
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        print(shapeDescription)

        let mySquare = Square(lengthOfSides: 5.2, name: "square")
        print("Area: \(mySquare.area())")
        print("\(mySquare.simpleDescription())")
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

    class Square: Shape{
        var lengthOfSides: Double
        
        init (lengthOfSides: Double, name: String){
            self.lengthOfSides = lengthOfSides
            super.init(name: name)
            numberOfSides = 4;
        }

        func area() -> Double{
            return lengthOfSides * lengthOfSides;
        }

        override func simpleDescription() -> String {
            return "A \(name) with sides of length \(lengthOfSides).";
        }
    }
}