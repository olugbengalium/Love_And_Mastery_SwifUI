//
//  ContentView.swift
//  LoveWealth_SwifUI
//
//  Created by Gbenga Abayomi on 07/04/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage ("onboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        VStack {
            ZStack{
                if isOnboardingViewActive{
                    OnboardingView()
                } else {
                    HomeView()
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
