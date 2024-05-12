//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/11.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
//            List(filteredLandmarks) { landmark in
//                NavigationLink {
//                    LandmarkDetail(landmark: landmark)
//                } label: {
//                    LandmarkRow(landmark: landmark)
////                        .listRowBackground(Color.clear)
//                }
//            }
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
    //                        .listRowBackground(Color.clear)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
//            .scrollContentBackground(.hidden)
            .padding(.bottom)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
