# Avail-Light-Client-Kurulum

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/3b486833-e898-4e68-8570-06c84f0de701)

### Avail Light Client kolay kurulum scripti ile light nodeunuzu rahatlıkla kurabilirsiniz.

## Screen Oluşturalım

```
screen -S light
```
#### ℹ️ Screen'den çıkmak için " CTRL + A + D " tekrar girmek için ise screen -r kullanabilirsiniz.

## Kolay kurulum için aşağıdaki scripti girelim

```
curl -sSL -o avail.sh https://raw.githubusercontent.com/Nodes-Astro/Avail-Light-Client/main/avail.sh && chmod +x avail.sh && bash ./avail.sh
```

#### ⚠️ Kurulum sistem özelliklerinize bağlı olarak 25-30 dk sürebilir, screende çalıştığı için terminalden çıkış yapabilirsiniz. Sonrasında "screen -r" ile screene girip  kurulum tamamlanmış mı kontrol edebilirsiniz.

#### ℹ️ Kurulum esnasında kurulum aşamalarını takip etmek isterseniz screenden çıkıp şu komutu çalıştırabilirsiniz:

```
tail -f ./log.txt
```

## Kurulum tamamlandıktan sonra logları görüntüleyip kontrol edelim

```
journalctl -f -u availd.service
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/a3bddf2c-fb60-48a4-ad57-e162f87a10fd)


#### ℹ️ Loglar böyle gözükmelidir. Çıktılarınız bu şekilde ise kurulum tamamlandı hayırlı olsun!


## Faydalı Linkler

#### Daha önce hiç node kurmadım, sunucu kiralamayı ve terminal kullanmayı bilmiyorum diyorsanız rehberimizi inceleyebilirsiniz:

https://github.com/Nodes-Astro/Sunucu-Kiralama/blob/main/README.md

#### Node'u kurarken hata aldıysanız ve yardım arıyorsanız telegram grubumuza katılabilirsiniz:

https://t.me/Avail_TR

#### Güncel duyuruları takip etmek istiyorsanız Twitter hesabımızı takip edebilirsiniz:

https://twitter.com/AvailTurkiye

