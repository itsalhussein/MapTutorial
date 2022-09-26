//
//  ViewController.swift
//  MapTutorial
//
//  Created by Hussein Anwar on 26/09/2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 30.033333
, longitude: 31.233334)
        setInitialLocation(location: initialLocation, distance: 1000)
        addAnnotation()
    }

    
    func setInitialLocation(location: CLLocation, distance: CLLocationDistance) {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
//        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
        
    }
    
    func addAnnotation(){
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 30.033333, longitude: 31.233334)
        mapView.addAnnotation(pin)
    }

}

