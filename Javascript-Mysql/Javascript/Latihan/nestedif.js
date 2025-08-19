let minimarketStatus = "open";
let telur = "soldout";
let buah = "soldout";

if(minimarketStatus == "open"){
    console.log("Saya akan membeli buah dan telur");
    if(telur == "soldout" || buah == "soldout"){
        console.log("Belanjaaan saya tidak lengkap");
    }else if (telur == "soldout"){
         console.log("Telur Habis");
    }else if (buah == "soldout"){
         console.log("Buah Habis");
    };
}else{
    console.log("Minimarket tutup, saya pulang")
};