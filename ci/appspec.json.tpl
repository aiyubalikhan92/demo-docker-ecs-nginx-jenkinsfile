{
  "version": 0.0,
  "Resources": [
  {
    "TargetService": {
      "Type": "AWS::ECS::Service",
      "Properties": {
        "TaskDefinition": "${TASK_DEFINITION_ARN}",
        "LoadBalancerInfo": {
          "ContainerName": "newweb-experiment-nginx",
          "ContainerPort": 80
        }
      }
    }
  }
  ]
}