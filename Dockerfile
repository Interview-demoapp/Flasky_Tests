FROM devel.crfhealth.com:5000/um-test-service:master-latest

COPY . /

RUN pip3 install -r requirements.txt
ENTRYPOINT ["/entrypoint.sh"]
