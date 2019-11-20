//
//  UserStatusLayout.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 20.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct UserStatusLayout: View {
	
	let horizontalWidth: CGFloat
	
	private let titleColor: Color = Color(red: 50 / 255, green: 51 / 255, blue: 52 / 255)
	
	var body: some View {
		
		VStack(alignment: .leading) {
			
			HStack(alignment: .center){
				Image("super_car_blondie")
					.renderingMode(.original)
					.resizable()
					.frame(width: horizontalWidth / 10, height: horizontalWidth / 10, alignment: .center)
					.clipShape(Circle())
					.padding( .leading, 8)
				
				Text("What's on your mind?")
					.font(.subheadline)
					.fontWeight(.regular)
					.foregroundColor(titleColor)
			}.padding(.top, 8)
			
			Divider()
			
			HStack(alignment: .center, spacing: CGFloat(5.0)) {
				
				UserStatusButton(image: "icon_live", text: "Live")
				verticalLine
				UserStatusButton(image: "icon_photo", text: "Photo")
				verticalLine
				UserStatusButton(image: "icon_location", text: "Check In")
				
			}
			
			ListRowSeparator()
		}
	}
	
	var verticalLine: some View {
		
		HStack {
			Divider()
				.frame(minWidth: 0.0, idealWidth: 1.0, maxWidth: 1.0, minHeight: 0.0, idealHeight: 18, maxHeight: 18, alignment: .leading)
				.padding(.vertical, 4)
		}
	}
}
