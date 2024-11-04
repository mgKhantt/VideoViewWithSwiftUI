//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Khant Phone Naing  on 04/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    var videos:[Video] = []
    
    var body: some View {
        NavigationView {
            List(videos) { video in
                HStack {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .cornerRadius(8)
                    
                    
                    Spacer().frame(width: 5)
                    
                    VStack(alignment: .leading) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        Spacer()
                            .frame(height: 10)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }.navigationTitle("Sean's Videos Part3")
        }
    }
}

#Preview {
    ContentView(videos: videoList.topTwelve)
}
