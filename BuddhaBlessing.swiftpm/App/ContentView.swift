/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
                List {
                    HStack {
                        Spacer()
                        Text("Buddha's Blessing")
                            .font(Font.custom("Zapfino", size: 28))
                            .padding(EdgeInsets(top: -10, leading: 0, bottom: -12, trailing: 0))
                        Spacer()
                    }
                        .frame(width: UIScreen.main.bounds.width) //fill the box
                    .background(
                        Image("PatternBG")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.2) //reduce opacity
                            .frame(width: UIScreen.main.bounds.width) //fill the box
                    )
                    NavigationLink(destination: BuddhaView()) {
                        ViewRow(title: "Offer to Buddha", description: "'Enlightened One' who taught the path to end suffering.", systemImage: "hands.clap")
                    }
                    .background(
                        Image("PatternBG")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.2)
                            .frame(width: UIScreen.main.bounds.width)
                    )
                    NavigationLink(destination: BodhisattvaView()) {
                        ViewRow(title: "Offer to Avalokitasvara", description: "A Bodhisattva who selflessly helps those who call upon her.", systemImage: "hands.clap")
                    }
                    .background(
                        Image("PatternBG")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.2)
                            .frame(width: UIScreen.main.bounds.width)
                    )
                    NavigationLink(destination: MaitreyaView()) {
                        ViewRow(title: "Offer to Maitreya", description: "The future Buddha who guides to happiness and prosperity.", systemImage: "hands.clap")
                    }
                    .background(
                        Image("PatternBG")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.2)
                            .frame(width: UIScreen.main.bounds.width)
                    )
                    NavigationLink(destination: QuoteView()) {
                        ViewRow(title: "Quote of the Day", description: "Daily doses of wisdom from Buddhism to inspire your mind.", systemImage: "brain.head.profile")
                    }
                        .background(
                            Image("PatternBG")
                                .resizable()
                                .scaledToFill()
                                .opacity(0.2)
                                .frame(width: UIScreen.main.bounds.width)
                        )
                    NavigationLink(destination: AboutUsView()) {
                        ViewRow(title: "About Us", description: "Find out more about the author and our misison.", systemImage: "person.crop.circle.dashed")
                    }
                    .background(
                        Image("PatternBG")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.2)
                            .frame(width: UIScreen.main.bounds.width)
                    )
                }
            } detail: {
            }
            .accentColor(Color("BrightYellow"))
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
