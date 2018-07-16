//
//  ViewController.swift
//  GoldMap
//
//  Created by Andrew Garner on 7/16/18.
//  Copyright © 2018 Andrew Garner. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var myLocation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMyLocation(_ sender: UIButton) {
        let annotation = MKPointAnnotation()
        let centerCoordinate = CLLocationCoordinate2D(latitude: 49.289390, longitude: -123.114350)
        annotation.coordinate = centerCoordinate
        annotation.title = "Vancouver"
        mapView.addAnnotation(annotation)
        
        let viewRegion = MKCoordinateRegionMakeWithDistance(centerCoordinate, 200, 200)
        mapView.setRegion(viewRegion, animated: true)
    }

}

