//
//  HomeView.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: SolarViewModel
    
    var body: some View {
        HStack {
            imageList}
        
    }
    
    
    var imageList: some View {
        List{
            ForEach(viewModel.postAll) { post in
                PostContent(post: post)
                    .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
            }
            }
            .listStyle(.plain)
        }
        }
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SolarViewModel())
    }
}
