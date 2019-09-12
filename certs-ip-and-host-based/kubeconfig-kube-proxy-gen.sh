 kubectl config set-cluster kubernetes \
--certificate-authority=ca.pem \
--embed-certs=true \
--server=https://192.168.8.11:6443 \
--kubeconfig=kubeconfig.kube-proxy

kubectl config set-credentials kube-proxy \
--client-certificate=kube-proxy.pem \
--client-key=kube-proxy-key.pem \
--embed-certs=true \
--kubeconfig=kubeconfig.kube-proxy

kubectl config set-context default \
--cluster=kubernetes \
--user=kube-proxy \
--kubeconfig=kubeconfig.kube-proxy

kubectl config use-context default --kubeconfig=kubeconfig.kube-proxy
