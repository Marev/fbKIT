//
//  PostProfilePicture.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 21.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct PostProfilePicture: View {
	
	let profileImage: Image
	
	var body: some View {
		
			self.profileImage
				.renderingMode(.original)
				.resizable()
				.scaledToFill()
				.frame(width: 40, height: 40, alignment: .center)
				.clipShape(Circle())
	}
}
