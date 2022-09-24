#____________________________________________________________
#
# Intersight Organization Data Source
# GUI Location: Settings > Settings > Organizations > {Name}
#____________________________________________________________

data "intersight_organization_organization" "org_moid" {
  name = var.organization
}

#__________________________________________________________________
#
# Intersight Link Aggregation Policy
# GUI Location: Policies > Create Policy > Link Aggregation
#__________________________________________________________________

resource "intersight_fabric_link_aggregation_policy" "link_aggregation" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  description = var.description != "" ? var.description : "${var.name} Link Aggregation Policy."
  name               = var.name
  lacp_rate          = var.lacp_rate
  suspend_individual = var.suspend_individual
  organization {
    moid        = data.intersight_organization_organization.org_moid.results[0].moid
    object_type = "organization.Organization"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
