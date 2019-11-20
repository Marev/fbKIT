//
//  UserStatusButton.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 20.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct UserStatusButton: View {
	
	let image: String
	let text: String
	
	private let textColor: Color = Color(red: 74 / 255, green: 80 / 255, blue: 88 / 255)
	
	var body: some View {
		
		HStack(alignment: .center){
			Button(action: {
				
			}) {
				Spacer()
				Image(self.image)
					.renderingMode(.original)
					.resizable()
					.scaledToFit()
					.frame(width: 16, height: 16, alignment: .leading)
				
				Text(self.text)
					.font(.caption)
					.fontWeight(.regular)
					.foregroundColor(textColor)
				
				Spacer()
			}
		}
		
		
	}
}
