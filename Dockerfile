FROM ubuntu:latest

FROM texlive/texlive:latest

RUN tlmgr init-usertree

RUN tlmgr update --self --all

COPY . .

RUN pdflatex ./main.tex
