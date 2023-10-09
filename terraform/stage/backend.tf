terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraformdenstate"
    region     = "ru-central1-a"
    key        = "terraform/stage/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
