//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Ary Sugiarto on 07/11/22.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon: Self{Self()}
}
