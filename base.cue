base: {
	apiVersion: "v1"
	kind:       "Pod"
	metadata: {
		labels: {
			original: "test"
		}
	}
	spec containers: [{
		name:  "nginx"
		image: "nginx:1.7.9"
		ports: [{
			containerPort: 80
		}]
		resources: {
			requests: {
				cpu:    "20m"
				memory: "64Mi"
			}
		}
		readinessProbe timeoutSeconds: 10
	}]
}
