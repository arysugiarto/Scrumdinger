//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Ary Sugiarto on 07/11/22.
//

import SwiftUI

struct ScrumsView: View{
    
    let scrums: [DailyScrum]
    
    var body: some View{
        List {
            ForEach(scrums){
                scrums in
                CardView(scrum: scrums)
                    .listRowBackground(scrums.theme.mainColor)
            }
        }
    }
}

struct ScrumViewPreviews: PreviewProvider{
    static var previews: some View{
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
