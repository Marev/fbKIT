//
//  StoryImage.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 17.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct StoryImage: View {
	
	let profileImage: Image
	let storyImage: Image
	let horizontalWidth: CGFloat
	
	var body: some View {
		
		ZStack(alignment: .topLeading) {
			
			self.storyImage
				.renderingMode(.original)
				.resizable()
				.scaledToFill()
				.frame(width: horizontalWidth / 3.5, height: horizontalWidth / 2, alignment: .center)
				.clipShape(Rectangle())
			.cornerRadius(8)
			
			self.profileImage
				.renderingMode(.original)
				.resizable()
				.frame(width: horizontalWidth / 10, height: horizontalWidth / 10, alignment: .center)
				.clipShape(Circle())
				.overlay(Circle()
					.stroke(lineWidth: 4)
					.foregroundColor(.blue))
				.padding([.leading, .top], 8)
			
		}
		
	}
}
