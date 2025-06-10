//@main
struct classes{
    static func main(){
        var shape = Shape(name: "Heptagon")
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        print(shapeDescription)

        let mySquare = Square(lengthOfSides: 5.2, name: "square")
        print("Area: \(mySquare.area())")
        print("\(mySquare.simpleDescription())")

        let myCircle = Circle(radius: 2, name: "circle")
        print("\(myCircle.simpleDescription())")

        let myTriangle = EquilateralTriangle(sideLength: 3.5, name: "equilateral triangle")
        print("\(myTriangle.simpleDescription())")

        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAndSquare.square.lengthOfSides)
        // Prints "10.0"
        print(triangleAndSquare.triangle.sideLength)
        // Prints "10.0"
        triangleAndSquare.square = Square(lengthOfSides: 50, name: "larger square")
        print(triangleAndSquare.triangle.sideLength)
        // Prints "50.0"
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

    class Circle: Shape{
        var radius: Double

        init(radius: Double, name: String){
            self.radius = radius;
            super.init(name: name)
            numberOfSides = 0
        }

        func area() -> Double{
            return 3.14159 * (radius * radius)
        }
        
        override func simpleDescription() -> String {
            return "A \(name) with radius \(radius) and area \(area())"
        }
    }

    class EquilateralTriangle: Shape{
        var sideLength: Double

        init(sideLength: Double, name: String){
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 3
        }

        var perimiter: Double {
            get{return 3 * sideLength}
            set{sideLength = newValue/3.0}
        }

        override func simpleDescription() -> String {
            return "A \(name) with side length \(sideLength) and perimiter \(perimiter)."
        }
    }

    class TriangleAndSquare {
        var triangle: EquilateralTriangle {
            willSet {
                square.lengthOfSides = newValue.sideLength
            }
        }
        var square: Square {
            willSet {
                triangle.sideLength = newValue.lengthOfSides
            }
        }
        init(size: Double, name: String) {
            square = Square(lengthOfSides: size, name: name)
            triangle = EquilateralTriangle(sideLength: size, name: name)
        }
    }    
}