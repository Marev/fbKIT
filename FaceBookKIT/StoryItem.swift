//
//  StoryItem.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 17.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct StoryItem: View {
	
	let profileName: String
	let horizontalWidth: CGFloat
	
	var body: some View {
		
		Text(self.profileName)
			.font(.caption)
			.fontWeight(.bold)
			.foregroundColor(.white)
			.padding(.all, 8)
			.lineLimit(2)
			.multilineTextAlignment(.leading)
			.alignmentGuide(.leading, computeValue: { (viewDimensions) -> CGFloat in
				viewDimensions[.leading]
			})
			.frame(maxWidth: horizontalWidth / 4)
	}
}
