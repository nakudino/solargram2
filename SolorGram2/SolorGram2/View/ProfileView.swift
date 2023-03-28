//
//  ProfileView.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//
/*
 Main user's profile view with connection to viewModel
 */

import SwiftUI
import UIKit

struct ProfileView: View {
    
    @EnvironmentObject var viewModel: SolarViewModel
  
    private let columns = [
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
    ]
    
    var body: some View {
        VStack{
            SquareImage(Image(PostAll.mainUser.imageUser))
                .clipShape(Circle())
            Text(PostAll.mainUser.userName)
                .font(.title)
            ScrollView{
                LazyVGrid(columns: columns, content: {
                    ForEach(viewModel.postProfile)
                        { post in
                            SquareImage(post.imageName)
                    }
                }
            )}
            .padding()
        }
    }
}
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
                .environmentObject(SolarViewModel())
        }
    }
