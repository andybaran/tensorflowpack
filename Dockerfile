FROM python:onbuild

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN pip --no-cache-dir install \
        #Pillow \
        #h5py \
        #ipykernel \
        #jupyter \
        #matplotlib \
        #numpy \
        #pandas \
        scipy \
        sklearn \
        tensorflow \


ENV PORT 8080
ENV PORT 6006
EXPOSE 6006
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app.py"]
