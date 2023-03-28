//
//  PhotoLibrary.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/26/23.
//
/*
 Hosts Buttons for both Camera Picker and PhotoLibrary Picker. When buttons are clicked, the camera will appear or the photo library will appear.
 */

import SwiftUI
import PhotosUI
import UIKit

struct ShowPicker: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var isShowCamera = false
    @State private var image = UIImage()
    
    var body: some View {
        HStack {
            Button(action: {
                self.isShowPhotoLibrary = true
            }) {
                HStack {
                    Image(systemName: "plus")
                        .font(.system(size: 20))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .cornerRadius(20)
                .padding(.horizontal)
            }
            .sheet(isPresented: $isShowPhotoLibrary) {
                ImagePicker(viewModel: SolarViewModel())
            }
            
            Button(action: {
                self.isShowCamera = true
            }) {
                HStack {
                    Image(systemName: "camera")
                        .font(.system(size: 20))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .cornerRadius(20)
                .padding(.horizontal)
            }
        }
        .sheet(isPresented: $isShowCamera) {
            CameraPicker(viewModel: SolarViewModel())
        }
    }
    
}
struct ShowPicker_Previews: PreviewProvider {
    static var previews: some View {
        ShowPicker()
            .environmentObject(SolarViewModel())
    }
}
