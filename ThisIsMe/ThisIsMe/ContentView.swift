// 

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationStack{
            VStack {
                HeaderView()
                    .padding()
                List {
                    NavigationLink {
                        ContactsView()
                    } label: {
                        MenuItem(type: .contacts)
                    }

                    MenuItem(type: .skills)
                    MenuItem(type: .career)
                }
                .scrollDisabled(true)
            }
            .listStyle(.grouped)
            .navigationTitle("This is me!")
        }
    }
}

#Preview {
    ContentView()
}
