//
//  ViewController.swift
//  HelloWorldNoIB
//
//  Created by 김종현 on 2018. 3. 5..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.yellow
        let myLabel = UILabel.init(frame: CGRect(x: 150.0, y: 100.0, width: 100, height: 30))
        myLabel.text = "Hello World!"
        view.addSubview(myLabel)
        
        let myButton = UIButton(frame: CGRect(x: 150.0, y: 200.0, width: 100, height: 60))
        myButton.setTitle("Press Me!", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.setTitleColor(UIColor.red, for: UIControlState.highlighted)
        myButton.backgroundColor = UIColor.cyan
        
        //myButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        myButton.addTarget(self, action: #selector(buttonPressed), for: UIControlEvents.touchUpInside)
        
        view.addSubview(myButton)
        
    }
    
    @objc func buttonPressed(sender: UIButton) {
        print("button pressed!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

