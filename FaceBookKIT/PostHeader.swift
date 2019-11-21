//
//  PostHeader.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 21.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct PostsHeader: View {
	
	var title: String
	var time: String
	
	@State var showActionSheet = false
	
	var body: some View {
		
		VStack(alignment: .leading, spacing: 4) {
			
			HStack {
				Text(self.title)
					.font(.subheadline)
					.fontWeight(.semibold)
				
				Spacer()
				
				Button(action: {
					self.showActionSheet = true
				}){
					Image("fb_dots")
						.renderingMode(.original)
						.resizable()
						.scaledToFill()
						.frame(width: 32, height: 16, alignment: .leading)
				}.padding(.trailing, 8)
					.actionSheet(isPresented: $showActionSheet) {
						 ActionSheet(title: Text("What do you want to do?"),
									 message: Text("There's only one choice..."),
									 buttons: [.default(Text("Save Post"))])
				}
				
			}
			
			HStack(spacing: 4) {
				Text(self.time)
					.font(.caption)
					.fontWeight(.regular)
					.foregroundColor(Color(.systemGray2))
				
				Text("·")
					.font(.caption)
					.fontWeight(.regular)
					.foregroundColor(Color(.systemGray2))
				
				Image("fb_globe")
					.renderingMode(.template)
					.resizable()
					.scaledToFill()
					.frame(width: 12, height: 12, alignment: .leading)
					.foregroundColor(Color(.systemGray))
			}
		}
	}
}
