//
//  ListRowSeparator.swift
//  FaceBookKIT
//
//  Created by Miroslav Marev on 20.11.19.
//  Copyright © 2019 marev. All rights reserved.
//

import SwiftUI

struct ListRowSeparator: View {
	
    var body: some View {
        Divider()
		.frame(minHeight: 8, idealHeight: 8, maxHeight: 8,
			   alignment: .leading)
		.background(Color(.systemGray4))
    }
}
