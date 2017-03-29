//
//  ViewController.swift
//  dynamic-uibutton
//
//  Created by Hafiz Wahid on 29/03/2017.
//  Copyright © 2017 hw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aScrollView: UIScrollView!
    
    let gapBetweenButtons: CGFloat = 10
    let buttonCount = 3
    var aButton = UIButton()
    var xCoord: CGFloat = 10
    var buttonHeight: CGFloat?
    var buttonWidth: CGFloat?
    var margin: CGFloat?
    var centerY: CGFloat?
    var buttonCenterY: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        margin = CGFloat(0.3 * aScrollView.frame.height)
        buttonHeight = aScrollView.frame.height - margin!
        buttonWidth = buttonHeight
        
        centerY = aScrollView.frame.size.height/2
        buttonCenterY = centerY! - buttonHeight!/2
        
        
        var itemCount = 0
        
        for i in 0..<buttonCount {
            
            itemCount = i
            
            aButton = UIButton(type: .custom)
            
            //this
            aButton.frame = CGRect(x: xCoord, y: buttonCenterY!, width: buttonWidth!, height: buttonHeight!)
            
            aButton.backgroundColor = UIColor.blue
            aButton.layer.cornerRadius = aButton.frame.size.width / 2
            aButton.clipsToBounds = true
            
            xCoord += buttonWidth! + gapBetweenButtons
            
            aScrollView.addSubview(aButton)
            
        }
        //this
        let totalWidth = ((buttonWidth! + gapBetweenButtons) * CGFloat(buttonCount)) + 5
        
        //this
        aScrollView.contentSize = CGSize(width: totalWidth, height: aScrollView.frame.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

