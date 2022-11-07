//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ary Sugiarto on 06/11/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
//            MeetingView()
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
