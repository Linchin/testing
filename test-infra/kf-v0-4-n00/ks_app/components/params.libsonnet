{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "pytorch-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      disks: 'null',
      name: 'pytorch-operator',
      pytorchDefaultImage: 'null',
      pytorchJobImage: 'gcr.io/kubeflow-images-public/pytorch-operator:v0.4.0',
      pytorchJobVersion: 'v1beta1',
    },
    ambassador: {
      ambassadorImage: 'quay.io/datawire/ambassador:0.37.0',
      ambassadorServiceType: 'ClusterIP',
      name: 'ambassador',
      platform: 'gke',
    },
    openvino: {
      image: 'openvino-model-server',
      modelName: 'resnet',
      modelStorageType: 'nfs',
      name: 'openvino',
      pvc: 'nfs',
      pvcMount: '/opt/ml',
      registry: 'gcr.io',
      replicas: 1,
      repoPath: 'constant-cubist-173123/inference_server',
      servicePort: 80,
      serviceType: 'ClusterIP',
      targetPort: 80,
    },
    jupyter: {
      accessLocalFs: 'false',
      gcpSecretName: 'user-gcp-sa',
      image: 'gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1',
      jupyterHubAuthenticator: 'iap',
      name: 'jupyter',
      notebookGid: '-1',
      notebookUid: '-1',
      platform: 'gke',
      rokSecretName: 'secret-rok-{username}',
      serviceType: 'ClusterIP',
      storageClass: 'null',
      ui: 'default',
      useJupyterLabAsDefault: 'false',
    },
    centraldashboard: {
      image: 'gcr.io/kubeflow-images-public/centraldashboard:v0.4.0',
      name: 'centraldashboard',
    },
    "tf-job-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      name: 'tf-job-operator',
      tfDefaultImage: 'null',
      tfJobImage: 'gcr.io/kubeflow-images-public/tf_operator:v0.4.0',
      tfJobUiServiceType: 'ClusterIP',
      tfJobVersion: 'v1beta1',
    },
    metacontroller: {
      image: 'metacontroller/metacontroller:v0.3.0',
      name: 'metacontroller',
    },
    profiles: {
      image: 'metacontroller/jsonnetd@sha256:25c25f217ad030a0f67e37078c33194785b494569b0c088d8df4f00da8fd15a0',
      name: 'profiles',
    },
    notebooks: {
      accessLocalFs: 'false',
      authenticator: 'null',
      disks: 'null',
      gid: '-1',
      image: 'gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1',
      name: 'notebooks',
      pvcMount: '/home/jovyan',
      registry: 'gcr.io',
      repoName: 'kubeflow-images-public',
      servicePort: '80',
      serviceType: 'ClusterIP',
      targetPort: '8888',
      uid: '-1',
    },
    argo: {
      executorImage: 'argoproj/argoexec:v2.2.0',
      name: 'argo',
      uiImage: 'argoproj/argoui:v2.2.0',
      workflowControllerImage: 'argoproj/workflow-controller:v2.2.0',
    },
    pipeline: {
      apiImage: 'gcr.io/ml-pipeline/api-server:0.1.6',
      name: 'pipeline',
      persistenceAgentImage: 'gcr.io/ml-pipeline/persistenceagent:0.1.6',
      scheduledWorkflowImage: 'gcr.io/ml-pipeline/scheduledworkflow:0.1.6',
      uiImage: 'gcr.io/ml-pipeline/frontend:0.1.6',
    },
    katib: {
      katibUIImage: 'gcr.io/kubeflow-images-public/katib/katib-ui:v0.1.2-alpha-100-gbca0b58',
      metricsCollectorImage: 'gcr.io/kubeflow-images-public/katib/metrics-collector:v0.1.2-alpha-100-gbca0b58',
      name: 'katib',
      studyJobControllerImage: 'gcr.io/kubeflow-images-public/katib/studyjob-controller:v0.1.2-alpha-100-gbca0b58',
      suggestionBayesianOptimizationImage: 'gcr.io/kubeflow-images-public/katib/suggestion-bayesianoptimization:v0.1.2-alpha-98-g07e0fd2',
      suggestionGridImage: 'gcr.io/kubeflow-images-public/katib/suggestion-grid:v0.1.2-alpha-98-g07e0fd2',
      suggestionHyperbandImage: 'gcr.io/kubeflow-images-public/katib/suggestion-hyperband:v0.1.2-alpha-98-g07e0fd2',
      suggestionRandomImage: 'gcr.io/kubeflow-images-public/katib/suggestion-random:v0.1.2-alpha-98-g07e0fd2',
      vizierCoreImage: 'gcr.io/kubeflow-images-public/katib/vizier-core:v0.1.2-alpha-100-gbca0b58',
      vizierCoreRestImage: 'gcr.io/kubeflow-images-public/katib/vizier-core-rest:v0.1.2-alpha-100-gbca0b58',
      vizierDbImage: 'mysql:8.0.3',
    },
    spartakus: {
      name: 'spartakus',
      reportUsage: 'true',
      usageId: '99623379',
    },
    application: {
      components: [],
      emitCRD: 'true',
      name: 'application',
      type: 'kubeflow',
      version: '0.3',
    },
    "cloud-endpoints": {
      name: 'cloud-endpoints',
      secretKey: 'admin-gcp-sa.json',
      secretName: 'admin-gcp-sa',
    },
    "cert-manager": {
      acmeEmail: 'jlewi@google.com',
      acmeUrl: 'https://acme-v02.api.letsencrypt.org/directory',
      certManagerImage: 'quay.io/jetstack/cert-manager-controller:v0.4.0',
      name: 'cert-manager',
    },
    "iap-ingress": {
      disableJwtChecking: 'false',
      envoyImage: 'gcr.io/kubeflow-images-public/envoy:v20180309-0fb4886b463698702b6a08955045731903a18738',
      hostname: 'kf-v0-4-n00.endpoints.kubeflow-ci.cloud.goog',
      ingressSetupImage: 'gcr.io/kubeflow-images-public/ingress-setup:latest',
      ipName: 'kf-v0-4-n00-ip',
      issuer: 'letsencrypt-prod',
      name: 'iap-ingress',
      oauthSecretName: 'kubeflow-oauth',
      privateGKECluster: 'false',
      secretName: 'envoy-ingress-tls',
    },
  },
}