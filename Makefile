
ACT = act -f .github/test.workflow


test-release:
	GITHUB_TOKEN=foo $(ACT) -e testdata/events/release.json release
