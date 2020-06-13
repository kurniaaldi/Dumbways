
var z = "lesley"
var a = "karrie"
const result = []
var arrZ = z.split("")
var arrA = a.split("")
console.log(arrA, arrZ)


for (let i = 0; i < arrZ.length; i++) {
    result.push(arrZ[i])
    result.push(arrA[i])
}

console.log(result)