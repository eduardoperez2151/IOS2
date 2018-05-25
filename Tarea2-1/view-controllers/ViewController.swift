//
//  ViewController.swift
//  Tarea2-1
//
//  Created by SP22 on 16/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit
import MapKit
import Alamofire

class ViewController: UIViewController {

   
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadMap()
    }
    
    func loadMap() {
        RestApi().getAllAtms(callback: addAnnotations)
    }
    
    func addAnnotations(atms:[ATM]?)->Void{
        
        atms?.forEach( { (atm:ATM) in
            guard let latitude = Double(atm.location!.lat!), let longitude=Double(atm.location!.lng!) else{
                return
            }
            let marker = Marker(title: "qweqw", locationName: "qweqweqw", discipline: "qweqwe", coordinate: CLLocationCoordinate2D(latitude: Double(latitude), longitude: Double(longitude)))
            map.addAnnotation(marker)
        })
    }

}

