//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Ary Sugiarto on 08/11/22.
//

import SwiftUI

struct DetailView : View{
    let scrum: DailyScrum
    
    var body: some View{
        List{
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Lengt",systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage:"paintpalette")
                    Spacer()
                    Text(scrum.theme.rawValue)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Atendees")) {
                ForEach(scrum.attendees){
                    attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
