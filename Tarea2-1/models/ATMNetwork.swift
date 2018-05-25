//
//  ATMNetwork.swift
//  Tarea2-1
//
//  Created by SP22 on 23/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation
enum ATMNetwork:String {
    
    case redBrou = "RedBROU"
    case banRed = "Banred"
    
    func getImage() -> String {
        switch self {
        case .redBrou :return "redbrou"
        case .banRed:return "banred"
        }
    }
}
