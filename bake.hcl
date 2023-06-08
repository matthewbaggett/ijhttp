group "default" {
  targets = [
    "ijhttp",
  ]
}

target "ijhttp" {
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/arm64","linux/amd64"]
  tags = [
    "matthewbaggett/ijhttp",
  ]
}
