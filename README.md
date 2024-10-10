# unichain-node

*Başlamadan önce rehber 2 farklı kısıma ayrılmaktadır.* 


*1.kısım Node rehberidir.*
*2. kısım Contrat deploy rehberidir.*

# 1. kısım Node Rehberi

### Sistem gereksinimleri

| **Gereksinim**        | **Özellik**   |
|-----------------------|---------------|
| **CPU**               | 4 Çekirdek    |
| **RAM**               | 6 GB ve üzeri |
| **SSD**               | 150 GB ve üzeri |
| **İşletim Sistemi**   | Ubuntu 22.04 ve üzeri |


Repo kurulumu 

```
wget https://raw.githubusercontent.com/Hitasyurekk/unichain-node-/main/script.sh
chmod +x script.sh
./script.sh 
```

*Gerekli uygulamaları indirdikten sonra Unichain node dosyalarını indirip düzenleme yapacağız.*
```
git clone https://github.com/Uniswap/unichain-node
cd unichain-node

nano .env.sepolia
```
*Burada ekran gördüğünüz yerleri değiştireceğiz end point url almak için altta ki gösterdiğim şekilde url bulmanız gerekiyor.*

*Site : https://drpc.org/* 

*Bildileri girdikten sonra ctrl x + y + enter ile çıkıyoruz.*

![image](https://github.com/user-attachments/assets/36ada188-e521-42b3-b3d9-0f296148c6cf)

![image](https://github.com/user-attachments/assets/943c32ea-0d45-454c-a8fa-a20aecc0762f)
![image](https://github.com/user-attachments/assets/6df4cd71-9fdc-4c2e-aae0-e9a20f8d03eb)

*Node çalıştırma kısmı altta ki kodu girerek başlatıyoruz.*

```
docker compose up -d 
```
Ekran çıktısı bu şekilde ise işlemler tamamdır.
![image](https://github.com/user-attachments/assets/c1c32316-2e9e-49a7-b554-3438aba3bd98)

