import UIKit

class VirtualKetoru {
    var boilingTimer:Timer = Timer()
    var boilingCount = 0
    var boilingSwich = 1
    
    func boilingFunction() {
        if boilingSwich == 1 {
            
            boilingTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(boilingTime), userInfo: nil, repeats: true)
        } else {
            print("電源が入っていません")
        }
    }
    
    @objc func boilingTime() {
        boilingCount += 1
        if boilingCount == 5 {
            print("お湯が沸きました！！")
            boilingSwich = 0
            boilingTimer.invalidate()
            
        }
    }
}

let ketoru = VirtualKetoru()
ketoru.boilingFunction()
