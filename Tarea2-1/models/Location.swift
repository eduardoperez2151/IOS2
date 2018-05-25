//
//  Location.swift
//  Tarea2-1
//
//  Created by SP22 on 23/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation
import ObjectMapper

class Location: Mappable{
    
    var lat:String?
    var lng:String?
    
    init(lat:String, lng:String?){
        self.lng=lng
        self.lat=lat
    }
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        lng <- map["lng"]
        lat <- map["lat"]
    }
}
