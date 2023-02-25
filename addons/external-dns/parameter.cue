// parameter.cue is used to store addon parameters.
//
// You can use these parameters in template.cue or in resources/ by 'parameter.myparam'
//
// For example, you can use parameters to allow the user to customize
// container images, ports, and etc.
parameter: {
	//+usage=Namespace to deploy to, defaults to external-dns
	namespace: *"external-dns" | string
	//+usage=Cloudflare config.
	cloudflare?: {
		//+usage=When using the Cloudflare provider, CF_API_TOKEN to set (optional)
		apiToken?: string
		//+usage=When using the Cloudflare provider, enable the proxy feature (DDOS protection, CDN...) (optional)
		proxied?: bool
	}
	//+usage=DNS provider where the DNS records will be created.
	provider: string
	//+usage=K8s resources type to be observed for new DNS entries by ExternalDNS
	sources?: [...string]
}
