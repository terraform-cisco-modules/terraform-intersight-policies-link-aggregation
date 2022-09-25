module "link_aggregation" {
  source  = "terraform-cisco-modules/policies-link-aggregation/intersight"
  version = ">= 1.0.1"

  description        = "default Link Aggregation Policy."
  lacp_rate          = "normal"
  name               = "default"
  organization       = "default"
  suspend_individual = false
}
