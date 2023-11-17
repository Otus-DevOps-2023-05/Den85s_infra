# Den85s_infra

# Packer
установлен Packer
создан шаблон ubuntu16.json для создания baked-образа
создан шаблон immutable.json.json для создания bake-образа c запущенным http сервером

# Terraform 1
main.tf создание VM в YC из базового образа созданного с помощью Packer
outputs.tf - выходные переменные
variables.tf - описание входных переменных
terraform.tfvars - значение входных переменных
terraform.tfvars.example - примеры входных переменных

# Terraform 2
Реализован деплой stage и прод окружение с помощью созданных модулей app и db с сохранением состояния в Yandes Object Storage S3

# Ansible
После выполнения команды ansible app -m command -a 'rm -rf ~/reddit' выполнение плейбука clone.yml заново загрузило ~/reddit о чем было сообщение в логе changed=1
Созданы файлы inventory для статического json (inventory.json) и динамического (dynamic.py)

# Ansible - 2
Настроена конфигурация сервера с установкой reddit и mongodb с помощью ansible-playbook
доработан билд образов packer c использованием ansible provisioners

# Ansible - 3
 Настроены плейбуки с использованием собственных ролей и community
 Креды зашиврованы с использованием ansible-vault
 Настройки travis-ci не осуществлялись в связи с недоступностью ресурса
