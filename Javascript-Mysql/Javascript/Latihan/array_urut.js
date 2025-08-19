// urut aplhabet
console.log("urut alfabetis");
let nama = ["Emily", "Mark", "Ashley", "James"];
nama.sort();
console.log(nama);
console.log("");

// urut descending
console.log("urut descending")
let angkaDesc = [40, 20, 10, 2, 100, 53];
angkaDesc.sort(function(a,b){
    return b - a;
});
console.log(angkaDesc);
console.log("");

// urut object
console.log("urut object");
let siswa =[
    {nama : "Ali", nilai : 85},
    {nama : "Budi", nilai : 92},
    {nama : "Cici", nilai : 75}
];
siswa.sort((a,b) => b.nilai - a.nilai);
console.log(siswa);