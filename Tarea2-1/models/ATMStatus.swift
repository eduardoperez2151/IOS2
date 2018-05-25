//
//  ATMStatus.swift
//  Tarea2-1
//
//  Created by SP22 on 23/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import Foundation
enum ATMStatus:String {
    
    case normal = "normal"
    case tinted = "normal (with tint)"
    case exploded = "exploded"
    case outOfOrder = "out of order"
    
    
    func getStatusEmoji() -> Any {
        switch self {
            case .normal: return "✅"
            case .tinted: return "⭕️"
            case .exploded: return "💥"
            case .outOfOrder: return "⛔️"
        }
    }
    
    

}
