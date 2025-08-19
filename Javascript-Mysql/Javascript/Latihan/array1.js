// array 1d
console.log("Array 1 Dimensi");
let buah = ["apel", "anggur", "jeruk"];

// menampilkan array
console.log(buah[2]);
console.log("");

// array object
console.log("Array object");
let mobil = [
    {merk: "bmw", warna: "merah", tipe: "sedan"},
    {merk: "toyota", warna: "hitam", tipe: "box"},
    {merk: "audi", warna: "putih", tipe: "sedan"}
];

// menampilkan array object
console.log(mobil[0].merk);
console.log(mobil[1].warna);
console.log(mobil[2].tipe);
console.log("");

// Panjang array
console.log("Panjang array");
console.log(buah.length);
console.log("");

// foreach
console.log("foreach array");
buah.forEach(function(nilai, index){
    console.log("Index ke - " + index + ": " + nilai);
});
console.log("");

// foreach object
console.log("foreach array object");
mobil.forEach(function(item, i){
    console.log(`Mobil ke - ${i + 1}:`);
    console.log(`Merk : ${item.merk}:`);
    console.log(`Warna : ${item.warna}:`);
    console.log(`Tipe : ${item.tipe}:`);

});
console.log("");

// map
console.log("map array");
let arraryWarna = mobil.map(function(item){
    return item.warna;
});
console.log(arraryWarna);
console.log("");

// filter
console.log("filter array");
let arrayMobilFilter = mobil.filter(function(item){
    return item.tipe != "box";
})

console.log(arrayMobilFilter);