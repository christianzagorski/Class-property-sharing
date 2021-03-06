//
//  Class_property_sharingApp.swift
//  Shared
//
//  Created by Christian Zagorski on 8/2/21.
//

import SwiftUI

@main
struct Class_property_sharingApp: App {
    @StateObject var classInstanceWithProperty = ClassWithPropertyToShare()
    @StateObject var classInstanceNeedsProperty = ClassToSharePropertyWith()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(classInstanceWithProperty)
                .environmentObject(classInstanceNeedsProperty)
        }
    }
}
