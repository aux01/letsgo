# Build tags file from all sources and show tag stats
tags:
	ctags --recurse --totals

# Mark the target phony if you want to rebuild every time you run `make tags'.
# An alternative is to add prerequisites for all files you want to trigger a
# tags file rebuild and remove the .PHONY designator.
.PHONY: tags

# You probably don't want to remove the tags file as part of the normal clean
# target. Doing so will cause the file to go missing any time you clean build
# artifacts, which shouldn't cause your editor's navigation features to stop
# working. I use a separately `distclean' or `reallyclean` target instead.
distclean:
	rm -f tags
