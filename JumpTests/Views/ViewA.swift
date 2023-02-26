import Foundation
import Jump
import SwiftUI

enum ViewAActions {
    case didTapPush
    case didTapFullScreen
    case didTapSheet
    case didTapTop
    case didTapSwap
    case didTapBack
    case didTapRoot
    case idle
}

struct ViewA: ContextView {
    
    var presenter: ContextPresenter<CoordiantorPaths>
    
    let colums = [
        GridItem(.flexible(minimum: 100, maximum: 150)),
        GridItem(.flexible(minimum: 100, maximum: 150))
    ]
    
    var body: some View {
        ContextContent(presenter) { dispatch in
            ScrollView(showsIndicators: false) {
                Text("View A")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                LazyVGrid(columns: colums, alignment: .leading) {
                    
                    Button("PushFromA") {
                        dispatch(.viewA(.didTapPush))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("FullScreenFromA") {
                        dispatch(.viewA(.didTapFullScreen))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .fixedSize(horizontal: true, vertical: false)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SheetFromA") {
                        dispatch(.viewA(.didTapSheet))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("TopFromA") {
                        dispatch(.viewA(.didTapTop))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("SwapFromA") {
                        dispatch(.viewA(.didTapSwap))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("BackFromA") {
                        dispatch(.viewA(.didTapBack))
                    }
                    .padding(25)
                    .font(.subheadline)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    Button("RootFromA") {
                        dispatch(.viewA(.didTapRoot))
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
            .navigationTitle("View A")
            .navigationViewStyle(StackNavigationViewStyle())
            .background(Color.red)
        }
    }
}
