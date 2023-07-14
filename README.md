# Den85s_infra


# способ подключения к someinternalhost в одну команду:
  ssh -J  denis@158.160.38.199 denis@10.128.0.31

#подключение из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства
Добавить в ~/.ssh/config ProxyJump:

Host someinternalhost
  Hostname 10.128.0.31
  ProxyJump 158.160.38.199
  User denis


#Open VPN
bastion_IP = 158.160.38.199
someinternalhost_IP = 10.128.0.31
