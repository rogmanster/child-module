// Workspace Data
data "terraform_remote_state" "global_module" {
  backend = "remote"

  config = {
   organization = "rogercorp"
   workspaces = {
     name = "global-module"
   }
  }
}

outputs "name" {
  value = data.terraform_remote_state.global_module.outputs.name
}
