import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var ItemData : ItemData
    
    struct Point: Identifiable {
        let id = UUID()
        let latitude: Double
        let longitude: Double
        var coordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }
    
    let place2 = [Point(latitude: 34.98725582167116, longitude: 137.08520699659437),
                  Point(latitude: 34.99, longitude: 137.08520699659437),
                  Point(latitude: 34.989, longitude: 137.08520699659437),
                  Point(latitude: 34.992, longitude: 137.08520699659437)]
    
    @State private var region = MKCoordinateRegion(
         center: CLLocationCoordinate2D(latitude: 34.98725582167116, longitude: 137.08520699659437),
         span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.002)
     )
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true,userTrackingMode: .constant(MapUserTrackingMode.follow), annotationItems: place2,
            annotationContent:{ point in MapAnnotation(coordinate: point.coordinate,
                                                       anchorPoint: CGPoint(x: 1, y: 1),
                                                       content: {
                                                        Button(action: {ItemData.pageFlag = true}) {
                                                            VStack {
                                                                Text("すずめ").bold()
                                                                false
                                                                ? Image(systemName: "camera.macro.circle.fill").foregroundColor(.green).font(.system(size: 35))
                                                                : Image(systemName: "pawprint.circle.fill").foregroundColor(.red).font(.system(size: 35))
                                                            }
                                                        }.fullScreenCover(isPresented: $ItemData.pageFlag) {PageView()}
                                                       })}
                                                   )
        .frame(height:400)
            .clipShape(Rectangle())
            .overlay{
                Rectangle()
                    .stroke(Color(red: 236/255, green: 226/255, blue: 225/255, opacity: 1),lineWidth: 4)
            }
            .padding(EdgeInsets(
                top: 20,leading: 15,bottom: 0,trailing: 15
            ))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject(ItemData())
            .environmentObject(PageData())
    }
}


//leaf.circle.fill
//pawprint.circle.fill
//star.square.fill
