//
//  MapaView.swift
//  sklep-ios-rest
//
//  Created by Mike Crow on 24/02/2021.
//

import SwiftUI
import UIKit
import MapKit
import CoreLocation

struct Miejsce: Identifiable {
    var id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
      CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
  }


struct MapaView: View {
    let Miejsca = [
        Miejsce(name: "UJ", latitude: 50.0246289, longitude: 19.8924691),
        Miejsce(name: "Syrena", latitude:  52.24074798577664, longitude: 21.032296177531563),
        Miejsce(name: "Ornitolodzy", latitude: 54.3494143504969, longitude: 18.80156135817891)
    ]
    
    @State var coordinateRegion = MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 52, longitude: 19),
      span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    var body: some View {
      Map(coordinateRegion: $coordinateRegion,
          annotationItems: Miejsca) { place in
        MapMarker(coordinate: place.coordinate, tint: .green)
      }.edgesIgnoringSafeArea(.all)
    }
  }
        
struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView()
    }
}
