FROM icepack/firedrake-python3.7:0.3.2

RUN pip3 install jupyter jupyterlab
RUN rm -rf gmsh-4.5.6* firedrake-install* install-options package-branches
RUN for demo_name in 00-sympy 01-poisson; do \
        curl -O https://raw.githubusercontent.com/danshapero/firedrake-binder/master/$demo_name.ipynb; \
    done
