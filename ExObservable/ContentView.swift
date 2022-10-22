//
//  ContentView.swift
//  ExObservable
//
//  Created by 김종권 on 2022/10/22.
//

import SwiftUI

//struct ContentView: View {
//  @ObservedObject var viewModel1 = MyViewModel()
//  @StateObject var viewModel2 = MyViewModel()
//
//  var body: some View {
//    VStack {
//      Button(viewModel1.isOn ? "on" : "off") {
//        viewModel1.toggle()
//      }
//    }
//  }
//}

struct ContentView: View {
  @State var isOn = false
  
  var body: some View {
    VStack {
      Button(isOn ? "on" : "off") {
        isOn.toggle()
      }
      Divider()
      MyView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct MyView: View {
//  @ObservedObject var viewModel = MyViewModel()
  @StateObject var viewModel = MyViewModel()
  
  var body: some View {
    Button(viewModel.isOn ? "on" : "off") {
      viewModel.toggle()
    }
  }
}

final class MyViewModel: ObservableObject {
  @Published var isOn = false
  
  func toggle() {
    isOn.toggle()
  }
}
