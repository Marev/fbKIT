//
//  PostReactButton.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 21.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct PostReactButton: View {
	
	let image: String
	let text: String
	let action: () -> Void
	
	var body: some View {
		
		Button(action: {
			self.action()
		}) {
			HStack(spacing: 4) {
				Image(self.image)
						.renderingMode(.template)
						.resizable()
						.scaledToFill()
						.frame(width: 24, height: 24, alignment: .leading)
						.foregroundColor(Color(.systemGray))
				
				Text(self.text)
					.font(.subheadline)
					.fontWeight(.semibold)
					.foregroundColor(Color(.systemGray))
			}
		}
	}
}
