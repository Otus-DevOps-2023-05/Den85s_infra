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
