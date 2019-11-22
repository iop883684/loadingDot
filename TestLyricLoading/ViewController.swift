//
//  ViewController.swift
//  TestLyricLoading
//
//  Created by Le Hoang Do on 2/13/19.
//  Copyright © 2019 Le Hoang Do. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dotView:DotCountView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dotView = DotCountView.creatView(number: 5)
        view.addSubview(dotView)
        dotView.center = view.center
        
    }
    
    @IBAction func runAnimation(){
        
        dotView.runAnimation()
        
    }


}

