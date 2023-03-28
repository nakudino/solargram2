//
//  SquareImage.swift
//  solargramfinal
//
//  Created by Njideka Akudinobi on 3/19/23.
//
/*
This is a template for creating the square Image. It also holds all of the design aspects.
 */
import SwiftUI

struct SquareImage: View {
    
    var image: Image
    var aspect: CGFloat = 1.0
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        Rectangle()
            .aspectRatio(aspect, contentMode: .fit)
            .overlay {
                image
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(Image("person"))
    }
}

