
export AWS_DEFAULT_PROFILE = spacebaby

all: publish

serve:
	jekyll serve

generate:
	jekyll build

publish: generate
	aws s3 sync _site/ s3://atmospheric.cloud/ --acl public-read
	aws s3 sync _site/ s3://atmospheric.systems/ --acl public-read
