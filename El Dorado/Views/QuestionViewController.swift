//
//  QuestionViewController.swift
//  El Dorado
//
//  Created by Jorge Raul Ovalle Zuleta on 2/27/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

class QuestionViewController: GenericViewController {

    var lblScore:UILabel!
    var lblQuestion:UILabel!
    
    var container:UIView!
    
    var btnAnswerA:EDButton!
    var btnAnswerB:EDButton!
    var btnAnswerC:EDButton!
    var btnAnswerD:EDButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addUIComponents()
        self.addUIConstraints()
    }
    
    func addUIComponents(){
        lblScore               = UILabel()
        lblScore.text          = "45 puntos"
        lblScore.font          = UIFont.FontLight(EDFontSize.M.rawValue)
        lblScore.textColor     = UIColor.whiteColor()
        lblScore.textAlignment = .Left
        lblScore.translatesAutoresizingMaskIntoConstraints = false
        lblScore.sizeToFit()
        self.view.addSubview(lblScore)
        
        container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(container)
        
        lblQuestion               = UILabel()
        lblQuestion.text          = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam"
        lblQuestion.font          = UIFont.FontLight(EDFontSize.M.rawValue)
        lblQuestion.textColor     = UIColor.whiteColor()
        lblQuestion.numberOfLines = 0
        lblQuestion.textAlignment = .Center
        lblQuestion.translatesAutoresizingMaskIntoConstraints = false
        lblQuestion.sizeToFit()
        self.container.addSubview(lblQuestion)
        
        btnAnswerA = EDButton(config: EDButtonConfig(type: .Normal, color: .Yellow))
        btnAnswerA.setTitle("Madrid".uppercaseString, forState: .Normal)
        btnAnswerA.tag = 1
        btnAnswerA.addTarget(self, action: Selector("tapOption:"), forControlEvents: .TouchUpInside)
        self.container.addSubview(btnAnswerA)
        btnAnswerB = EDButton(config: EDButtonConfig(type: .Normal, color: .LightOrange))
        btnAnswerB.setTitle("Hola?".uppercaseString, forState: .Normal)
        btnAnswerB.tag = 2
        btnAnswerB.addTarget(self, action: Selector("tapOption:"), forControlEvents: .TouchUpInside)
        self.container.addSubview(btnAnswerB)
        btnAnswerC = EDButton(config: EDButtonConfig(type: .Normal, color: .DarkOrange))
        btnAnswerC.setTitle("Hola?".uppercaseString, forState: .Normal)
        btnAnswerC.tag = 3
        btnAnswerC.addTarget(self, action: Selector("tapOption:"), forControlEvents: .TouchUpInside)
        self.container.addSubview(btnAnswerC)
        btnAnswerD = EDButton(config: EDButtonConfig(type: .Normal, color: .Red))
        btnAnswerD.setTitle("Hola?".uppercaseString, forState: .Normal)
        btnAnswerD.tag = 4
        btnAnswerD.addTarget(self, action: Selector("tapOption:"), forControlEvents: .TouchUpInside)
        self.container.addSubview(btnAnswerD)
    }
    
    func addUIConstraints(){
        let views = ["lblScore":lblScore,"lblQuestion":lblQuestion,"btnAnswerA":btnAnswerA,"btnAnswerB":btnAnswerB,"btnAnswerC":btnAnswerC,"btnAnswerD":btnAnswerD,"container":container]
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-74-[lblScore(16)]-[container]-20-|", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views))
        self.container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[lblQuestion]-20-[btnAnswerA(48)]-16-[btnAnswerB(48)]-16-[btnAnswerC(48)]-16-[btnAnswerD(48)]|", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[lblScore]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[container]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[lblQuestion]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[btnAnswerA]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[btnAnswerB]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[btnAnswerC]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[btnAnswerD]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
    }
    
    func tapOption(sender:UIButton){
        print(sender.tag)
    }
}
