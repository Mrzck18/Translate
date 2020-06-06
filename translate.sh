#!/bin/bash
# auto translate via bash shell
# kode kea begini fix mau di recode 
# Ampun Mastah
merah=$(tput setaf 1)
hijau=$(tput setaf 2)
kuning=$(tput setaf 3)
biru=$(tput setaf 4)
ungu=$(tput setaf 5)
cyen=$(tpyt setaf 6)
putih=$(tput setaf 7)
translate(){
         aoao=$(curl "https://translate.google.com/m?hl=id&sl=$frm&tl=$toz&ie=UTF-8&prev=_m&q=${o}" --location --silent \
         -H 'authority: translate.google.com'  \
         -H 'pragma: no-cache' \
         -H 'cache-control: no-cache' \
         -H 'upgrade-insecure-requests: 1' \
         -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36' \
         -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' \
         -H 'accept-encoding: gzip, deflate, br' \
         -H 'accept-language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7' --compressed)
   njr=$(echo -e "$aoao" | grep -Po 'class="t0">(\D+)</div>' | cut -d ">" -f2 | cut -d "<" -f1)
  echo -e " ${merah}[${hijau}+${merah}] ${biru}Hasil -> ${putih}$njr"
}
clear
echo "${hijau}"
cat << "EOF"
             ,        ,
            /(        )`
            \ \___   / |
            /- _  `-/  '
           (/\/ \ \   /\
           / /   | `    \
           O O   ) /    |
           `-^--'`<     '
          (_.)  _  )   /  Author : Mr.Zck18 & Widhisec
           `.___/`    /
             `-----' /    
<----.     __ / __   \  ..::: GOOGLE TRANSLATE :::..
<----|====O)))==) \) /====
<----'    `--' `.__,' \
             |        | Support : X-core Indonesia
              \       /         - indonesian necoder         
        ______( (_  / \______   
      ,'  ,-----'   |        \
      `--{__________)        \/
EOF
echo ""
echo -n " ${merah}[${hijau}+${merah}] ${putih}Masukkan Kata -> ${hijau}"; read TRJ
o=$(echo -e "$TRJ" | sed 's/ /+/g')
echo -n " ${merah}[${hijau}●${merah}] ${cyen}Dari : ${putih}"; read frm
echo -n " ${merah}[${hijau}◎${merah}] ${ungu}Ke : ${putih}"; read toz
translate
