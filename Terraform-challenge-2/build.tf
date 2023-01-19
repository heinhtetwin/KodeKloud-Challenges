resource "docker_image" "php-httpd-image" {
  name = "php-httpd:challenge"
  build {
    path = "./lamp_stack/php_httpd"
    tag  = ["php-httpd:challenge"]
    label = {
      challenge : "second"
    }
  }
}

resource "docker_image" "mariadb-image" {
  name = "mariadb:challenge"
  build {
    path = "./lamp_stack/custom_db"
    tag  = ["mariadb:challenge"]
    label = {
      challenge : "second"
    }
  }
}