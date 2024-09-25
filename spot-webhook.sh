helm repo add castai-helm https://castai.github.io/helm-charts
helm upgrade -i --create-namespace -n castai-pod-node-lifecycle castai-pod-node-lifecycle \
    castai-helm/castai-pod-node-lifecycle \
    --set staticConfig.preset=allSpotExceptKubeSystem \
    --set staticConfig.defaultToSpot=false --set staticConfig.spotPercentageOfReplicaSet=20     