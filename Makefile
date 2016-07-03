SUBDIRS = doc src
.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@
#	for dir in $(SUBDIRS); do \
#		$(MAKE) -C $$dir; \
#	done

all: subdirs
