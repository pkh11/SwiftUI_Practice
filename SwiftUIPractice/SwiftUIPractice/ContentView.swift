//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Kyoon Ho Park on 2022/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("뷰빌더",
                               destination: ViewBuilderPractice().navigationTitle("뷰빌더"))
                
                // 텍스트뷰: 수정자를 이용한 뷰 변경
                Text("Text1")
                    .font(.headline)
                    .foregroundColor(.red)
                
                // 이미지뷰: 수정자를 이용한 뷰 변경
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                // 텍스트뷰 순서: 순서가 있음
                Text("Sample Text")
                    .border(Color.black)
                    .padding()
                
                Text("Sample Text")
                    .padding()
                    .border(Color.black)
                    .font(.footnote)
                    .fontWeight(.medium)
//                    .brightness(10)
                
                // 커스텀 수정자
                Text("Text 1")
                    .font(.largeTitle)
                    .background(Color.white)
                    .border(Color.gray, width: 0.2)
                    .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                
                Text("Text 2")
                    .modifier(StandardTitle())
                
                
                // 뷰 라이프사이클
                Text("뷰 라이플사이클")
                    .onAppear {
                        // 뷰가 나타날때
                        print("뷰 생성")
                    }.onDisappear {
                        // 뷰가 사라질때
                        print("뷰 사라짐")
                    }
                
                Text("뷰 라이플사이클")
                    .task {
                        
                    }
            }
        }
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

struct ViewBuilderPractice: View {
    var body: some View {
//         ViewBuilder 어노테이션:
//         클로저에서 아래와 같이 뷰를 구성할 수 있게 해주는 것
//         Vstack의 이니셜라이저 구성에는 @ViewBuilder 어노테이션이 채택되어 있음
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
