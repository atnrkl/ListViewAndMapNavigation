//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by admin on 17.08.2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView{
            MapView(
                coordinate: landmark.locationCoordinate
            )
            .ignoresSafeArea(edges: .top)
            .frame(height:300)
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                } //: HSTACK
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }//: VSTACK
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
