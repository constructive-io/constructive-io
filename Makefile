# Variables for author and committer details
AUTHOR_NAME = Constructive
AUTHOR_EMAIL = developers@constructive.io
COMMITTER_NAME = Constructive
COMMITTER_EMAIL = developers@constructive.io
COMMIT_MESSAGE = update

# commit-all: Automatically commits all changes with a predefined message
commit-all:
	@GIT_COMMITTER_NAME="$(COMMITTER_NAME)" GIT_COMMITTER_EMAIL="$(COMMITTER_EMAIL)" \
	git add . && \
	git commit -m "$(COMMIT_MESSAGE)" --author="$(AUTHOR_NAME) <$(AUTHOR_EMAIL)>"

# commit: Opens an editor for the commit message
commit:
	@GIT_COMMITTER_NAME="$(COMMITTER_NAME)" GIT_COMMITTER_EMAIL="$(COMMITTER_EMAIL)" \
	git add . && \
	git commit --author="$(AUTHOR_NAME) <$(AUTHOR_EMAIL)>"
