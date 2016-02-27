//
//  GenericViewController.swift
//  El Dorado
//
//  Created by Jorge Raul Ovalle Zuleta on 2/24/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.EDDarkGray()
        
        let pattern = UIView(frame: self.view.bounds)
        pattern.backgroundColor = UIColor(patternImage: UIImage(named: "bg_pattern")!)
        self.view.addSubview(pattern)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
