FROM marksteve/python
RUN pip install ansible
ONBUILD ADD hosts /etc/ansible/hosts
ONBUILD ADD id_rsa /root/.ssh/id_rsa
ENTRYPOINT ["ansible"]
CMD [""]
