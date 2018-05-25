//
//  Callout.swift
//  Tarea2-1
//
//  Created by SP22 on 23/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation

class CallOut {
    
    var address:String?
    var hasMoney:Bool?
    var acceptDeposit:Bool?
    var image:String?
    
    
    init(address:String, hasMoney:Bool, acceptDesposit:Bool, image:String){
        self.address = address
        self.acceptDeposit = acceptDesposit
        self.hasMoney = hasMoney
        self.image=image
        
    }
    
}

