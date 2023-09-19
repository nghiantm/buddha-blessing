/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct QuoteView: View {

    @State private var quotes = ""
    
    var body: some View {
        ZStack {
            Image("YellowBG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.top)
                .edgesIgnoringSafeArea(.bottom)
            
            VStack {
                Text("Buddhism Quotes")
                    .font(Font.custom("Baskerville", size: 40))
                    .foregroundColor(Color("OffWhite"))
                
                Text(quotes)
                    .padding()
                    .font(Font.custom("Baskerville", size: 28))
                    .frame(minHeight: 400)
                    .frame(width:350)
                    .multilineTextAlignment(.center)
                    .offset(y: -45)
                
                Button("Get a Dose of Widsom") {
                    quotes = information.quotes.randomElement()!
                }
                    .font(Font.custom("Baskerville", size: 26))
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                    .background(Color("AltarBrown"))
                    .foregroundColor(Color("OffWhite"))
                    .cornerRadius(10)
                    .offset(y: -70)
            } //Vstack end
            .padding()
        } //Zstack end
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
