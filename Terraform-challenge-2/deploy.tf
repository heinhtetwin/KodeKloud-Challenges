resource "docker_network" "private_network" {
  name = "my_network"
  attachable = true
  labels = {
    challenge = "second"
  }
}

resource "docker_container" "php-httpd" {
  name  = "webserver"
  image = docker_image.php-httpd.image_id
}