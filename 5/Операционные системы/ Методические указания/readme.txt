    Отличия от методички

Скачать debian с сайта
    https://www.debian.org/CD/http-ftp/
или сразу
    https://cdimage.debian.org/debian-cd/current/i386/iso-cd/debian-9.5.0-i386-xfce-CD-1.iso
---debian---
root/root
user/user

Зеркало архива - mirror.yandex.ru (хотелось бы не использовать, но в дистрибутиве i386 ошибка)
Устанавливать только Стандартные системные утилиты !!!

дайте команду xx
Если выводятся "квадратики" вместо русских букв, дайте команду
nano /lib/systemd/system/console-setup.service
изменить строку 
    ExecStart=/lib/console-setup/console-setup.sh
на
    ExecStart=/bin/setupcon
Нажмите
    <Ctrl>+X
    Y
    <Enter>
и перезагрузитесь командой
    reboot
    
    
vi /etc/apt/sources.list
deb http://ftp.debian.org/debian/ stretch main
apt-get update
apt-get install psmisc net-tools

Если нет команды - найти пакет командой
    apt-cache search КОМАНДА

Если проблемы с сетью, проверить файлы:
    namo /etc/resolv.conf
должно быть
    nameserver 8.8.8.8
    
Настройка сетевых интерфейсов:
    namo /etc/network/interfaces
Перечитать настройки сети:
    ifdown eth1
    ifup eth1

Если не работает pstree, установить пакет

---windows---
pkgmgr /iu:"TelnetClient"

сервер АИС: 195.19.33.62	user01/user01...
