output "external_ip_address_app" {
  #value = [yandex_compute_instance.app[*].network_interface.0.nat_ip_address]
  value = [
    for app in  yandex_compute_instance.app:
    app.network_interface.0.nat_ip_address
  ]
}

output "external_ip_address_balancer" {
  value = yandex_lb_network_load_balancer.reddit-app.listener[*].external_address_spec[*].address
#    value = [
#      for listener in yandex_lb_network_load_balancer.reddit-app.listener :
#      listener.external_address_spec.*.address[0]
#  ]
}
