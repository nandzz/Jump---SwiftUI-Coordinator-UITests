import Foundation
import Jump
import SwiftUI

enum ViewGActions {
    case didTapPush
    case didTapFullScreen
    case didTapSheet
    case didTapTop
    case didTapSwap
    case didTapBack
    case didTapRoot
    case didTapDismissAndPresent
    case idle
}

struct ViewG: ContextView {
    
    var presenter: ContextPresenter<CoordiantorPaths>
    
    let colums = [
        GridItem(.flexible(minimum: 100, maximum: 150)),
        GridItem(.flexible(minimum: 100, maximum: 150))
    ]
    
    var body: some View {
        ContextContent(presenter) { dispatch in
            ScrollView(showsIndicators: false) {
                Text("View G")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                LazyVGrid(columns: colums, alignment: .leading) {
                    
                    Button("PushFromG") {
                        dispatch(.viewG(.didTapPush))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("FullScreenFromG") {
                        dispatch(.viewG(.didTapFullScreen))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .fixedSize(horizontal: true, vertical: false)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SheetFromG") {
                        dispatch(.viewG(.didTapSheet))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("TopFromG") {
                        dispatch(.viewG(.didTapTop))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SwapFromG") {
                        dispatch(.viewG(.didTapSwap))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("BackFromG") {
                        dispatch(.viewG(.didTapBack))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("RootFromG") {
                        dispatch(.viewG(.didTapRoot))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("Dismiss and PresentFromG") {
                        dispatch(.viewG(.didTapDismissAndPresent))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                }
                .padding(30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("View G")
            .navigationViewStyle(StackNavigationViewStyle())
            .background(Color.gray)
        }
    }
}
