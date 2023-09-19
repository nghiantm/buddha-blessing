/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct AboutUsView: View {
    
    var body: some View {
        VStack {
            Text("About Us")
                .font(Font.custom("Baskerville", size: 36))
                .padding(EdgeInsets(top: -100, leading: 0, bottom: 0, trailing: 0))
                .fontWeight(.bold)
                .padding()

            Text("This app goes out to my partner, Chi.")
                .font(Font.custom("Baskerville", size: 20))
                .padding(EdgeInsets(top: -80, leading: 0, bottom: 0, trailing: 0))
                .italic()
            
            Text("Buddha's Blessing provides a virtual platform for Buddhists from all around the world. As an international student, I find it difficult to make offering outside of my home country. My app aims to allow everyone to be able to follow their faith, no matter where they are.")
                .font(Font.custom("Baskerville", size: 26))
                .padding(EdgeInsets(top: -50, leading: 0, bottom: 0, trailing: 0))
                .frame(width: 330)
                .multilineTextAlignment(.center)
            
            Text("- Matt Nguyen -")
                .font(Font.custom("Baskerville", size: 24))
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                .italic()
        }
    }
    
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
