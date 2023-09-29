

kubectl cp log.sh nginx-deployment-6547454456-9568f:/tmp/
kubectl exec nginx-deployment-6547454456-9568f  -- /bin/sh -c "chmod 777 /tmp/log.sh && touch /tmp/foo.log"
kubectl exec nginx-deployment-6547454456-9568f -- /bin/sh -c "/tmp/log.sh"
kubectl cp nginx-deployment-6547454456-9568f:/tmp/foo.log ./`kubectl get pods -n default nginx-deployment-6547454456-9568f -o jsonpath='{.metadata.uid}'`_foo.log


kubectl cp log.sh nginx-deployment-6547454456-ptxcp:/tmp/
kubectl exec nginx-deployment-6547454456-ptxcp  -- /bin/sh -c "chmod 777 /tmp/log.sh && touch /tmp/foo.log"
kubectl exec nginx-deployment-6547454456-ptxcp -- /bin/sh -c "/tmp/log.sh"
kubectl cp nginx-deployment-6547454456-ptxcp:/tmp/foo.log ./`kubectl get pods -n default nginx-deployment-6547454456-ptxcp -o jsonpath='{.metadata.uid}'`_foo.log

kubectl cp log.sh nginx-deployment-6547454456-wkbcr:/tmp/
kubectl exec nginx-deployment-6547454456-wkbcr  -- /bin/sh -c "chmod 777 /tmp/log.sh && touch /tmp/foo.log"
kubectl exec nginx-deployment-6547454456-wkbcr -- /bin/sh -c "/tmp/log.sh"
kubectl cp nginx-deployment-6547454456-ptxcp:/tmp/foo.log ./`kubectl get pods -n default nginx-deployment-6547454456-wkbcr -o jsonpath='{.metadata.uid}'`_foo.log