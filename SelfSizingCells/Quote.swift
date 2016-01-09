//
//  Quote.swift
//  SelfSizingCells
//
//  Created by Arvindh Sukumar on 02/01/16.
//  Copyright © 2016 Arvindh Sukumar. All rights reserved.
//

import UIKit

class Quote: NSObject {
    var text: String!
    var imageName:String?
    var personName:String?
    
    convenience init(text:String!, imageName:String?, personName:String?) {
        self.init()
        self.text = text
        self.imageName = imageName
        self.personName = personName
    }
}
