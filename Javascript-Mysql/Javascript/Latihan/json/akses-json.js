const fs = require('fs');

const teks = fs.readFileSync("data.json", "utf-8");
const data = JSON.parse(teks);

console.log("Isi awal : ", data);

// menulis data baru ke data.json
data.push({id:2, nama : "Fauzia", usia : 25});

// menyimpan(menulis ulang
fs.writeFileSync ("data.json", JSON.stringify(data, null, 2));
console.log("Data berhasil dimasukkan");