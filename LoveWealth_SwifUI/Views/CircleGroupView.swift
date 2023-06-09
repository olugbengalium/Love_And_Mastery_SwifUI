//
//  CircleGroupView.swift
//  LoveWealth_SwifUI
//
//  Created by Gbenga Abayomi on 09/04/2023.
//

import SwiftUI

struct CircleGroupView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    var body: some View {
        ZStack{
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("colorBlue")
                .ignoresSafeArea()
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
