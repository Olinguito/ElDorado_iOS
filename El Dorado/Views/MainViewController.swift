//
//  MainViewController.swift
//  El Dorado
//
//  Created by Jorge Raul Ovalle Zuleta on 2/25/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

class MainViewController: GenericViewController {

    var imgCover:UIImageView!
    var imgProfile:UIImageView!
    
    var lblScore:UILabel!
    var lblUsername:UILabel!
    var lblLevel:UILabel!
    
    var tblLevels:UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addUIComponents()
        self.addUIConstraints()
//        self.title = "el dorado"
    }

    func addUIComponents(){
        imgCover = UIImageView()
        imgCover.backgroundColor = UIColor.redColor()
        imgCover.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imgCover)
        
        lblScore = UILabel()
        lblScore.text = "45 puntos"
        lblScore.font = UIFont.FontLight(EDFontSize.M.rawValue)
        lblScore.sizeToFit()
        lblScore.translatesAutoresizingMaskIntoConstraints = false
        imgCover.addSubview(lblScore)
        
        
        imgProfile = UIImageView()
        imgProfile.backgroundColor = UIColor.blueColor()
        imgProfile.translatesAutoresizingMaskIntoConstraints = false
        imgProfile.frame.size = CGSize(width: 80, height: 80)
        imgProfile.layer.borderColor = UIColor.EDGreen().CGColor
        imgProfile.layer.borderWidth = 2
        imgProfile.layer.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.6).CGColor
        imgProfile.layer.shadowOffset = CGSize(width: 82, height: 82)
        imgProfile.layer.cornerRadius = 40
        imgProfile.layer.masksToBounds = true   
        imgCover.addSubview(imgProfile)
        
        
        lblUsername = UILabel()
        lblUsername.text = "José Maria llego"
        lblUsername.font = UIFont.FontLight(EDFontSize.M.rawValue)
        lblUsername.sizeToFit()
        lblUsername.translatesAutoresizingMaskIntoConstraints = false
        imgCover.addSubview(lblUsername)
        
        
        lblLevel = UILabel()
//        lblLevel.text = "CHIVATO"
        lblLevel.text = "TEST"
        lblLevel.font = UIFont.FontRegular(EDFontSize.S.rawValue)
        lblLevel.sizeToFit()
        lblLevel.translatesAutoresizingMaskIntoConstraints = false
        imgCover.addSubview(lblLevel)
        
        
        tblLevels = UITableView()
        tblLevels.backgroundColor = UIColor.greenColor()
        tblLevels.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tblLevels)
    }
    
    func addUIConstraints(){
        let views = ["imgCover":imgCover, "tblLevels":tblLevels, "lblScore":lblScore, "imgProfile":imgProfile, "lblUsername":lblUsername, "lblLevel":lblLevel]
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-64-[imgCover(200)]-0-[tblLevels]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[imgCover]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        imgProfile.addConstraint(NSLayoutConstraint(item: imgProfile, attribute: .Width  , relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 80))
        self.view.addConstraint(NSLayoutConstraint(item: imgProfile, attribute: .CenterX, relatedBy: .Equal, toItem: imgCover, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: lblUsername, attribute: .CenterX, relatedBy: .Equal, toItem: imgCover, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: lblLevel, attribute: .CenterX, relatedBy: .Equal, toItem: imgCover, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: imgProfile, attribute: .CenterY, relatedBy: .Equal, toItem: imgCover, attribute: .CenterY, multiplier: 1, constant: 0))
        imgCover.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-15-[lblScore]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        imgCover.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-7-[lblScore]", options: .AlignAllCenterX, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[imgProfile(80)]-[lblUsername]-0-[lblLevel]", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tblLevels]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
    }
}
