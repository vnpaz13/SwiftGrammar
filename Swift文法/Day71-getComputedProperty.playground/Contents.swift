class Sword {
    
    // 내구도
    var durability : Int = 100
    
    var itemInfo : String {
        
        switch durability {
        case 50...100:
            return "Hmm... pretty good"
        case 10...50:
            return "I can afford it"
        default:
            return "No more"
        }
    }
    func attackMonster(){
        self.durability -= 40
    }
}

let mySword = Sword()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo

mySword.attackMonster()
mySword.itemInfo
