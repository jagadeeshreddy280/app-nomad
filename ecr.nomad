job "frontend-logs" {
    datacenters = ["dc1"]
    group "frontend" {
        count = 1 
    task "f-logs" {
      driver = "docker"
      config {
        image = "jagadeesh280/app:8"
auth {
      username = "jagadeeshbhavanam@gmail.com"
      password = "jagadeesh280"
    }   
      }       
      resources {
        network {
          mbits = 10
          port "http" {
            static = "80"
          }
        }
      }
    }        
    }
}        



