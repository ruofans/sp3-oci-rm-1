resource "oci_identity_dynamic_group" "HeadNode_DG" {
  compartment_id = local.Sp3_cid

  description   = "Group for Head Node in deployment ${local.Sp3_deploy_id}"
  matching_rule = "Any {All {instance.id = ${local.Sp3Headnode_id}}}"
  name          = "${local.Sp3_env_name}_HeadNode_Dynamic_Group"
}