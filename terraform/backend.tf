terraform {
  cloud {
    organization = "diplom-test"

    workspaces {
      name = "stage"
    }
  }
}
