# Avail-Light-Client

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/3b486833-e898-4e68-8570-06c84f0de701)

### Avail Light Client kolay kurulum scripti ile light nodeunuzu rahatlıkla kurabilirsiniz.

## Screen Oluşturalım

```
screen -S light
```
#### ℹ️ Screen'den çıkmak için " CTRL + A + D " tekrar girmek için ise screen -r kullanabilirsiniz.

## Kolay kurulum için aşağıdaki scripti girelim

```
curl -sSL -o avail-light-kurulum.sh https://raw.githubusercontent.com/Nodes-Astro/Avail-Light-Client/main/avail.sh && chmod +x babylon-kurulum.sh && bash ./avail.sh
```

#### ⚠️ Kurulum sistem özelliklerinize bağlı olarak 25-30 dk sürebilir, screende çalıştığı için terminalden çıkış yapabilirsiniz. Sonrasında "screen -r" ile screene girip  kurulum tamamlanmış mı kontrol edebilirsiniz.
## Logları görüntüleyip kontrol edelim

```
journalctl -f -u availd.service
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/a3bddf2c-fb60-48a4-ad57-e162f87a10fd)


#### ℹ️ Kurulum tamamlandıktan sonra loglar bu şekilde gözükmelidir. Çıktılarınız bu şekilde ise kurulum tamamlandı hayırlı olsun!


## Faydalı Linkler

#### Daha önce hiç node kurmadım sunucu kiralamayı ve terminal kullanmayı bilmiyorum diyorsanız tıklayın

#### Node'u kurarken hata aldıysanız ve yardım arıyorsanız [telegram] (https://t.me/Avail_TR/1) grubumuza katılabilirsiniz.

#### Güncel duyuruları takip etmek istiyorsanız [[X] (https://twitter.com/AvailTurkiye)] hesabımızı takip edebilirsiniz.

