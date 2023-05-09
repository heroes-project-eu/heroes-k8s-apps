## Opensearch and OpenSearch-Dashboards helm charts for k8s deployment

Cloned by https://github.com/opensearch-project/helm-charts.git on 05/25/2022.  
Opensearch chart version: 1.12.0  
OpenSearch-Dashboards chart version: 1.6.0  


### Requirements

Helm [https://helm.sh/docs/intro/install/]  
Install chartmuseum push plugin:
```shell
helm plugin install https://github.com/chartmuseum/helm-push
```
Add chart repository with name "opensearch-helm" (you need an access token to authenticate):
```shell
helm repo add --username <username> --password <access_token> opensearch-helm https://54.72.174.143/api/v4/projects/3/packages/helm/stable  
helm repo update
```

### Update Package Registry on Gitlab (manual)
After your helm charts customizations, execute following commands:

```shell
helm package opensearch opensearch-dashboards
helm cm-push opensearch-<version>.tgz opensearch-helm && helm cm-push opensearch-dashboards-<version>.tgz opensearch-helm
```
...OR:

```shell
./helm_pkg_push.sh <opensearch|opensearch-dashboards> opensearch-helm
```
