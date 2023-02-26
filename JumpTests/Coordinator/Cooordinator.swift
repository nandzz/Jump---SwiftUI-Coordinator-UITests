import Foundation
import SwiftUI
import Jump

class JumpTestsCoordinator: Coordinator<CoordiantorPaths> {
    
    override func onNext(current path: CoordiantorPaths) {
        switch path {
        case .viewA(let action):
            requestFromViewA(action)
        case .viewB(let action):
            requestFromViewB(action)
        case .viewC(let action):
            requestFromViewC(action)
        case .viewD(let action):
            requestFromViewD(action)
        case .viewE(let action):
            requestFromViewE(action)
        case .viewF(let action):
            requestFromViewF(action)
        case .viewG(let action):
            requestFromViewG(action)
        }
    }
    
    override func buildView(presenter: ContextPresenter<CoordiantorPaths>) -> AnyView {
        switch presenter.name {
        case .viewA:
            return ViewA(presenter: presenter).any
        case .viewB:
            return ViewB(presenter: presenter).any
        case .viewC:
            return ViewC(presenter: presenter).any
        case .viewD:
            return ViewD(presenter: presenter).any
        case .viewE:
            return ViewE(presenter: presenter).any
        case .viewF:
            return ViewF(presenter: presenter).any
        case .viewG:
            return ViewG(presenter: presenter).any
        case .none:
            fatalError("View not Present")
        }
    }
}

extension JumpTestsCoordinator {
    
    func requestFromViewA(_ action: ViewAActions) {
        switch action {
        case .didTapPush:
            present(.viewB(), mode: .push)
        case .didTapFullScreen:
            present(.viewB(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewB(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewB(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewB(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .idle:
            break
        }
    }
    
    func requestFromViewB(_ action: ViewBActions) {
        switch action {
        case .didTapPush:
            present(.viewC(), mode: .push)
        case .didTapFullScreen:
            present(.viewC(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewC(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewC(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewC(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .didTapDismissAndPresent:
            dismiss { [weak self] in
                self?.present(.viewB(), mode: .push)
            }
        case .idle:
            break
        }
    }
    
    func requestFromViewC(_ action: ViewCActions) {
        switch action {
        case .didTapPush:
            present(.viewD(), mode: .push)
        case .didTapFullScreen:
            present(.viewD(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewD(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewD(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewD(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .didTapDismissAndPresent:
            dismiss { [weak self] in
                self?.present(.viewC(), mode: .push)
            }
        case .idle:
            break
        }
    }
    
    func requestFromViewD(_ action: ViewDActions) {
        switch action {
        case .didTapPush:
            present(.viewE(), mode: .push)
        case .didTapFullScreen:
            present(.viewE(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewE(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewE(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewE(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .didTapDismissAndPresent:
            dismiss { [weak self] in
                self?.present(.viewD(), mode: .push)
            }
        case .idle:
            break
        }
    }
    
    func requestFromViewE(_ action: ViewEActions) {
        switch action {
        case .didTapPush:
            present(.viewF(), mode: .push)
        case .didTapFullScreen:
            present(.viewF(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewF(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewF(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewF(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .didTapDismissAndPresent:
            dismiss { [weak self] in
                self?.present(.viewE(), mode: .push)
            }
        case .idle:
            break
        }
    }
    
    func requestFromViewF(_ action: ViewFActions) {
        switch action {
        case .didTapPush:
            present(.viewG(), mode: .push)
        case .didTapFullScreen:
            present(.viewG(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewG(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewG(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewG(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .didTapDismissAndPresent:
            dismiss { [weak self] in
                self?.present(.viewF(), mode: .push)
            }
        case .idle:
            break
        }
    }
    
    func requestFromViewG(_ action: ViewGActions) {
        switch action {
        case .didTapPush:
            present(.viewA(), mode: .push)
        case .didTapFullScreen:
            present(.viewA(), mode: .fullScreen, addNavigation: true)
        case .didTapSheet:
            present(.viewA(), mode: .sheet, addNavigation: true)
        case .didTapTop:
            present(.viewA(), mode: .top, addNavigation: true)
        case .didTapSwap:
            present(.viewA(), mode: .swap)
        case .didTapBack:
            dismiss()
        case .didTapRoot:
            showRoot()
        case .didTapDismissAndPresent:
            dismiss { [weak self] in
                self?.present(.viewG(), mode: .push)
            }
        case .idle:
            break
        }
    }
    
}
