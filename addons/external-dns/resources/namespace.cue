// We put Components in resources directory.
// References:
// - https://kubevela.net/docs/end-user/components/references
// - https://kubevela.net/docs/platform-engineers/addon/intro#resources-directoryoptional
output: {
	type: "k8s-objects"
	properties: {
		objects: [
			{
				type: "k8s-objects"
				name: "external-dns-ns"
				properties: objects: [{
					apiVersion: "v1"
					kind:       "Namespace"
					metadata: name: parameter.namespace
				}]
			},
		]
	}
}
