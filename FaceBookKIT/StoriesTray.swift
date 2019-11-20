//
//  StoriesTray.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 20.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct StoryItemData: Identifiable, Hashable {
	
	var id = UUID()
	var imageName: String
	var storyImageName: String
	var profileName: String
}

struct StoriesTray: View {
	
	let storiesData: [StoryItemData]
	
	let padding: CGFloat = 16
	
    var body: some View {
		
        VStack {
		
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top, spacing: CGFloat(4)) {

					ForEach(storiesData, id: \.self) { item in
						
						StoryButton(profileImage: Image(item.imageName),
									storyImage: Image(item.storyImageName),
									profileName: item.profileName,
						horizontalWidth: UIScreen.main.bounds.width - self.padding*2 - 8)
					}
				}
				.padding(.leading, self.padding)
			}
			
			ListRowSeparator()
		}
	}
}
