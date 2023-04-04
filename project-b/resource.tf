resource "null_resource" "project-b-cluster" {
     triggers = {
             value = module.global.web_url
        }
    provisioner "local-exec" {
        command = "echo Tag = ${module.global.tag_prefix}, Web URL = ${module.global.web_url},Company Name ${module.global.company_name}"
    }
}