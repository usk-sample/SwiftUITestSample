//
//  ContentView.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text("Hello, world!")
                Text("\(self.viewModel.count)")
                    .tag(5)
                    .accessibilityIdentifier("count_label")
                Button.init("Increment") {
                    self.viewModel.increment()
                }
                NavigationLink.init("Next", destination: Text("Detail View"))
                    .accessibilityIdentifier("next_button")
            }
            
        }

    }    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init(count: 0))
    }
}
