//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
    }
}
