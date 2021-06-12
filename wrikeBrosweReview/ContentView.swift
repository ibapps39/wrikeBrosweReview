//
//  ContentView.swift
//  wrikeBrosweReview
//
//  Created by Ian Brown on 5/14/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var searchInquiry = ""
    var body: some View {
        VStack {
            HStack {
                Text("Broswe")
                    .font(.title3)
                    .bold()
                    .padding(10)
                    .padding(.leading, 10)
                Spacer()
            }
            TextField("Search ...", text: $searchInquiry)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .padding(.top, -10)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            Spacer()
            Form {
                Section(header: Text("Spaces")) {
                    HStack {
                        Image(systemName: "house.circle.fill")
    
                            .foregroundColor(Color(.systemGreen))
                        Text("Personal").font(.body).bold()
                    }
                    HStack {
                        Image(systemName: "laptopcomputer")
                            .foregroundColor(Color(.systemTeal))
                        Text("Remote Work").font(.body).bold()
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .renderingMode(.original)
                        Text("Explore spaces").font(.body).bold()
                    }
                }
                Section(header: Text("")) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("Shared with me").font(.body).bold()
                    }
                }
            }
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


