{
  "requiresCompatibilities": [
    "FARGATE"
  ],
    "containerDefinitions": [
    {
        "cpu": 256,
        "memory": 512,
        "name": "newweb-experiment-nginx",
        "image": "${IMAGE_URL}",
        "essential": true,
        "portMappings": [
            {
                "containerPort": 80,
                "protocol": "tcp",
                "hostPort": 80
            }
        ],
        "environment": [
            {
                "name": "ENV",
                "value": ""
            },
            {
                "name": "PORT",
                "value": "3000"
            }
        ]
    }
]
}
}
