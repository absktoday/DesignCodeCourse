//
//  CourseItem.swift
//  DesignCodeCourse
//
//  Created by Abhishek Saral on 7/11/21.
//

import SwiftUI

struct CourseItem: View {
    var course: Course = courses[0]
    #if os(iOS)
    var cornerRadius: CGFloat = 10
    #else
    var cornerRadius: CGFloat = 10
    #endif
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
                
        }
        .padding(.all)
        .cardStyle(color: course.color, cornerRadius: 10)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
