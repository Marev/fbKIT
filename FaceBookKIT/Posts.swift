//
//  Posts.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 21.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct Posts: View {
	
	let profilePictureName: String
	let profileName: String
	let contentPicture: String
	
    var body: some View {
        
		VStack(alignment: .leading) {
			
			HStack {
				
				PostProfilePicture(profileImage: Image(self.profilePictureName))
					.padding(.leading, 8)
				
				PostsHeader(title: self.profileName, time: "5 hrs")
			}.padding(.top, 8)
			
			PostBodyContent(contentPicture: self.contentPicture)
			
			HStack(alignment: .center) {
				
				Spacer()
				
				PostReactButton(image: "fb_like_button", text: "Like", action: {})

				Spacer()
				
				PostReactButton(image: "fb_comment", text: "Comment", action: {})
				
				Spacer()
				
				PostReactButton(image: "fb_share", text: "Share", action: {})
				
				Spacer()
			}
			
			ListRowSeparator()
		}
    }
}
