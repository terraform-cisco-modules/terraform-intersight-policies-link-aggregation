module "main" {
  source             = "../.."
  description        = "${var.name} Link Aggregation Policy."
  lacp_rate          = "normal"
  name               = var.name
  organization       = "terratest"
  suspend_individual = false
}
