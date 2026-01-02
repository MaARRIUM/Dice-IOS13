import SwiftUI

struct ContentView: View {
   @State var leftDiceValue = 1
    @State var rightDiceValue: Int = 1
    var body: some View {

        ZStack {
            // Background Image
            Image("newbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            // Centered Logo
            VStack {
                Spacer()
                Image("diceeLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                Spacer()
                HStack {
                    DiceView(n: leftDiceValue)
                    DiceView(n: rightDiceValue)
                    
                }
                Button(action: {
                    self.leftDiceValue = Int.random(in: 1...6)
                    self.rightDiceValue = Int.random(in: 1...6)
                }) {
                    Text("Roll").font(.system(size: 50))
                            .font(.headline)
                            .foregroundColor(.white).padding(.bottom).background(Color.red)
                }
               
                Spacer()
            }
            
            }
        }
    }

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable().aspectRatio(1, contentMode: .fit).frame(width: 250, height: 130)
    }
}

#Preview {
    ContentView()
}

