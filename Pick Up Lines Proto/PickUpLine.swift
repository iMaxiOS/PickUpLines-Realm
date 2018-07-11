//
//  AppDelegate.swift
//  Pick Up Lines
//
//  Created by iMaxiOS on 10/7/18.
//  Copyright © 2018 Maxim Granchenko. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class PikeUpLine: Object {
    dynamic var line: String = ""
    let score = RealmOptional<Int>()
    dynamic var email: String? = nil
    
    convenience init(line: String, score: Int?, email: String?) {
        self.init()
        self.line = line
        self.score.value = score
        self.email = email
    }
    
    func scoreString() -> String? {
        guard let score = score.value else { return nil }
        return String(score)
    }
}
