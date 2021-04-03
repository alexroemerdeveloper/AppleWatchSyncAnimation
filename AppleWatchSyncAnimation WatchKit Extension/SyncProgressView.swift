//
//  SyncProgressView.swift
//  AppleWatchSyncAnimation WatchKit Extension
//
//  Created by Alexander Römer on 03.04.21.
//

import SwiftUI

struct SyncProgressView: View {
    
    @Binding var progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 4, dash: [1,2]))
                .opacity(0.3)
                .foregroundColor(.white)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 4, dash: [1,2]))
                .foregroundColor(.white)
                .rotationEffect(Angle.degrees(270))
        }
    }
}

struct SyncProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SyncProgressView(progress: .constant(3))
    }
}
