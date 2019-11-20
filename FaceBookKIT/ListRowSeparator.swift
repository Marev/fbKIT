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
		.frame(minHeight: 16, idealHeight: 16, maxHeight: 16,
			   alignment: .leading)
		.background(Color(.systemGray4))
    }
}
