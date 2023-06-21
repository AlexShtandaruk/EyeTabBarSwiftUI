import SwiftUI

struct ContentView: View {
    
    @StateObject var router: Router = .init()
    
    var body: some View {
        MainTabView()
            .environmentObject(router)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
