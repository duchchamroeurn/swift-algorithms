import UIKit

var str = "Hello, playground"


let provicesKH = [
    "បន្ទាយមានជ័យ",
    "បាត់ដំបង",
    "កំពង់ចាម",
    "កំពង់ស្ពឺ",
    "កំពត",
    "កែប",
    "កោះកុង",
    "ក្រចេះ",
    "មណ្ឌលគីរី",
    "ឧត្តមានជ័យ",
    "ប៉ៃលិន",
    "ភ្នំពេញ",
    "ព្រះសីហនុ",
    "ព្រះវិហារ",
    "ព្រៃវែង",
    "ពោធ៌សាត់",
    "រតនគីរី",
    "សៀមរាប",
    "ស្ទឹងត្រែង",
    "ស្វាយរៀង",
    "តាកែវ",
    "ត្បូងឃ្មុំ"
]

let provinceEN = [
    "Banteay Mean Chey",
    "Battambong",
    "Kompong Cham",
    "Kompong Speu",
    "Kom Pot",
    "Kep",
    "Koh Kong",
    "Kratie",
    "Mondol Kiri",
    "Oudom Mean Chey",
    "Pailen",
    "Phnom Penh",
    "Sihanuk Villige",
    "Prah Vihear",
    "Prey Veng",
    "Pusat",
    "Rathanak Kiri",
    "Siem Reab",
    "Steung Treing",
    "Svay Rieng",
    "Takeo",
    "Tbong Khmom"

]

var dic = [String: [String]]()

for province in provicesKH.sorted(by: <) {
    let str = province.unicodeScalars
    
    let key = str[str.startIndex]
    let strKey = String.init(key)
    if dic[strKey] == nil {
        dic[strKey] = [province]
    } else {
        dic[strKey]?.append(province)
    }
}

struct Location {
    let item: [String]
    let titleString: String
}


var dicLocation = [String: [String]]()

let sortLocation = dic.sorted(by: { $0.0 < $1.0 })
for (key, value) in sortLocation {
    print(key)
    value.forEach({ print("\t \($0)")})
}




// 0 -> 0000 -> total ->  -> 10000  10 * 10*4

// 0000
// 1111
// 2222
// 3333
// 4444
// 5555
// 6666
// 7777
// 8888
// 9999

//-----//


// [red, white, black] = can / 0001, 0002, 0003, 3000,


