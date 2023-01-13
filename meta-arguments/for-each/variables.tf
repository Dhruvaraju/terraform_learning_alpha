variable "filename" {
  type = set(string)
  default = [
    "d://temp//suv.txt",
    "d://temp//sedan.txt",
    "d://temp//hatchback.txt"
  ]
}

variable "file-content" {
  type = map(string)
  default = {
    "suv"       = "for morethan 4 people"
    "sedan"     = "for 4 persons"
    "hatchback" = "for individual use"
  }
}