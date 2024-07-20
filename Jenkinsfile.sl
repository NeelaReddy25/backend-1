@Library('jenkins-shared-library') _

// create variable of map type and set the values

def configMap = [
    type: "nodejsVM",
    component: "backend",
    project: "expense"
]

pipelineDecission.decidePipeline(configMap)