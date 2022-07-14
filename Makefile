report:
	@docker run -it --rm -v ${PWD}:/usr/src/myapp -v ${HOME}/.rport:/root ipython