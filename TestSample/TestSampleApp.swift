//
//  TestSampleApp.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import SwiftUI

@main
struct TestSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: .init(count: 0))
        }
    }
}
