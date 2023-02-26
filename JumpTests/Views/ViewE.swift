import Foundation
import Jump
import SwiftUI

enum ViewEActions {
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

struct ViewE: ContextView {
    
    var presenter: ContextPresenter<CoordiantorPaths>
    
    let colums = [
        GridItem(.flexible(minimum: 100, maximum: 150)),
        GridItem(.flexible(minimum: 100, maximum: 150))
    ]
    
    var body: some View {
        ContextContent(presenter) { dispatch in
            ScrollView(showsIndicators: false) {  
                Text("View E")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                LazyVGrid(columns: colums, alignment: .leading) {
                    Button("PushFromE") {
                        dispatch(.viewE(.didTapPush))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("FullScreenFromE") {
                        dispatch(.viewE(.didTapFullScreen))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .fixedSize(horizontal: true, vertical: false)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SheetFromE") {
                        dispatch(.viewE(.didTapSheet))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("TopFromE") {
                        dispatch(.viewE(.didTapTop))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SwapFromE") {
                        dispatch(.viewE(.didTapSwap))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("BackFromE") {
                        dispatch(.viewE(.didTapBack))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("RootFromE") {
                        dispatch(.viewE(.didTapRoot))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("Dismiss and PresentFromE") {
                        dispatch(.viewE(.didTapDismissAndPresent))
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
            .navigationTitle("View E")
            .navigationViewStyle(StackNavigationViewStyle())
            .background(Color.brown)
        }
    }
}
