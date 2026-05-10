FROM textlive/texlive:latest
RUN tlmgr install latexindent
RUN tlmgr install amsmath
RUN tlmgr install amssymb
WORKDIR /doc
ENTRYPOINT ["latexmk"]