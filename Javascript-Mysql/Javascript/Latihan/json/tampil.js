const fs = require('fs');

const isiFile = fs.readFileSync("data.json", "utf-8");
const data = JSON.parse(isiFile);

console.log("isi data.json", data);
data.forEach((item)=> {
    console.log(`ID: ${item.id},
        Nama :  ${item.nama},
        Usia : ${item.usia}`);
});