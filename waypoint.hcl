project = "Application"
app "webpage" {
  build {
    use "docker" {
    }
    registry {
      use "docker" {
        image = "jagadeesh280/app"
        tag = "17"
        auth {
      username = "jagadeeshbhavanam@gmail.com"
      password = "jagadeesh280"
    }   
      }
    }
  }
deploy {
    use "nomad" {
      datacenter = "dc1"
      namespace  = "default"
      service_provider = "nomad"
      service_port = 80
          replicas = 1
    }
  }
}
