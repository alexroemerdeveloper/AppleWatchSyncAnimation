//
//  ContentView.swift
//  AppleWatchSyncAnimation WatchKit Extension
//
//  Created by Alexander Römer on 03.04.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                SyncProgressView(progress: $progress)
                    .padding()
                Image(systemName: "applelogo")
                    .font(.body)
            }
        }
        .onAppear() {
            _ = Timer.scheduledTimer(withTimeInterval: 0.37, repeats: true, block: { (timer) in
                withAnimation {
                    progress = progress + 0.01
                    if progress > 1 { progress = 0  }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
