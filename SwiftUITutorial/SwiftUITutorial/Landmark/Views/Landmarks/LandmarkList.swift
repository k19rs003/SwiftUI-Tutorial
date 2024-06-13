//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Abe on R 6/05/11.
//

import SwiftUI

struct LandmarkList: View {
    // 型そのものを渡したいから.self
    //Swiftの型システムでは、型そのものを参照するためにselfを使います。ModelDataとだけ書くと、それはModelData型の値やインスタンスを期待するものと解釈される可能性があります。しかし、ModelData.selfと書くことで、ModelData型そのものを指していることを明示的に示します。
    //    var landmarks: [Landmark]
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false

    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
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
//    LandmarkList(landmarks: ModelData().landmarks)
//        .environment(ModelData())
    LandmarkList()
        .environment(ModelData())
}
