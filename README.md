# terraform-ecs
Provisiona Infra para aplicação rodando ECS com observabilidade

# Infraestrutura na AWS usando Terraform

Este projeto contém a definição de infraestrutura na AWS utilizando o Terraform para provisionar recursos como VPC, subnets, security groups, IAM roles, launch template, autoscaling group, load balancer (NLB), target group e listener.

## Pré-requisitos

- Terraform instalado localmente
- Credenciais de acesso à AWS configuradas

## Recursos Provisionados

- VPC com CIDR block `10.0.0.0/16`
- Duas subnets em diferentes AZs (`us-east-1a` e `us-east-1b`)
- Internet Gateway
- Route table e associação das subnets
- Security Group permitindo tráfego HTTP (porta 80) e SSH (porta 22)
- Cluster ECS
- Serviço ECS
- Task definition ECS
- IAM Roles para ECS tasks e ECS task execution
- Launch Template para instâncias ECS
- Autoscaling Group para escalabilidade automática
- Key Pair para acesso SSH
- Load Balancer (Network Load Balancer - NLB)
- Target Group
- Listener
- Observabilidade com Dynatrace

## Como usar

1. Certifique-se de ter o Terraform instalado e as credenciais da AWS configuradas.
2. Clone este repositório em sua máquina local.
3. No diretório do projeto, execute `terraform init` para inicializar o ambiente Terraform.
4. Execute `terraform plan` para verificar o plano de execução.
5. Execute `terraform apply` para provisionar a infraestrutura na AWS.
6. Após a conclusão, você obterá informações sobre os recursos provisionados.

## Observações

- Certifique-se de revisar e ajustar as configurações no arquivo `terraform.tfvars` conforme necessário.
- Não esqueça de destruir os recursos após o uso, executando `terraform destroy`.
