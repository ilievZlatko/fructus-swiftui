//
//  OnboardingView.swift
//  Fructus
//
//  Created by Zlatko Iliev on 2.07.21.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruitsData) { item in
                FruitCardView(fruit: item)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 12 Pro")
    }
}
