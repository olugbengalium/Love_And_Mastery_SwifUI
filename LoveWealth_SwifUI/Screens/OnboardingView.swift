//
//  OnboardingView.swift
//  LoveWealth_SwifUI
//
//  Created by Gbenga Abayomi on 07/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    @AppStorage ("onboarding") var isOnboardingViewActive: Bool = true
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    var body: some View {
        
        ZStack {
            Color("colorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20){
            // MARK: - HEADER
                Spacer()
                VStack {
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("Find a group of people who challenge and inspire you; spend a lot of time with them, and it will change your life.")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                // MARK: - Center
                ZStack{
                    CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)

                        Image("character-1")
                            .resizable()
                            .scaledToFit()
                    
                        
                }
                Spacer()
                // Circle
                // MARK: - FOOTER
                ZStack {
                Capsule()
                    .fill(Color.white.opacity(0.2))
                Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
                
                Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                HStack{
                    Capsule()
                        .fill(Color("colorRed"))
                        .frame(width: buttonOffset + 80)
                    Spacer()
                }
                
                //Dragable circle
                HStack {
                    ZStack {
                        Circle()
                            .fill(Color("colorRed"))
                        Circle()
                            .fill(.black.opacity(0.15))
                            .padding(8)
                        Image(systemName: "chevron.right.2")
                            .font(.system(size:24, weight: .bold))
                    }
                .foregroundColor(.white)
                .frame(width: 80, height: 80, alignment: .center)
                .offset(x: buttonOffset)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80{
                                buttonOffset = gesture.translation.width
                            }
                            
                        }
                        .onEnded { _ in
                            if buttonOffset > buttonWidth / 2 {
                                buttonOffset = buttonWidth - 80
                                isOnboardingViewActive = false
                            }else {
                                buttonOffset = 0
                            }
                        }
                
                )
                    
                    Spacer()
                }
                    }
                .frame(width: buttonWidth, height: 80, alignment: .center)
            .padding()
                
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
