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

## Hızlı Node Kurulum 

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

## Node kurarken Oluşan Cüzdanın Seedini kaydedelim

#### CTRL + A + D ile screenden çıktıktan sonra aşağıdaki komutları girelim

```
cd
cat .avail/identity/identity.toml
```
#### ⚠️ Kelimeleri kaydedelim bazen node'umuzu restart ederken yeni cüzdan generate ediliyor, (wsl'de bu sorun yaşanıyor) böyle bir durumda tekrardan NFT mintlediğimiz pubkey'e geri dönmek için bunu kaydedelim

#### ℹ️ Node aktarma veya bahsettiğim üzere farklı pubkey gördüğünüz durumlarda identity.toml dosyasını ilk başta aldığınız kelimeler ile değiştirerek node'unuzu koruyabilirsiniz.

## RPC Problemi İçin Script

### Repoyu klonlayalım

```
git clone https://github.com/Nodes-Astro/Avail-Light-Client
```

### Screen'den çıkalım ve health check scriptimizi çalıştıralım

```
curl -sSL -o ./sc.sh https://raw.githubusercontent.com/Nodes-Astro/Avail-Light-Client/main/sc.sh && chmod +x sc.sh && bash ./sc.sh
```
#### ⚠️ Screen adı "light" olmazsa script çalışmaz, scriptin çalışması için light isimli bir screende node kurulumu yapıyor olmanız gerekiyor.

### 5 dakikada bir kontrol etmesi için ayarlayalım

```
crontab -e
```
#### ℹ️ Burada 1 yazıp enter diyoruz.

#### En aşağıya bunu yapıştıralım

```
*/5 * * * * /bin/bash /root/sc.sh
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/75c98aa7-8453-4831-8c21-b191cd1f82b8)

#### CTRL + X    Y + Enter diyelim ve kaydedip çıkalım, kurulum için gerekli her şey tamamlandı 

#### Script loglarmıza bakmak için: 

```
cat script_log.txt
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/ac764bc5-302e-4198-b444-fc13d41a27d0)

#### Bir sorun yoksa OK diyecektir eğer çalışmıyorsa FAIL CAUGHT diyip yeniden başlatacaktır, bu logları arada kontrol edebilirsiniz.

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

