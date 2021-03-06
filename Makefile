docs:
	pdoc3 --html --force --output-dir docs pandas_profiling
	mv docs/pandas_profiling/* docs
	rmdir docs/pandas_profiling

test:
	pytest --nbval --cov=./ --black --sanitize-with tests/sanitize-notebook.cfg tests/

install:
	pip install -e .

lint:
	black .