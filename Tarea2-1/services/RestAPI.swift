//
//  RestAPI.swift
//  Tarea2-1
//
//  Created by SP22 on 23/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class RestApi{
    
    let url="http://ucu-atm.herokuapp.com/api/atm"
    
    func getAllAtms( callback:@escaping ([ATM]?)->()){
        Alamofire.request(url).responseArray { (response: DataResponse<[ATM]>) in
            if let atmList=response.result.value  {
                callback(atmList)
            }else{
                callback(nil)
            }
        }
        
    }
    
}
