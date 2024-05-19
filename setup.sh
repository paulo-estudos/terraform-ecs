#!/bin/bash
echo ECS_CLUSTER=ecs_libertines >> /etc/ecs/ecs.config

# Variáveis Dynatrace
DT_TENANT="ttl71029"
DT_API_TOKEN="dt0c01.FQGLP2J4FTLMGKVWZ4V3VK65.RTBQUMZLTSL33EPYUJIQUVFC2YGABTHTFS36AIZ6L6QWGVX2U3U6KT3ONQGUPBSU"

# URL do instalador do agente Dynatrace
INSTALLER_URL="https://${DT_TENANT}.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?Api-Token=${DT_API_TOKEN}&arch=x86&flavor=default"

# Baixar e instalar o agente Dynatrace
curl -o Dynatrace-OneAgent-Linux.sh "$INSTALLER_URL"

# Instalar o agente Dynatrace
/bin/sh Dynatrace-OneAgent-Linux.sh --set-app-log-content-access=true --set-host-group=ECS

# Iniciar o agente Dynatrace
/opt/dynatrace/oneagent/agent/bin/oneagentctl --set-host-id=ecs-instance --set-host-group=ECS --restart-service

# Remover o script de instalação para economizar espaço
rm Dynatrace-OneAgent-Linux.sh
