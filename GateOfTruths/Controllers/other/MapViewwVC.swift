//
//  MapViewwVC.swift
//  GateOfTruths
//
//  Created by Apple on 06/02/22.
//

import UIKit
import MapKit
import CoreLocation

class MapViewwVC: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
    
    @IBOutlet var map: MKMapView!
    
    var ab = MKPointAnnotation()
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("manager",manager)
    }
    override func viewWillAppear(_ animated: Bool) {
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
        
        map.delegate = self
    }
    
    func render(_ location: CLLocation){
        let coordinates = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.1 , longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinates, span: span)
        map.setRegion(region, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinates
//        pin.title = "Mohali"
//        pin.subtitle = "Office"
        map.addAnnotation(pin)
    }
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
            manager.stopUpdatingLocation()
            render(location)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
                print("Error",error)
            }
    
    @IBAction func backTapped(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }

   
}
