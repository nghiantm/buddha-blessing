/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct BuddhaView: View {
    
    @State private var animate = false
    @State private var bigIncenseVisible = true
    @State private var smallIncenseVisible = false
    @State private var tutoTextVisible = true
    @State private var resetTextVisible = false
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Image("YellowBG")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.top)
                        .edgesIgnoringSafeArea(.bottom)
                    
                    VStack {
                        Text("The Buddha")
                            .font(Font.custom("Baskerville", size: 36))
                            .foregroundColor(Color("OffWhite"))
                            .padding(EdgeInsets(top: -40, leading: 0, bottom: -2, trailing: 0))
                            .edgesIgnoringSafeArea(.top)
                            .offset(x: -3)
                        
                        Image("BuddhistShrineThichCa_2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(EdgeInsets(top: 0, leading: 110, bottom: 40, trailing: 110))
                    }
                    VStack {
                        ZStack {
                            Image("PhatThuFruit")
                                .resizable()
                                .scaleEffect(0.10)
                                .offset(x: -100, y: 103)
                            
                            Image("PeachFruit")
                                .resizable()
                                .scaleEffect(0.08)
                                .offset(x: 80, y: 105)
                            
                            Image("ThreeIncense")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 350)
                                .padding(EdgeInsets(top: 340, leading: 0, bottom: 0, trailing: 0))
                                .offset(y: animate ? 100 : 0)
                                .opacity(bigIncenseVisible ? 1.0 : 0.0)
                                .onLongPressGesture {
                                    withAnimation(Animation.spring(response: 0.8)) {
                                        animate.toggle()
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.spring(response: 0.8)) {
                                            animate.toggle()
                                        }
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.9) {
                                        withAnimation(.easeOut(duration: 0.4)) {
                                            bigIncenseVisible.toggle()
                                        }
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.4) {
                                        withAnimation(.easeOut(duration: 0.4)) {
                                            smallIncenseVisible.toggle()
                                            tutoTextVisible.toggle()
                                            resetTextVisible.toggle()
                                        }
                                    }
                                }
                            Button("Offer Again") {
                                withAnimation(.easeIn(duration: 0.4)) {
                                    resetTextVisible.toggle()
                                    smallIncenseVisible.toggle()
                                    tutoTextVisible.toggle()
                                    bigIncenseVisible.toggle()
                                }
                            }
                                .font(Font.custom("Baskerville", size: 24))
                                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                                .background(Color("AltarBrown"))
                                .foregroundColor(Color("OffWhite"))
                                .cornerRadius(10)
                                .offset(y: 328)
                                .opacity(resetTextVisible ? 1.0 : 0.0)
                        }
                        Text("Tap and hold the incense")
                            .font(Font.custom("Baskerville", size: 22))
                            .foregroundColor(Color("OffWhite"))
                            .opacity(tutoTextVisible ? 1.0 : 0.0)
                    }
                    
                    Image("ThreeIncense")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 130)
                        .padding(EdgeInsets(top: 140, leading: 0, bottom: 0, trailing: 0))
                        .opacity(smallIncenseVisible ? 1.0 : 0.0)
                }
            }
        }
    } //end parent Vstack
    
}

struct BuddhaView_Previews: PreviewProvider {
    static var previews: some View {
        BuddhaView()
    }
}
