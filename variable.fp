variable "my_name" {
  type = string
  format = text
  default = "siddhartha"
}

variable "string_var" {
  type = string
  format = text
  default = "flowpipe_string"
}

variable "mandatory_tag_keys" {
  type        = list(string)
  format      = json
  description = "A list of mandatory tag keys to check for (case sensitive)."
  default     = ["Environment", "Owner"]
}


variable "var_number" {
  type    = number
  default = 24
}

variable "var_map" {
    type = map(string)
    format   = json
    default = {
        key1 = "value1"
        key2 = "value2"
    }
}

variable "var_map_number" {
    type = map(number)
    default = {
        key1 = 1
        key2 = 2
    }
}

variable "default_notifier" {
  type        = string
  title       = "Default Notifier"
  description = "The name of the default notifier."
  default     = "default"
}
 