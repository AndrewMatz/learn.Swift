@main
struct TulpleFunction {
    static func main(){
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
        print(statistics.min)
        // Prints "3"
        print(statistics.1)
        // Prints "100"
        print(statistics.sum)
        // Prints "120"
    }
    static func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
    
    
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
    
    
        return (min, max, sum)
    }
}