# Generic actions (default is demo)
# all action
.PHONY: all
all: loadgen-demo
# project action
.PHONY: project
devel: project-demo
# devel action
.PHONY: devel
devel: devel-demo
# integration action
.PHONY: integration
integration: integration-demo
# preprod action
.PHONY: preprod
preprod: preprod-demo
# prod action
.PHONY: prod
prod: prod-demo
# loadgen action
.PHONY: loadgen
loadgen: loadgen-big
# loaddel action
.PHONY: loaddel
loaddel: loaddel-big

# project-demo action
# SHELL:=/bin/bash
project-demo: 
	@bash -c "source .lib/core && applyProject fruitapp christophe"
# devel-demo action
# SHELL:=/bin/bash
devel-demo: 
	@bash -c "source .lib/core && applyDevel fruitapp christophe"
# integration-demo action
# SHELL:=/bin/bash
integration-demo: 
	@bash -c "source .lib/core && applyIntegration fruitapp v3.2.10"
# preprod-demo action
# SHELL:=/bin/bash
preprod-demo: 
	@bash -c "source .lib/core && applyDeploy fruitapp v3.2.10 preprod 2"
# prod-demo action
# SHELL:=/bin/bash
prod-demo: 
	@bash -c "source .lib/core && applyDeploy fruitapp v3.2.10 prod 3"
# loadgen-demo action
# SHELL:=/bin/bash
loadgen-demo: 
	@bash -c "source .lib/core && loadgen 1 v3.2.10 2"
# loadgen-big action
# SHELL:=/bin/bash
loadgen-big: 
	@bash -c "source .lib/core && loadgen 10 v3.2.10 3"
# loaddel-demo action
# SHELL:=/bin/bash
loaddel-demo: 
	@bash -c "source .lib/core && loaddel 1 v3.2.10 2"
# loaddel-big action
# SHELL:=/bin/bash
loaddel-big: 
	@bash -c "source .lib/core && loaddel 10 v3.2.10 3"
