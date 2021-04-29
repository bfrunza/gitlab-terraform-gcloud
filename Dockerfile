FROM registry.gitlab.com/gitlab-org/terraform-images/stable:latest

RUN apk add python3
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-338.0.0-linux-x86_64.tar.gz
RUN tar zxf *.tar.gz
RUN rm -rfv *tar.gz
RUN /google-cloud-sdk/install.sh -q
RUN mv /google-cloud-sdk /usr/lib/
