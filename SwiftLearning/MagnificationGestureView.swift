//
//  MagnificationGestureView.swift
//  SwiftLearning
//
//  Created by Liam Li on 1/13/22.
//

import SwiftUI

struct MagnificationGestureView: View {
    
    @State var currentAmount: CGFloat = 0
//    @State var lastAmount: CGFloat = 0

    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 35, height: 35)
                Text("Liam Li")
                Spacer()
                Image(systemName: "ellipsis")
            }
            Rectangle()
                .frame(height: 300)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            currentAmount = value - 1
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                currentAmount = 0
                            }
                        }
                )
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.title)
//            .padding(40)
//            .background(Color.red.cornerRadius(10))
//            .scaleEffect(1.0 + currentAmount + lastAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged { value in
//                        currentAmount = value - 1
//                        print("Current Amount is \(currentAmount)")
//                    }
//                    .onEnded { value in
//                        lastAmount += currentAmount
//                        print("Last Amount is \(lastAmount)")
//                        currentAmount = 0
//                    }
//            )
    }
}

struct MagnificationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureView()
    }
}
