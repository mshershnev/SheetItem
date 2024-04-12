import SwiftUI

public struct SheetItem: Identifiable, View {
    public let id = UUID()
    private let content: AnyView

    public init(@ViewBuilder _ builder: () -> any View) {
        content = AnyView(builder())
    }

    public var body: some View {
        content
    }
}

extension View {
    public func sheet(item: Binding<SheetItem?>) -> some View {
        sheet(item: item) { $0 }
    }
}
