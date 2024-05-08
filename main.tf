module "policy" {
  source      = "./module-policy"
  policy_name = var.policy_name_module
}

module "condition" {
  source    = "./module-condition"
  alert     = var.alert_module
  policy_id = module.policy.policy_id
}
