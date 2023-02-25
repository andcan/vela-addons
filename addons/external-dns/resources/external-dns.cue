output: {
	name: "external-dns"
	type: "helm"
	dependsOn: ["external-dns-ns"]
	properties: {
		repoType:        "helm"
		url:             "https://charts.bitnami.com/bitnami"
		chart:           "external-dns"
		targetNamespace: parameter.namespace
		version:         "6.14.0"
		values: {
			if parameter.cloudflare != _|_ {
				cloudflare: parameter.cloudflare
			}
			provider: parameter.provider
			sources:  parameter.sources
		}
	}
}
