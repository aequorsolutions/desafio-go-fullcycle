FROM scratch

WORKDIR /goApp

COPY ./builded .

CMD [ "./print" ]