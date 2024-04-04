# Avail Light Client Kolay Kurulum

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/3b486833-e898-4e68-8570-06c84f0de701)

## Avail Light Client Challenge başladı! Herkes katılabiliyor, ödüllü etkinliğe katılmak için gerekli aşamaları burada bulabilirsiniz

#### Öncelikle substrate destekleyen bir cüzdan oluşturalım.(Subwallet, Talisman, Polkadot.js) İstediğiniz wallet uzantısını yükledikten sonra aşağıdaki linke girelim:

https://lightclient.availproject.org/

#### Buraya cüzdanımızı bağladıktan sonra ilk 3 görevi yapalım.

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/758ae9f6-d2c7-47b3-97ae-fe101aeed2ac)

#### ℹ️ İlk 3 görevi tamamladıktan sonra artık node'umuzu kurma aşamasına geçebiliriz. (Node kurup public keyimizi girerek bir sonraki görevi yapabiliyoruz.)

## Light Node Kuralım

## 🧊 Sistem Gereksinimleri

#### - RAM 4 GB 
#### - CPU (AMD64/x86 architecture) 2 cores
#### - Depolama (SSD) 20–40 GB 

## Seçenek 1 - Hızlı Kurulum 

### Screen Oluşturalım

```
screen -S light
```
#### ℹ️ Screen'den çıkmak için " CTRL + A + D " tekrar girmek için ise screen -r kullanabilirsiniz.

### Challenge'a katılmak için aşağıdaki scripti girelim 

```
curl -sL1 avail.sh | bash
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/6e2b4c8b-d2cf-42b2-9a70-caeef130d714)


#### ℹ️ Loglar böyle gözükmelidir. Avail ss58 adresinizi ve pubkeyinizi kaydedin, ardından "pubkeyi" 4. görevi tamamlamak için kullanın ve bütün görevleri bitirip NFT'yi mintleyin.

## Seçenek 2 - Systemd Kurulumu

#### Bu kurulum sistem özelliklerinize göre 20-25 dakika arası sürer fakat systemd üzerinden verimli çalışır.

### Repoyu klonlayalım

```
git clone https://github.com/Nodes-Astro/Avail-Light-Client
```

### Screen Oluşturalım

```
curl -sSL -o ./avail.sh https://raw.githubusercontent.com/Nodes-Astro/Avail-Light-Client/main/avail.sh && chmod +x avail.sh && bash ./avail.sh
```

####  ℹ️ Kurulum başladıktan sonra CTRL + A + D ile çıkış yapabilirsiniz

 ![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/6e2b4c8b-d2cf-42b2-9a70-caeef130d714)


#### ℹ️ Loglar böyle gözükmelidir. Avail ss58 adresinizi ve pubkeyinizi kaydedin, ardından "pubkeyi" 4. görevi tamamlamak için kullanın ve bütün görevleri bitirip NFT'yi mintleyin.

#### ℹ️ Etkinlik 2 Nisan'dan 9 Nisan'a kadar devam edecek bu süre zarfı boyunca nodeunuzu açık tutun gelen duyuruya göre kısa bir süre nodeumuzu çalıştırıp ardından makineyi kapatabiliriz, şimdiden hayırlı olsun!

## Faydalı Komutlar

#### Node'unuzun sağlık durumunu kontrol etmek için aşağıdaki komutu kullanabilirsiniz:

```
curl -I "localhost:7000/health"
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/1ac8bd87-8760-476f-bfed-05dc0adcb4da)

#### 200 OK diyorsa sorun yok demektir, demiyorsa telegram kanalımızda bizlerden yardım alabilirsiniz


## Faydalı Linkler

#### Daha önce hiç node kurmadıysanız, sunucu kiralamayı ve terminal kullanmayı bilmiyorsanız bu rehberi inceleyebilirsiniz:

https://github.com/Nodes-Astro/Sunucu-Kiralama

#### Node'u kurarken hata aldıysanız ve yardım arıyorsanız telegram grubumuza katılabilirsiniz:

https://t.me/Avail_TR

#### Güncel duyurulardan haberdar olmak istiyorsanız Twitter hesabımızı takip edebilirsiniz:

https://twitter.com/AvailTurkiye

