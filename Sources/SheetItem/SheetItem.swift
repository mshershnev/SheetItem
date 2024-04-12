import SwiftUI

@available(macOS 10.15, *)
public struct SheetItem: Identifiable, View {
    public let id = UUID()
    private let content: AnyView

    init(@ViewBuilder _ builder: () -> any View) {
        content = AnyView(builder())
    }

    public var body: some View {
        content
    }
}
