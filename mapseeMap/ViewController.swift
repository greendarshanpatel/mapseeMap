//
//  ViewController.swift
//  mapseeMap
//
//  Created by Darshan Patel on 23/01/18.
//  Copyright © 2018 Darshan Patel. All rights reserved.
//




import UIKit
import GoogleMaps
    
class ViewController: UIViewController {
        
        // You don't need to modify the default init(nibName:bundle:) method.
        
    override func viewDidLoad() {
    super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
    
    override func loadView() {
            // Create a GMSCameraPosition that tells the map to display the
            // coordinate -33.86,151.20 at zoom level 6.
            let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            view = mapView
            
            // Creates a marker in the center of the map.
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
            marker.title = "Sydney"
            marker.snippet = "Australia"
            marker.map = mapView
        }
    }




