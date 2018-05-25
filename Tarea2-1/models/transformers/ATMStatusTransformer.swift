//
//  ATMStatusTransformer.swift
//  Tarea2-1
//
//  Created by SP22 on 24/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation
import ObjectMapper
class ATMStatusTransformer: TransformType{
    
    typealias Object = ATMStatus
    typealias JSON = String
    
    func transformFromJSON(_ value: Any?) -> ATMStatus? {
        return ATMStatus(rawValue: value as! String);
    }
    
    func transformToJSON(_ value: ATMStatus?) -> String? {
        return nil
    }
}

