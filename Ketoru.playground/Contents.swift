import UIKit

class VirtualKetoru {
    var boilingTimer:Timer = Timer()
    var boilingCountUp = 0
    var boilingSwich = 1
    var AmountOfWater = 0
    
    func boilingFunction() {
        let boilingOn = 1
        let notWater = 0
        guard AmountOfWater != notWater else {
            print("故障しましたマジです！")
            return
        }
        if boilingSwich == boilingOn {
            
            boilingTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(boilingTime), userInfo: nil, repeats: true)
        } else {
            print("電源が入っていません")
        }
    }
    
    @objc func boilingTime() {
        let boilingSetCount = 5
        boilingCountUp += 1
        if boilingCountUp == boilingSetCount {
            print("お湯が沸きました！！")
            boilingSwich = 0
            boilingTimer.invalidate()
            
        }
    }
}

let ketoru = VirtualKetoru()
ketoru.boilingFunction()
