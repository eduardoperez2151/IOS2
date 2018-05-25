//
//  ATM.swift
//  Tarea2-1
//
//  Created by SP22 on 23/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//
import ObjectMapper
import Foundation
class ATM:Mappable {

    var id:Int?
    var location:Location?
    var address: String?
    var network:ATMNetwork?
    var status: ATMStatus?
    var hasMoney: Bool?
    var acceptsDeposits: Bool?
    var imageUrl:String?
    var openHours:String?
    
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        id <- map["id"]
        location <- map["location"]
        address <- map["address"]
        network <- (map["network"], ATMNetworkTransformer())
        status <- (map["status"], ATMStatusTransformer())
        hasMoney <- map["has_money"]
        acceptsDeposits <- map["accepts_deposits"]
        address <- map["address"]
        imageUrl <- map["image"]
    }

    
}
