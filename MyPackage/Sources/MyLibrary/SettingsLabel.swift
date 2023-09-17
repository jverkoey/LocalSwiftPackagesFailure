import Foundation
import SwiftUI

public struct SettingsLabel: View {
  public init(
    title: String,
    color: Color,
    @ViewBuilder imageContent: @escaping () -> Image
  ) {
    self.title = title
    self.color = color
    self.imageContent = imageContent
  }

  private let title: String
  private let color: Color
  private let imageContent: () -> Image

  public var body: some View {
    Label { Text(title) } icon: {
      ZStack {
        color
        imageContent()
          .foregroundColor(.white)
          .font(.caption)
          .padding(2)
      }
      .clipShape(Circle())
    }
  }
}

#Preview {
  NavigationStack {
    List {
      SettingsLabel(title: "Text", color: .red) {
        Image(systemName: "bolt")
      }
      NavigationLink {
        Text("Page")
      } label: {
        SettingsLabel(title: "Navigation", color: .green) {
          Image(systemName: "bolt")
        }
      }
      Toggle(isOn: .constant(true), label: {
        SettingsLabel(title: "Toggle", color: .blue) {
          Image(systemName: "bolt")
        }
      })
    }
  }
}
