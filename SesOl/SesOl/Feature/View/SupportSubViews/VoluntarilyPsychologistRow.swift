//
//  VoluntarilyPsychologistRow.swift
//  SesOl
//
//  Created by Yunus Emre Berdibek on 31.05.2023.
//

import SwiftUI

struct VoluntarilyPsychologistRow: View {
    var voluntarilyPsychologist: VoluntarilyPsychologistResponseElement

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.halloween_orange)

                HStack(spacing: 3) {
                    Text(voluntarilyPsychologist.userName ?? "Error")
                    Text(voluntarilyPsychologist.userSurname ?? "Error")
                }
                    .font(.subheadline).bold()

                HStack(spacing: 0) {
                    Text("@")
                    Text(voluntarilyPsychologist.userTel ?? "Error")
                }
                    .font(.caption)
                    .foregroundColor(.spanish_gray)

            }
                .padding(.top, PagePaddings.Normal.padding_20.rawValue)
                .padding(.leading, PagePaddings.Normal.padding_20.rawValue)

            Text(voluntarilyPsychologist.voluntarilyDesc ?? "Hata")
                .font(.subheadline)
                .foregroundColor(.dark_liver)
                .multilineTextAlignment(.leading)
                .padding(.all, PagePaddings.Normal.padding_20.rawValue)
            Divider()
        }
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.gray.opacity(1), radius: 5, x: 0, y: 2)
            .padding(.all, PagePaddings.Normal.padding_10.rawValue)
    }
}


struct VoluntarilyPsychologistRow_Previews: PreviewProvider {
    static var previews: some View {
        VoluntarilyPsychologistRow(voluntarilyPsychologist: VoluntarilyPsychologistResponseElement(voluntarilyAccountID: 1, userName: "Rahmi", userSurname: "Toprak", unionID: 1, unionName: "", userTel: "+90 561 616 09 72", voluntarilyVehicleStatus: 1, voluntarilyDesc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", addressID: 1, addressDistrict: "", addressCity: "", addressCountry: "", fullAddress: "", voluntarilyApproveStatus: 1))
    }
}
