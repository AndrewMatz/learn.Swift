@main
struct enumerations{
    static func main(){
        let ace = Rank.ace
        let aceRawValue = ace.rawValue
        print(aceRawValue)
        print(ace)
        
        let king = Rank.king
        print(king.winner(challenger: ace))

        let queen = Rank.queen
        print(queen.winner(challenger: king))

        print (king.winner(challenger: king))
    }
    
    enum Rank: Int {
        case ace = 1
        case two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king
    
        func simpleDescription() -> String {
            switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
            }
        }

        func winner(challenger: Rank) -> String{
            //let challenger = Rank(rawValue: challengerVal)

            if(self.rawValue > challenger.rawValue){
                return "\(self.simpleDescription()) defeats \(challenger.simpleDescription())"
            }
            else if(self.rawValue < challenger.rawValue){
                return "\(self.simpleDescription()) loses to \(challenger.simpleDescription())"
            }
            else{
                return "Result is a draw"
            }
        }
    }    
}