//
//  ContentView.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 16.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct HomeView: View {
	
	private var padding: CGFloat = 16
	
	private let stories: [StoryItemData] = [
		.init(imageName: "super_car_blondie", storyImageName: "supercar_blondie2", profileName: "Supercar Blondie"),
		.init(imageName: "wrangler", storyImageName: "woman-female", profileName: "Jeep Wrangler"),
		.init(imageName: "super_car_blondie", storyImageName: "brabus_engine", profileName: "Brabus"),
		.init(imageName: "super_car_blondie", storyImageName: "woman-female", profileName: "Supercar Blondie"),
		.init(imageName: "super_car_blondie", storyImageName: "wrangler", profileName: "Jeep Wrangler"),
		.init(imageName: "super_car_blondie", storyImageName: "brabus_engine", profileName: "Brabus"),
	]
	
	var body: some View {
		
		List {
			
			Section(header: HStack {
				UserStatusLayout(horizontalWidth: UIScreen.main.bounds.width)
			}
			.background(Color.white)
			.listRowInsets(EdgeInsets(
				top: 0,
				leading: 0,
				bottom: 0,
				trailing: 0))
			) {
				EmptyView()
			}

			Section {
				
				StoriesTray(storiesData: self.stories)

			}.listRowInsets(EdgeInsets(
				top: 8,
				leading: 0,
				bottom: 8,
				trailing: 0))
			
		}.listStyle(DefaultListStyle())
	}
}
	
struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct ContentView: View {
	
    @State private var selection = 0

    var body: some View {
		
        TabView(selection: $selection){
			
			NavigationView {

				HomeView()
					.navigationBarItems(leading: NavigationBarLogo(), trailing: NavigationBarButtons())
					.navigationBarTitle("", displayMode: .inline)
					.background(NavigationConfigurator { nc in
						nc.navigationBar.barTintColor = .white })
				
			}.tabItem {
				VStack {
					Image("first")
					Text("First")
				}
			}.tag(0)
				.background(Color.clear)
			
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
		}
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
