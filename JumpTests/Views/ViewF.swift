import Foundation
import Jump
import SwiftUI

enum ViewFActions {
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

struct ViewF: ContextView {
    
    var presenter: ContextPresenter<CoordiantorPaths>
    
    let colums = [
        GridItem(.flexible(minimum: 100, maximum: 150)),
        GridItem(.flexible(minimum: 100, maximum: 150))
    ]
    
    var body: some View {
        ContextContent(presenter) { dispatch in
            ScrollView(showsIndicators: false) {
                Text("View F")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                LazyVGrid(columns: colums, alignment: .leading) {
                    
                    Button("PushFromF") {
                        dispatch(.viewF(.didTapPush))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("FullScreenFromF") {
                        dispatch(.viewF(.didTapFullScreen))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .fixedSize(horizontal: true, vertical: false)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SheetFromF") {
                        dispatch(.viewF(.didTapSheet))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("TopFromF") {
                        dispatch(.viewF(.didTapTop))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SwapFromF") {
                        dispatch(.viewF(.didTapSwap))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("BackFromF") {
                        dispatch(.viewF(.didTapBack))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("RootFromF") {
                        dispatch(.viewF(.didTapRoot))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("Dismiss and PresentFromF") {
                        dispatch(.viewF(.didTapDismissAndPresent))
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
            .navigationTitle("View F")
            .navigationViewStyle(StackNavigationViewStyle())
            .background(Color.yellow)
        }
    }
}
