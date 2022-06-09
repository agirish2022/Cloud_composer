module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "../sentinel-mocks/mock-tfplan-v2.sentinel"
  }
}

policy "cloud_composer_policy" {
    source = "./cloud_composer_policy.sentinel"
    enforcement_level = "advisory"
}
