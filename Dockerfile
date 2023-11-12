FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y \
    && apt-get install texlive-latex-base texlive-xetex texlive-latex-extra texlive-fonts-recommended xzdec -y

WORKDIR /data

ENTRYPOINT [ "/bin/sh", "-c", "xelatex -output-directory=out resume.tex"]