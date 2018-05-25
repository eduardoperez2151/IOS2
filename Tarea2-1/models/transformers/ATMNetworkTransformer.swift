//
//  ATMNetworkTransformer.swift
//  Tarea2-1
//
//  Created by SP22 on 24/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation
import ObjectMapper

class ATMNetworkTransformer: TransformType{
    
    typealias Object = ATMNetwork
    typealias JSON = String
    
    func transformFromJSON(_ value: Any?) -> ATMNetwork? {
        return ATMNetwork(rawValue: value as! String);
    }
    
    func transformToJSON(_ value: ATMNetwork?) -> String? {
        return nil
    }
    
}
