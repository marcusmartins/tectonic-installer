output "ca_cert_pem" {
  value = "${var.ca_cert_pem}"
}

output "key_pem" {
  value = "${tls_private_key.ingress.private_key_pem}"
}

output "cert_pem" {
  value = "${tls_locally_signed_cert.ingress.cert_pem}"
}

output "bundle_pem" {
  value = "${join("", list(tls_locally_signed_cert.ingress.cert_pem, tls_private_key.ingress.private_key_pem, var.ca_cert_pem))}"
}
