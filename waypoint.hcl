project = "Application"
app "webpage" {
  build {
    use "docker" {
    }
    registry {
      use "docker" {
        image = "jagadeesh280/app"
        tag = "18"
        
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
