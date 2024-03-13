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

#### ⚠️ Kurulum sistem özelliklerinize bağlı olarak 25-30 dk sürebilir, CTRL + A + D ile screenden çıktıktan sonra terminalden çıkabilirsiniz. (screen -r ile yeniden girip kurulumu kontrol edebilirsiniz)

## Logları görüntüleyip kontrol edelim

```
journalctl -f -u availd.service
```

![image](https://github.com/Nodes-Astro/Avail-Light-Client/assets/105454859/a3bddf2c-fb60-48a4-ad57-e162f87a10fd)


#### ℹ️ Kurulum tamamlandıktan sonra loglar bu şekilde gözükmelidir. Çıktılarınız bu şekilde ise kurulum tamamlandı hayırlı olsun!



