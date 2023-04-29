FROM scratch
ADD x86_64/07d00b8b2cff009d0c5bc5b45dac5df37d402396bd5b7382a22dd202fa53aef1.tar.xz /
ADD x86_64/660c91537623621e0522a797929f0f03bfc32a760af53997ebdc649f015f4ba5.tar.xz /
ADD x86_64/95bfd07f1963a1cf698f6c1c07ea4bd1da0b6b59e7542c04f728e2910815f974.tar.xz /
ADD x86_64/a12af3b459336a87c05121548edd97e6e22186796c008397ca5bff93bdfb131a.tar.xz /
ADD x86_64/db7341a2a42a1327634913e7c1d7a0e452ac056325e502db784ecf2219324f1c.tar.xz /
ADD x86_64/dffb1290d3757b6fe2b6db1d41dbb5a4167047c0ab53ac0a04553ae53909a635.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]