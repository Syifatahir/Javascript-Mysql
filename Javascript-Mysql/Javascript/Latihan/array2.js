// menambah elemen di akhir
console.log("Tambah elemen");
let buah = ["apel", "jeruk", "mangga"];
buah.push("mangga", "pir");
console.log(buah);
console.log("");

// menghapus elemen di akhir
console.log("Hapus elemen");
let buah1 = ["apel", "jeruk", "mangga"];
buah1.pop("mangga", "pir");
console.log(buah1);
console.log("");

// menambah elemen di awal
console.log("Tambah elemen awal");
let buah2 = ["apel", "jeruk", "mangga"];
buah2.unshift("pir");
console.log(buah2);
console.log("");

// menghapus elemen di awal
console.log("Hapus elemen awal");
let buah3 = ["apel", "mangga"];
buah3.shift();
console.log(buah3);
console.log("");

// menambah elemen tertentu
console.log("menambah elemen tertentu");
let angka1 = [1, 2, 4, 5];
angka1.splice(2,0,3);
console.log(angka1);
console.log("");

// menghapus elemen tertentu
console.log("menghapus elemen tertentu");
let angka2 = [1, 2, 4, 5];
angka2.splice(2,2);
console.log(angka2);
console.log("");

// mengambil sebagian array
console.log(" mengambil sebagian array");
let angka3 = [1, 2, 3, 4, 5];
let potong = angka3.slice(1, 4);
console.log(potong);
