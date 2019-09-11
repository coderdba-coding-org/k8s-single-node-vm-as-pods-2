# Add the cluster information for 192.168.8.11
kubectl config set-cluster kubernetes \
--certificate-authority=ca.pem \
--embed-certs=true \
--server=https://192.168.8.11:6443 \
--kubeconfig=kubelet.kubeconfig
#--kubeconfig=192.168.8.11.kubeconfig

# Add the credentials for 192.168.8.11.

kubectl config set-credentials system:node:192.168.8.11 \
--client-certificate=192.168.8.11.pem \
--client-key=192.168.8.11-key.pem \
--embed-certs=true \
--kubeconfig=kubelet.kubeconfig
#--kubeconfig=192.168.8.11.kubeconfig

# Add the context for 192.168.8.11.

kubectl config set-context default \
--cluster=kubernetes \
--user=system:node:192.168.8.11 \
--kubeconfig=kubelet.kubeconfig
#--kubeconfig=192.168.8.11.kubeconfig

# Use the context for 192.168.8.11.
kubectl config use-context default \
--kubeconfig=kubelet.kubeconfig
#--kubeconfig=192.168.8.11.kubeconfig
