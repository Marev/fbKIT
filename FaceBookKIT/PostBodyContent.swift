//
//  PostBodyContent.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 21.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct PostBodyContent: View {
	
	let contentPicture: String
	var body: some View {
		
		VStack {
			Image(self.contentPicture)
				.renderingMode(.original)
				.resizable()
				.scaledToFit()
			
			HStack(spacing: 4) {
				Image("fb_blue_like")
					.renderingMode(.original)
					.resizable()
					.scaledToFill()
					.frame(width: 16, height: 16, alignment: .leading)
				
				Text("7")
					.font(.caption)
					.fontWeight(.regular)
					.foregroundColor(Color(.systemGray))
				
				Spacer()
				
				Text("81 comments")
					.font(.caption)
					.fontWeight(.regular)
					.foregroundColor(Color(.systemGray))
				
			}.padding([.leading, .trailing], 8)
			
			Divider().padding([.leading, .trailing], 8)
		}
	}
}
