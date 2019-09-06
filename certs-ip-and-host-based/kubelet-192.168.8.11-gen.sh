cfssl gencert \
-ca=ca.pem \
-ca-key=ca-key.pem \
-config=ca-config.json \
-hostname=192.168.8.11,ksn1 \
-profile=kubernetes kubelet-192.168.8.11-csr.json | \
cfssljson -bare kubelet-192.168.8.11
