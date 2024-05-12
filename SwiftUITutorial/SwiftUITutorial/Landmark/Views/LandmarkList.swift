//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/11.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
//                        .listRowBackground(Color.clear)
                }
            }
            .navigationTitle("Landmarks")
            .scrollContentBackground(.hidden)
            .padding(.bottom)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
