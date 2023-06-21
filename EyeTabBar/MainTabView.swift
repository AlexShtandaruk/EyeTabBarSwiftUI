import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject var router: Router
    
    //flag: Bool
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                TabView(selection: $router.tabSelection) {
                    HouseView()
                        .tag(Tab.house)
                    
                    BookmarkView()
                        .tag(Tab.bookmark)
                    
                    MessageView()
                        .tag(Tab.message)
                    
                    PersonView()
                        .tag(Tab.person)
                }
            }
            // custom tab bar...
            CustTabBar(selectedTab: $router.tabSelection)
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(ConfigManager.shared.router)
    }
}

// MARK: - Enum views

enum Tab: String, CaseIterable {
    case house
    case bookmark
    case message
    case person
}

// all subview

struct HouseView: View{
    
    var body: some View {
        NavigationView {
            Text("House")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .navigationTitle("House")
        }
    }
}

struct BookmarkView: View{
    
    var body: some View {
        NavigationView {
            Text("Bookmark")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .navigationTitle("Bookmark")
        }
    }
}

struct MessageView: View{
    
    var body: some View {
        NavigationView {
            Text("Message")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .navigationTitle("Message")
        }
    }
}

struct PersonView: View{
    
    var body: some View {
        NavigationView {
            Text("Person")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .navigationTitle("Person")
        }
    }
}
