//
//  AppDelegate.swift
//  Pick Up Lines
//
//  Created by iMaxiOS on 10/7/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import UIKit

class PickUpLineCell: UITableViewCell {

    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    func configure(with pickUpLine: PikeUpLine) {
        lineLabel.text = pickUpLine.line
        scoreLabel.text = pickUpLine.scoreString()
        emailLabel.text = pickUpLine.email
    }

}
