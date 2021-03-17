//
//  Conferences.swift
//  Swiftomatic
//
//  Created by Baptiste Moulin on 16/03/2021.
//

import SwiftUI
import MapKit

struct Conference: Identifiable {
    let id = UUID()
    let name: String
    let date: String
    let ville: String
    let pays: String
    let img: String
    let location: CLLocationCoordinate2D
    let desc: String
}

let conferences = [Conference(name: "iOS Conf SG", date: "12/18/2020", ville: "Singapore", pays: "Japon", img: "conference", location: CLLocationCoordinate2D(latitude: 1.357107, longitude: 103.8194992), desc: "This event always starts our year off with a bang, and is the largest iOS conference in south-east Asia. This year it now runs across two workshop days plus two days of sessions, and the speaker line-up already includes Dave Verwer, Ellen Shapiro, Meng To, and more. Last year I was really impressed by the huge range of attendees – many were from Singapore and Malaysia, of course, but also from Indonesia, Japan, Australia, and beyond; it's a massive mix."), Conference(name: "dotSwift", date: "03/02/2021", ville: "Paris", pays: "France", img: "conference", location: CLLocationCoordinate2D(latitude: 48.8566969, longitude: 2.3514616), desc: "dotSwift has a long-standing tradition of events in astonishing venues, tight time slots for speakers, and a complete ban on electronics in the audience. The result is something quite remarkable: given just 18 minutes to speak everyone on stage has honed their talk to the best it can be, so rather than chatting on Slack the audience is fully focused on learning. It sounds odd at first, but trust me: it works."), Conference(name: "MobOS", date: "20/02/2021", ville: "Napoca", pays: "Romania", img: "conference", location: CLLocationCoordinate2D(latitude: 41.3900829, longitude: 2.1551066), desc: "Returning for the seventh year in a row, MobOS is the largest and most important iOS conference in Romania. This is a mixed-platform event, meaning that there are iOS and Android tracks running in parallel, and last year this gave a truly memorable moment as the announcers had to ask the iOS and Android attendees to switch rooms because the iOS group was too big to fit!"), Conference(name: "Appdevcon", date: "10/03/2021", ville: "Amsterdam", pays: "Pays bas", img: "conference", location: CLLocationCoordinate2D(latitude: 52.3727598, longitude: 4.8936041), desc: "Appdevcon is the largest mobile event in the Netherlands, and as it's at the center of Europe it attracts folks from across the EU and beyond. Last year they moved to a new venue, but the concept is the same: huge cinema screens for presenters, and comfortable seats for the audience. The talks here are usually both technical and practical, but there's also a parallel design track if you want something a little different."), Conference(name: "try! Swift Tokyo", date: "20/03/2021", ville: "Tokyo", pays: "Japon", img: "conference", location: CLLocationCoordinate2D(latitude: 35.6828387, longitude: 139.7594549), desc: "Believe it or not, try! Swift Tokyo might be the largest independent iOS event in the world – their attendee numbers have skyrocketed in recent years, which is no surprise when you look at the consistently high-quality speaker line up, the extraordinary attention to organizational detail, and their long-standing commitment to building a warm and welcoming atmosphere for everyone. Highly recommended, and not just because it’s one of the coolest cities in the world!")]


struct Confernces: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Conferences :")
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                HStack {
                    Text("Voici la liste des conferences iOS / Swift")
                        .padding(.leading)
                        .font(.title2)
                    Spacer()
                }
                List {
                    ForEach (conferences) { conference in
                        NavigationLink(
                            destination: Detail(conference: conference),
                            label: {
                                Text("\(conference.name) - \(conference.date), \(conference.ville)")
                            })
                    }
                }.font(.caption)
            }
        }
    }
}

struct Detail: View {
    let conference: Conference
    @State private var region: MKCoordinateRegion
    init(conference: Conference) {
        self.conference = conference
        self._region = State(initialValue: MKCoordinateRegion(
            center: conference.location,
                span: MKCoordinateSpan(
                    latitudeDelta: 10,
                    longitudeDelta: 10
                )
            ))
    }
    var body: some View {
        VStack (alignment: .leading){
            
            Text(conference.name)
                .font(.title)
                .bold()
                .padding(.leading)
            Text("\nDate : \(conference.date)")
                .padding(.leading)
            Text("Pays: \(conference.pays)")
                .padding(.leading)
            Text("Ville : \(conference.ville)\n\n")
                .padding(.leading)
            HStack {
                Spacer()
                Image(conference.img)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            
            Text(conference.desc)
                .padding(.leading)
            Map(coordinateRegion: $region)
            Spacer()
        }
    }
}
