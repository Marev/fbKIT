//
//  NavigationLayout.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 20.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct NavigationBarLogo: View {
	
	var body: some View {
	
		VStack {
			Image("fb_logo")
				.resizable()
				.scaledToFit()
		}
		.frame(width: UIScreen.main.bounds.width / 3)
		.background(Color.clear)
	}
}

struct NavigationBarButtons: View {
	
	private let buttonColor: Color = Color(red: 211 / 255, green: 211 / 255, blue: 211 / 255)
	private let buttonSize: CGFloat = UIScreen.main.bounds.width / 12
	
	
	var body: some View {
		
		HStack(alignment: .center, spacing: 8) {
			
			Button(action: {
				
			}) {
				Image("search")
					.renderingMode(.template)
					.resizable()
					.scaledToFit()
					.foregroundColor(.black)
					.padding(.all, 8)
			}
			.background(self.buttonColor)
			.cornerRadius(20.0)
			.frame(width: buttonSize, height: buttonSize, alignment: .center)
			
			Button(action: {
				
			}) {
				Image("messenger")
					.renderingMode(.template)
					.resizable()
					.scaledToFit()
					.foregroundColor(.black)
					.padding(.all, 8)
			}
			.background(self.buttonColor)
			.cornerRadius(20.0)
			.frame(width: buttonSize, height: buttonSize, alignment: .center)
		}
	}
}
