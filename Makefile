##
# cancer-molecular-profile
#
# @file
# @version 0.1

.PHONY:

CASES := db/biliary_tract.yml db/bladder_urinary_tract.yml db/bowel.yml db/brain.yml db/breast.yml db/kidney.yml db/lung.yml db/other.yml db/ovary_uterus.yml db/pancreas.yml db/prostate.yml db/salivary_gland.yml db/skin.yml db/soft_tissue.yml db/stomach_esophagus.yml db/thymus.yml db/thyroid.yml
BUILDER := ./.compiler/tableize ./.compiler/readme_template.md

all: README.md

README.md: $(CASES) $(BUILDER)
	$(BUILDER)

# end
