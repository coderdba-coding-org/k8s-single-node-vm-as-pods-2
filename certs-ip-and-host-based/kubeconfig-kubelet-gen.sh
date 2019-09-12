# Old kubeconfig file name
#--kubeconfig=192.168.8.11.kubeconfig

# Add the cluster information for 192.168.8.11
kubectl config set-cluster kubernetes \
--certificate-authority=ca.pem \
--embed-certs=true \
--server=https://192.168.8.11:6443 \
--kubeconfig=kubeconfig.kubelet.192.168.8.11

# Add the credentials for 192.168.8.11.

kubectl config set-credentials system:node:192.168.8.11 \
--client-certificate=kubelet-192.168.8.11.pem \
--client-key=kubelet-192.168.8.11-key.pem \
--embed-certs=true \
--kubeconfig=kubeconfig.kubelet.192.168.8.11

# Add the context for 192.168.8.11.

kubectl config set-context default \
--cluster=kubernetes \
--user=system:node:192.168.8.11 \
--kubeconfig=kubeconfig.kubelet.192.168.8.11

# Use the context for 192.168.8.11.
kubectl config use-context default \
--kubeconfig=kubeconfig.kubelet.192.168.8.11
