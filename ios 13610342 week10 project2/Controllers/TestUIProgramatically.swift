//
//  TestUIProgramatically.swift
//  ios 13610342 week10 project2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class TestUIProgramatically: UIViewController{
    
    var bmiValue = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = bmiValue
//        label.text = "bmiValue" //ไม่ได้นาจา
//        label.text = bmiValue //ต้องแบบนี้
        label.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        view.addSubview(label)
    }
}
