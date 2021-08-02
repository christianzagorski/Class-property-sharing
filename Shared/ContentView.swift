//
//  ContentView.swift
//  Shared
//
//  Created by Christian Zagorski on 8/2/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var classInstanceWithProperty: ClassWithPropertyToShare
    @EnvironmentObject var classInstanceNeedsProperty: ClassToSharePropertyWith
    
    var body: some View {
        Text("\(classInstanceWithProperty.propertyToShare.firstName) is a bloody legend")
            .padding()
        // Another side question... is there a way to create a shortened version of the above variable that still references this class.property.property for use in the view?
        Button(action: {
            classInstanceNeedsProperty.mutateProperty()
        }, label: {
            Text("click to change person")
        })
    }
}

class ClassWithPropertyToShare: ObservableObject {
    @Published var propertyToShare = ModelStruct()
}

class ClassToSharePropertyWith: ObservableObject {
    @Published var foo = "bar"
    func mutateProperty() {
        // How can I access classInstanceWithProperty.propertyToShare within this class, and mutate it as needed?
    }
}

struct ModelStruct {
    var firstName = "Philip"
    var lastName = "Berner"
}
