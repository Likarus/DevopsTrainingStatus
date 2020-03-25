# Azure Devops project Link where we implemented branching strategies and deployed a Python sample app to an Azure app service

https://dev.azure.com/51489/samplePythonProject

## Azure Container Registry

 I Created both classic and YML  piplines to build and deploy a docker image to my Personal Azure Container Registry, i will tear down the Azure Container Registry service beacause otherwise my free tier subsription will be drained but you can take a look at the logs for those pipelines 

### Classic Pipeline :

```
Pipeline Definition: https://dev.azure.com/51489/samplePythonProject/_apps/hub/ms.vss-ciworkflow.build-ci-hub?_a=edit-build-definition&id=6

Execution Log: https://dev.azure.com/51489/samplePythonProject/_build/results?buildId=11&view=logs&j=275f1d19-1bd8-5591-b06b-07d489ea915a
```

### YML Pipeline:
```
Pipeline Definition: https://dev.azure.com/51489/samplePythonProject/_apps/hub/ms.vss-build-web.ci-designer-hub?pipelineId=5&nonce=TbHl6flEkEiZSa2jGunbpA%3D%3D&branch=master

Execution Log: https://dev.azure.com/51489/samplePythonProject/_build/results?buildId=9&view=logs&j=3dc8fd7e-4368-5a92-293e-d53cefc8c4b3
```

An Azure Kubernetes Service implementation with the same web app is pending and will work on that tomorrow
