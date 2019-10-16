import (
	extv1beta1 "k8s.io/api/extensions/v1beta1"
)

deployment <Name>: extv1beta1.Deployment

// constraints
container: {
	readinessProbe?: null | {
		timeoutSeconds: int32 & >9
	}
}

// label
podLabels: base.metadata.labels

// template
deployment test: {
	apiVersion: "extensions/v1beta1"
	kind:       "Deployment"
	spec: {
		template: {
			metadata: {
				labels: podLabels
			}
			spec: base.spec & {containers: [container]}
		}
	}
} & deploymentParameters

// output
deployment.test
