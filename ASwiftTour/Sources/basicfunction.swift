//@main
struct BasicFunction{
    static func main(){
        print(greet(person: "Bob", lunchSpecial: "Tacos"))//day: "Tuesday"))
    }
    static func greet(person: String, lunchSpecial: String) -> String {//day: String) -> String {
        return "Hello \(person), today's lunch special is \(lunchSpecial)."// today is \(day)."
    }
}