/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ViewRow: View {
    let title: String
    let description: String
    let systemImage: String
    
    
    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .frame(width: 30)
                .font(.title)
                .foregroundColor(.accentColor)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text(description)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }.padding(10)
        }
    }
}

struct ViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ViewRow(title: "", description: "", systemImage: "")
    }
}
