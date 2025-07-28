

import SwiftUI


public struct ATAnimateTextPreview<E: ATTextAnimateEffect>: View {

    @State private var text: String = "Animate"

    let words = "Labyrinth,Ineffable,Incendiary,Ephemeral,Cynosure,Propinquity,Infatuation,Incandescent,Eudaemonia,Raconteur,Petrichor,Sumptuous,Aesthete,Nadir,Miraculous,Lassitude,Gossamer,Bungalow,Aurora,Inure,Mellifluous,Euphoria,Cherish,Demure,Elixir,Eternity,Felicity,Languor,Love,Solitude,Epiphany,Quintessential,Plethora,Nemesis,Lithe,Tranquility,Elegance,Renaissance,Eloquence,Sequoia,Peace,Lullaby,Paradox,Pristine,Effervescent,Opulence,Ethereal,Sanguine,Panacea,Bodacious,Axiom,Silhouette,Surreptitious,Ingenue,Dulcet,Tryst,Ebullience, Form, Props, Mesh".components(separatedBy: ",")
    let sentence = "Don’t dwell on the past.,Believe in yourself.,Follow your heart.,Seize the day.,You only live once.,Past is just past.,Love yourself.,Don’t beat yourself up.,Life is a journey.,No Pain,No gain,No sweat,The die is cast.,When they go low,A friend is a second myself.,Appearances are deceptive.,Be brave.,Every cloud has a silver lining.,Don’t judge a book by its cover.,Hang in there.,This is how life is.,Live positive.,Seeing is believing.,He can do, She can do,Why not me,If not now,then when?,Respect individual.,Habit is a second nature.,Time is gold.,You deserve to be loved.,Love what you do.,Time waits for no one.,Don’t waste your youth.,Pain past is pleasure.,United we stand.,Envy and wrath shorten life.,Life is all about timing.".components(separatedBy: ",")

    @State private var type: ATUnitType = .letters

    public init() {}
    public var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading) {
                Spacer()
                AnimateText<E>($text, type: type)
                    .font(.largeTitle)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue.opacity(0.1))
                    )
                    .padding(.leading)
                Divider().padding()
                HStack {
                    Spacer()
                    Button {
                        type = .letters
                        text = self.words[Int.random(in: (0..<self.words.count))]
                    } label: {
                        Text("Letters")
                            .padding(10)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }

                    Button {
                        type = .words
                        text = self.sentence[Int.random(in: (0..<self.sentence.count))]
                    } label: {
                        Text("Words")
                            .padding(10)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }

                    Spacer()
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
            }
        }
        .onAppear {
            self.text = "Animate Text"
        }
    }
}


