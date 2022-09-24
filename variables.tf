#____________________________________________________________
#
# Link Aggregation Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "lacp_rate" {
  default     = "normal"
  description = <<-EOT
  Flag used to indicate whether LACP PDUs are to be sent 'fast', i.e., every 1 second.
  * fast - The fast timeout rate is 1 second.
  * normal - The normal timeout rate is 30 seconds.
  EOT
  type        = string
}

variable "name" {
  default     = "link_aggregation"
  description = "Name for the Policy."
  type        = string
}

variable "suspend_individual" {
  default     = false
  description = "Flag tells the switch whether to suspend the port if it didn’t receive LACP PDU."
  type        = bool
}

variable "organization" {
  default     = "default"
  description = "Intersight Organization Name to Apply Policy to.  https://intersight.com/an/settings/organizations/."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
