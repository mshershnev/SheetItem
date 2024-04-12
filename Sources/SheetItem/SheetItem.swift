import SwiftUI

@available(macOS 10.15, *)
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

@available(macOS 10.15, *)
extension View {
    public func sheet(item: Binding<SheetItem?>) -> some View {
        sheet(item: item) { $0 }
    }
}
