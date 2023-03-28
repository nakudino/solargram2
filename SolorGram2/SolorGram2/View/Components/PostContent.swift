//
//  PostContent.swift
//  solargramfinal
//
//  Created by Njideka Akudinobi on 3/18/23.
//
/*
 Post content layout that feeds into HomeView
 */
import SwiftUI

struct PostContent: View {
    @EnvironmentObject var viewModel: SolarViewModel
    
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
               Image(post.author.imageUser)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text(post.author.userName)
                    .font(.caption)
                    .fontWeight(.bold)
            }
            SquareImage(post.imageName)
            Text(post.description)
                .font(.caption)
                .padding(.bottom, 2.0)
            HStack{
                Button {
                    viewModel.setFavorite(postAll: post)
                }
            label: {
                if post.isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.black)
                } else {
                    Image(systemName: "heart")
                        .foregroundColor(Color.black)
                }
            }.buttonStyle(BorderlessButtonStyle())
                Spacer()
                Button {
                    viewModel.deletePhoto(postAll: post)
                }
            label: {
                 if post.author.id == PostAll.mainUser.id
                 {
                     Image(systemName: "trash")
                         .foregroundColor(Color.red)
                 } else {
                 }
                }
                .buttonStyle(BorderlessButtonStyle())
                }}
        }
    }

    struct PostContent_Previews: PreviewProvider {
        static var previews: some View {
            let test = Post(imageName: Image("taj"), description: "so much", author: User( imageUser: "person", userName:"globetrotter"),isFavorite: false, isAdded: false, isRemoved: false)
            PostContent(post: test)
                .environmentObject(SolarViewModel())
        }
    }

