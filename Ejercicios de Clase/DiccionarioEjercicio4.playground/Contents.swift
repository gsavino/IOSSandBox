//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var amigos:[String:[String]] = [:]
amigos = ["Juan":["Juancho","Fisura","Ricardo Fort"],"Miguel":["Night Watch","Bruce Wayne","Pati Corti"],"Maria":["Wonder Woman","Mary","Roberto"], "Lucas":["Luks","Jorge","Cholo"]]

for (key, data) in amigos {
    print ("Clave \(key) Sobrenombres \(data)")
}
amigos["Juan"]=nil
print("\n\n==== Luego de sacar a Juan =====\n\n")
for (key, data) in amigos {
    print ("Clave \(key) Sobrenombres :")
    for ele in data {
        print ("              \(ele)")
    }
}



