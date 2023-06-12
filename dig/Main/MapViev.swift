import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
         center: CLLocationCoordinate2D(latitude: 34.98725582167116, longitude: 137.08520699659437),
         span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.002)
     )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height:400)
            .clipShape(Rectangle())
            .overlay{
                Rectangle()
                    .stroke(Color(red: 236/255, green: 226/255, blue: 225/255, opacity: 1),lineWidth: 4)
            }
            .padding(EdgeInsets(
                top: 5,
                leading: 15,
                bottom: 0,
                trailing: 15
            ))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
