//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by JelliedFish on 03.01.2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text(Constants.secondsElapsed)
                        .font(.caption)
                    Label(
                        Constants.secondsElapsedDefaultValue,
                        systemImage: Constants.secondsElapsedIcon
                    )
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(Constants.secondsRemaining)
                        .font(.caption)
                    Label(
                        Constants.secondsRemainingDefaultValue,
                        systemImage: Constants.secondsElapsedIcon
                    )
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel(Constants.progressViewAccessibilityLabel)
            .accessibilityValue(Constants.progressViewAccessibilityValue)

            Circle()
                .strokeBorder(lineWidth: 24)

            HStack {
                Text(Constants.footerText)
                Spacer()
                Button(action: {

                }, label: {
                    Image(systemName: Constants.footerButtonImage)
                })
            }
            .accessibilityLabel(Constants.buttonAccessibilityLabel)
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}

private enum Constants {

    static let secondsElapsed = "Seconds Elapsed"
    static let secondsRemaining = "Seconds Remaining"
    static let secondsElapsedDefaultValue = "300"
    static let secondsRemainingDefaultValue = "600"
    static let secondsElapsedIcon = "hourglass.bottomhalf.fill"
    static let secondsRemainingIcon = "hourglass.bottomhalf.fill"
    static let footerText = "Speaker 1 of 3"
    static let footerButtonImage = "forward.fill"
    static let progressViewAccessibilityLabel = "Time remaining"
    static let progressViewAccessibilityValue = "10 minutess"
    static let buttonAccessibilityLabel = "Next speaker"

}
