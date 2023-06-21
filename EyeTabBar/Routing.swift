import SwiftUI

class Router: ObservableObject {
    @Published var tabSelection: Tab = .house
    @Published var isRoot: Bool = true
}
