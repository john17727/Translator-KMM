//
//  TranslateHistoryItem.swift
//  iosApp
//
//  Created by Juan Rincon on 12/26/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared

struct TranslateHistoryItem: View {
    let item: UiHistoryItem
    let onClick: () -> Void
    
    var body: some View {
        Button(action: onClick) {
            VStack(alignment: .leading) {
                HStack {
                    SmallLanguageIcon(language: item.fromLanguage)
                        .padding(.trailing)
                    Text(item.fromText)
                        .foregroundColor(.lightBlue)
                        .font(.body)
                }
                .padding(.bottom)
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    SmallLanguageIcon(language: item.toLanguage)
                        .padding(.trailing)
                    Text(item.toText)
                        .foregroundColor(.onSurface)
                        .font(.body.weight(.semibold))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .gradientSurface()
            .cornerRadius(15)
            .shadow(radius: 4)
        }
    }
}

struct TranslateHistoryItem_Previews: PreviewProvider {
    static var previews: some View {
        TranslateHistoryItem(
            item: UiHistoryItem(
                id: 0,
                fromText: "Hello",
                toText: "Hallo",
                fromLanguage: UiLanguage(language: .english, imageName: "english"),
                toLanguage: UiLanguage(language: .german, imageName: "german")
            ),
            onClick: {}
        )
    }
}
