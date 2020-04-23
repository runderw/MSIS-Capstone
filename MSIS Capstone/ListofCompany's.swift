//
//  ListofCompany's.swift
//  MSIS Capstone
//
//  Created by Robert Underwood on 4/23/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//
//
//  ListofCompany's.swift
//  FinalProjectMSIS
//
//  Created by Robert Underwood on 3/31/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//


import SwiftUI

struct ListofCompany_s: View {
    var body: some View {
        NavigationView{
                         List{
                             // Foreach listdata that we have
                             ForEach(ListData) { item in
                                   
                                 //We call DetailListView Function in our navigationlink, we pass in parameters that we have dummy variables set for in our other function
                                 //we use dummy variables as placeholder parameters for our function to call in
                                 
                                 
                                NavigationLink(destination: CompanyDetail(title: item.title, image: item.image,label: item.discription)){
                                     
                                     // KEeping our HStack in our NAvigationLink
                                     HStack {
                                         Image(item.image)
                                             .resizable()
                                             .renderingMode(.original)
                                             //.aspectRatio(contentMode: .fit)
                                             .frame(width: 80, height: 80)
                                             .background(Color("primary"))
                                             .cornerRadius(20)
                                             .padding(.trailing, 4)

                                                                 
                                         // VStack

                                         
                                    VStack(alignment: .leading, spacing: 8) {
                                     
                                     Text(item.title).font(.system(size: 20, weight: .bold))
                                     
                                     Text(item.label)
                                              .lineLimit(2)
                                              .font(.subheadline)
                                              .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                         
                                     
                                     } .padding(3)
                                         
                                     }.padding(.vertical, 8)
                                 }   // end of navigation link
                             }.padding(8)
                             
                             .navigationBarTitle(Text("Meetings"))
                         }
                     }

    }
}

struct ListofCompany_s_Previews: PreviewProvider {
    static var previews: some View {
        ListofCompany_s()
    }
}



struct ListItem : Identifiable{

    var id = UUID()

    var title : String

    var companyname : String

    var icon : String

    var image: String

    var label: String

    var discription: String

}


let ListData = [

    // ot chnage anything about comapny coming simply enter in the new image or date
    // to import image simply drag and drop in assets folder
    

    ListItem(title: "ONE Gas",companyname: "Company Information", icon: "house", image: "OneGas", label: "2-8-2020", discription: "ONE Gas provides natural gas distribution services to more than 2 million customers in Oklahoma, Kansas and Texas. It is headquartered in Tulsa, Okla., and its divisions include Oklahoma Natural Gas, the largest natural gas distributor in Oklahoma; Kansas Gas Service, the largest in Kansas, and Texas Gas Service, the third largest in Texas, in terms of customers. Its largest natural gas distribution markets by customer count are Oklahoma City and Tulsa, Okla.; Kansas City, Wichita and Topeka, Kan.; and Austin and El Paso, Texas. ONE Gas serves residential, commercial, industrial, transportation and wholesale customers in all three states."),

    ListItem(title: "OneOK", companyname: "Company Information",icon: "gear", image: "OneOK", label: "2-22-2020", discription: "OneOK is a leading midstream service provider and own one of the nation’s premier natural gas liquids systems, connecting NGL supply in the Rocky Mountain, Mid-Continent andPermian regions with key market centers and an extensive network of natural gas gathering, processing, storage and transportation assets. They apply their core capabilities of gathering, processing, fractionating, transporting, storing and marketing natural gas and NGLs through vertical integration across the midstream value chain to provide our customers with premium services while generating consistent and sustainable earnings growth."),

    ListItem(title: "Paycom",companyname: "Company Information", icon: "person", image: "Paycom", label: "2-24-2020", discription: "Paycom Software, Inc., known simply as Paycom, is an American online payroll and human resource technology provider based in Oklahoma City, Oklahoma. It is attributed with being one of the first fully online payroll providers and has offices throughout the U.S. It has also been recognized by Fortune magazine as one of the fastest-growing publicly traded companies in the world and Forbes' magazine ranked it one of the top five fastest-growing publicly traded technology companies in its Fast Tech rankings. Founded in 1998, it reported annual revenue of $737.7 million for 2019, up from $566.3 million in 2018."),

     ListItem(title: "Hilti",companyname: "Company Information", icon: "person", image: "Hilti", label: "3-13-2020", discription: "Hilti Corporation (Hilti Aktiengesellschaft or Hilti AG, also known as Hilti Group) is a Liechtenstein multinational company that develops, manufactures, and markets products for the construction, building maintenance, energy and manufacturing industries, mainly to the professional end-user. It concentrates mainly on anchoring systems, fire protection systems, installation systems, measuring and detection tools (such as laser levels, range meters and line lasers), power tools (such as hammer drills, demolition hammers, diamond drills, cordless electric drills, heavy angle drills, power saws) and related software and services"),

     ListItem(title: "ExxonMobil", companyname: "Company Information", icon: "person", image: "Exxon", label: "3-15-2020", discription: "ExxonMobil has evolved from a regional marketer of kerosene to an advanced energy and chemical innovator, and one of the largest publicly traded companies in the world. An industry leader in almost every aspect of the energy and chemical manufacturing businesses, we operate facilities or market products in most of the world’s countries, explore for oil and natural gas on six continents, and research and develop next-generation technologies to help meet the dual challenge of fueling global economies while addressing the risks of climate change."),

    ListItem(title: "ConocoPhillips", companyname: "Company Information", icon: "person", image: "Conoco", label: "4-15-2020", discription: "ConocoPhillips is an American multinational energy corporation with its headquarters located in the Energy Corridor district of Houston, Texas in the United States. It is the world's largest independent pure-play exploration and production company and the company ranked No. 95 in the 2018 Fortune 500 list of the largest United States corporations by total revenue. ConocoPhillips was created through the merger of American oil companies Conoco and Phillips Petroleum Company on August 30, 2002.=In 2012, ConocoPhillips spun off its downstream assets as a new, separate company, Phillips 66")

]
