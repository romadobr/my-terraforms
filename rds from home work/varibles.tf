variable storage {
  type        = string
  description = "amount of storage"   
}

variable Name {
  type        = string
  description = "DB name"  
}

variable engine {
  type        = string
  description = "my db engine" 
}

variable engine_version {
  type        = string
  description = "engine version"

}

variable instance_class {
  type        = string
  description = "class of my DB"
}

variable username {
  type        = string
  description = "user name"
}

variable password {
  type        = string
  description = "password"
}

variable skip_final_snapshot {
  type        = bool
  description = "true or false"
}
