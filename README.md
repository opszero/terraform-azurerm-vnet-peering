<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.87.0 |
| <a name="provider_azurerm.peer"></a> [azurerm.peer](#provider\_azurerm.peer) | >=3.87.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias_subs_id"></a> [alias\_subs\_id](#input\_alias\_subs\_id) | Alias for remote provider in module. | `string` | `""` | no |
| <a name="input_allow_forwarded_traffic_vnet1"></a> [allow\_forwarded\_traffic\_vnet1](#input\_allow\_forwarded\_traffic\_vnet1) | Controls if forwarded traffic from VMs in the remote virtual network is allowed | `bool` | `false` | no |
| <a name="input_allow_forwarded_traffic_vnet2"></a> [allow\_forwarded\_traffic\_vnet2](#input\_allow\_forwarded\_traffic\_vnet2) | Controls if forwarded traffic from VMs in the remote virtual network is allowed | `bool` | `false` | no |
| <a name="input_allow_forwarded_traffic_vnet_diff_subs"></a> [allow\_forwarded\_traffic\_vnet\_diff\_subs](#input\_allow\_forwarded\_traffic\_vnet\_diff\_subs) | Controls if forwarded traffic from VMs in the remote virtual network is allowed | `bool` | `false` | no |
| <a name="input_allow_gateway_transit_vnet1"></a> [allow\_gateway\_transit\_vnet1](#input\_allow\_gateway\_transit\_vnet1) | Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. | `bool` | `false` | no |
| <a name="input_allow_gateway_transit_vnet2"></a> [allow\_gateway\_transit\_vnet2](#input\_allow\_gateway\_transit\_vnet2) | Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. | `bool` | `false` | no |
| <a name="input_allow_gateway_transit_vnet_diff_subs"></a> [allow\_gateway\_transit\_vnet\_diff\_subs](#input\_allow\_gateway\_transit\_vnet\_diff\_subs) | Controls gatewayLinks can be used in the different subscription virtual network’s link to the local virtual network. | `bool` | `false` | no |
| <a name="input_allow_virtual_network_access"></a> [allow\_virtual\_network\_access](#input\_allow\_virtual\_network\_access) | Controls if the VMs in the remote virtual network can access VMs in the local virtual network. | `bool` | `true` | no |
| <a name="input_diff_subs_resource_group_name"></a> [diff\_subs\_resource\_group\_name](#input\_diff\_subs\_resource\_group\_name) | The name of remote resource group to be imported. | `string` | `""` | no |
| <a name="input_different_rg"></a> [different\_rg](#input\_different\_rg) | Flag to tell whether peering is to be done in same in resource group or different resource group | `bool` | `false` | no |
| <a name="input_enabled_diff_subs_peering"></a> [enabled\_diff\_subs\_peering](#input\_enabled\_diff\_subs\_peering) | n/a | `bool` | `false` | no |
| <a name="input_enabled_peering"></a> [enabled\_peering](#input\_enabled\_peering) | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| <a name="input_resource_group_1_name"></a> [resource\_group\_1\_name](#input\_resource\_group\_1\_name) | The name of 1st existing resource group to be imported. | `string` | `""` | no |
| <a name="input_resource_group_2_name"></a> [resource\_group\_2\_name](#input\_resource\_group\_2\_name) | The name of 2nd existing resource group to be imported. | `string` | `""` | no |
| <a name="input_use_remote_gateways_vnet1"></a> [use\_remote\_gateways\_vnet1](#input\_use\_remote\_gateways\_vnet1) | Controls if remote gateways can be used on the local virtual network | `bool` | `false` | no |
| <a name="input_use_remote_gateways_vnet2"></a> [use\_remote\_gateways\_vnet2](#input\_use\_remote\_gateways\_vnet2) | Controls if remote gateways can be used on the local virtual network | `bool` | `false` | no |
| <a name="input_use_remote_gateways_vnet_diff_subs"></a> [use\_remote\_gateways\_vnet\_diff\_subs](#input\_use\_remote\_gateways\_vnet\_diff\_subs) | Controls if remote gateways can be used on the different subscription virtual network | `bool` | `false` | no |
| <a name="input_vnet_1_id"></a> [vnet\_1\_id](#input\_vnet\_1\_id) | The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_vnet_1_name"></a> [vnet\_1\_name](#input\_vnet\_1\_name) | The name of the virtual network. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_vnet_2_id"></a> [vnet\_2\_id](#input\_vnet\_2\_id) | The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created. | `string` | `""` | no |
| <a name="input_vnet_2_name"></a> [vnet\_2\_name](#input\_vnet\_2\_name) | The name of the remote virtual network. | `string` | `""` | no |
| <a name="input_vnet_diff_subs_id"></a> [vnet\_diff\_subs\_id](#input\_vnet\_diff\_subs\_id) | The id of the remote virtual network. | `string` | `""` | no |
| <a name="input_vnet_diff_subs_name"></a> [vnet\_diff\_subs\_name](#input\_vnet\_diff\_subs\_name) | The name of the remote virtual network. | `string` | `""` | no |
## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.peering](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.peering_back](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.peering_back_diff_subs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vnet_peer_1_id"></a> [vnet\_peer\_1\_id](#output\_vnet\_peer\_1\_id) | The id of the newly created virtual network peering in on first virtual netowork. |
| <a name="output_vnet_peer_1_name"></a> [vnet\_peer\_1\_name](#output\_vnet\_peer\_1\_name) | The name of the newly created virtual network peering in on first virtual netowork. |
| <a name="output_vnet_peer_2_id"></a> [vnet\_peer\_2\_id](#output\_vnet\_peer\_2\_id) | The id of the newly created virtual network peering in on second virtual netowork. |
| <a name="output_vnet_peer_2_name"></a> [vnet\_peer\_2\_name](#output\_vnet\_peer\_2\_name) | The name of the newly created virtual network peering in on second virtual netowork. |
| <a name="output_vnet_peer_diff_subs_id"></a> [vnet\_peer\_diff\_subs\_id](#output\_vnet\_peer\_diff\_subs\_id) | The id of the newly created virtual network peering in on different subscription virtual netowork. |
| <a name="output_vnet_peer_diff_subs_name"></a> [vnet\_peer\_diff\_subs\_name](#output\_vnet\_peer\_diff\_subs\_name) | The name of the newly created virtual network peering in on different subscription virtual netowork. |
# 🚀 Built by opsZero!

<a href="https://opszero.com"><img src="https://opszero.com/img/common/opsZero-Logo-Large.webp" width="300px"/></a>

[opsZero](https://opszero.com) provides software and consulting for Cloud + AI. With our decade plus of experience scaling some of the world’s most innovative companies we have developed deep expertise in Kubernetes, DevOps, FinOps, and Compliance.

Our software and consulting solutions enable organizations to:

- migrate workloads to the Cloud
- setup compliance frameworks including SOC2, HIPAA, PCI-DSS, ITAR, FedRamp, CMMC, and more.
- FinOps solutions to reduce the cost of running Cloud workloads
- Kubernetes optimized for web scale and AI workloads
- finding underutilized Cloud resources
- setting up custom AI training and delivery
- building data integrations and scrapers
- modernizing onto modern ARM based processors

We do this with a high-touch support model where you:

- Get access to us on Slack, Microsoft Teams or Email
- Get 24/7 coverage of your infrastructure
- Get an accelerated migration to Kubernetes

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.

<br/><br/>

<div style="display: block">
  <img src="https://opszero.com/img/common/aws-advanced.png" alt="AWS Advanced Tier" width="150px" >
  <img src="https://opszero.com/img/common/aws-devops-competency.png" alt="AWS DevOps Competency" width="150px" >
  <img src="https://opszero.com/img/common/aws-eks.png" alt="AWS EKS Delivery" width="150px" >
  <img src="https://opszero.com/img/common/aws-public-sector.png" alt="AWS Public Sector" width="150px" >
</div>
<!-- END_TF_DOCS -->