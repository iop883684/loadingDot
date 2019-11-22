//
//  DotCountView.swift
//  TestLyricLoading
//
//  Created by Le Hoang Do on 2/13/19.
//  Copyright © 2019 Le Hoang Do. All rights reserved.
//

import UIKit

class DotCountView: UIView {
    
    var dotArr = [UIView]()
    var countDown = 0
    var timer:Timer?

    class func creatView(number:Int)->DotCountView{
        
        let dotView = DotCountView(frame: CGRect(x: 0, y: 0, width: number*12, height: 10))
        dotView.backgroundColor = UIColor.clear
        dotView.addDot(number: number)
        return dotView
        
    }
    
    func addDot(number:Int){
        
        for i in 0..<number{
            let circle = UIView(frame: CGRect(x: i*12, y: 0, width: 10, height: 10))
            circle.backgroundColor = UIColor.green
            circle.layer.cornerRadius = 5
            self.addSubview(circle)
            dotArr.append(circle)
        }
        
    }
    
    func runAnimation(){
        
        self.isHidden = false
        countDown = dotArr.count
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(animationLoop), userInfo: nil, repeats: true)
        
    }
    
    @objc func animationLoop(){
        
        countDown -= 1
        
        print(countDown)
        
        if countDown < 0{
            timer?.invalidate()
            resetDot()
            return
        }
        let currentDot = dotArr[countDown]
        UIView.animate(withDuration: 0.3) {
            currentDot.alpha = 0
        }
        
    }
    
    func resetDot(){
        
        self.isHidden = true
        for i in 0..<dotArr.count{
            let circle = dotArr[i]
            circle.alpha = 1
        }
        
    }

}
