import Foundation
import Jump
import SwiftUI

enum ViewDActions {
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

struct ViewD: ContextView {
    
    var presenter: ContextPresenter<CoordiantorPaths>
    
    let colums = [
        GridItem(.flexible(minimum: 100, maximum: 150)),
        GridItem(.flexible(minimum: 100, maximum: 150))
    ]
    
    var body: some View {
        ContextContent(presenter) { dispatch in
            ScrollView(showsIndicators: false) {
                Text("View D")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                LazyVGrid(columns: colums, alignment: .leading) {
                    Button("PushFromD") {
                        dispatch(.viewD(.didTapPush))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("FullScreenFromD") {
                        dispatch(.viewD(.didTapFullScreen))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .fixedSize(horizontal: true, vertical: false)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SheetFromD") {
                        dispatch(.viewD(.didTapSheet))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("TopFromD") {
                        dispatch(.viewD(.didTapTop))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SwapFromD") {
                        dispatch(.viewD(.didTapSwap))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("BackFrom") {
                        dispatch(.viewD(.didTapBack))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("RootFromD") {
                        dispatch(.viewD(.didTapRoot))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("Dismiss and PresentFromD") {
                        dispatch(.viewD(.didTapDismissAndPresent))
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
            .navigationTitle("View D")
            .navigationViewStyle(StackNavigationViewStyle())
            .background(Color.orange)
        }
    }
}
