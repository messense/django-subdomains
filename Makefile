install:
	python setup.py install

lint:
	pip install flake8
	flake8 ./subdomains

clean:
	find . -name *.pyc -delete

test: clean
	python setup.py test

test-matrix: clean
	pip install tox
	tox

publish: lint test-matrix
	git tag $$(python setup.py --version)
	git push --tags
	python setup.py sdist upload

.PHONY: clean install publish lint test test-matrix
