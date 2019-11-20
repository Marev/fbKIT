//
//  StoryButton.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 17.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct StoryButton: View {
	
	let profileImage: Image
	let storyImage: Image
	let profileName: String
	
	let horizontalWidth: CGFloat
	
	var body: some View {
		Button(action: {
			
		}) {
			ZStack(alignment: .bottomLeading) {
				
				StoryImage(profileImage: self.profileImage,
								   storyImage: self.storyImage,
								   horizontalWidth: self.horizontalWidth)
				
				StoryItem(profileName: self.profileName, horizontalWidth: self.horizontalWidth)
			}
		}
	}
}
