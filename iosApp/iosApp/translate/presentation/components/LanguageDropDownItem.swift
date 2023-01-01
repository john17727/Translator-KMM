//
//  LanguageDropDownItem.swift
//  iosApp
//
//  Created by Juan Rincon on 12/24/22.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared

struct LanguageDropDownItem: View {
    var langauge: UiLanguage
    var onClick: () -> Void
    var body: some View {
        Button(action: onClick) {
            HStack {
                if let image = UIImage(named: langauge.imageName.lowercased()) {
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 5)
                    Text(langauge.language.langName)
                        .foregroundColor(.textBlack)
                }
            }
        }
    }
}

struct LanguageDropDownItem_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDropDownItem(
            langauge: UiLanguage(language: .german, imageName: "german"),
            onClick: {}
        )
    }
}
