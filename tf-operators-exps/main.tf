terraform {}

# number list
variable "number_list" {
  type = list(number)
  default = [ 1,2,3,4,5 ]
}

# object list of person

variable "person_list" {
  type = list(object({
    fname = string
    lname = string
  }))
  default = [ {
    fname = "raju"
    lname = "rastogi"
  },{
    lname = "shyam"
    fname = "paul"
  } ]
}

variable "map_list" {
  type = map(number)
  default = {
    "one" = 1
    "two" = 2
    "three" = 3
  }
}

# Calculations

locals {
  mul = 2*2
  add = 2+2
  eq = 2!=3
  
  # Double the list
  double = [for num in var.number_list: num*2]

  # odd number only
  odd = [for num in var.number_list: num if num % 2 != 0]

  # to get fname from person list
  fname_list = [for person in var.person_list: person.fname]

  #work with map
  map_info = [ for key,value in var.map_list : value * 5 ]

  double_map = { for key, value in var.map_list : key => value * 5 }

}

output "output" {
  value = local.double_map
}