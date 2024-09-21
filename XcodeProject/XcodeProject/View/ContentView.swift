import SwiftUI
import MapKit


struct MapView: UIViewRepresentable{
  
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 41.4966862, longitude: -81.6885754)//lieu géographique (France)
        let span = MKCoordinateSpan(latitudeDelta: 0.00, longitudeDelta: 0.01)//lieu géographique plus précis en plus de la localisation ci-dessus
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }

     
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

