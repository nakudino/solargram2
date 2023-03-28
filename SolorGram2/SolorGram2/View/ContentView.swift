//
//  ContentView.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//

import SwiftUI
import UIKit
/*
 Homepage of the app that houses all of the main views. 
 */
struct ContentView: View {
    @StateObject var viewModel = SolarViewModel()

    private var labelOpacity: CGFloat {
#if os(iOS)
        0.88
#else
        0.33
#endif
    }
    
    var body: some View {
        VStack{
            TabView{
                HomeView()
                    .tabItem {
                        Label("Photos", systemImage: "photo.stack")
                    }
                    .environmentObject(viewModel)
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle.fill")
                    }
                    .environmentObject(viewModel)
            }
            ShowPicker()
                .environmentObject(viewModel)
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(SolarViewModel())
        }
    }
