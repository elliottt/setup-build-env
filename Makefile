
# Config #######################################################################

GHC_BASE_URL ?= http://downloads.haskell.org/~ghc


# Default ######################################################################

all: ghc-7.10.2

# Haskell Files ################################################################

.PRECIOUS: roles/haskell-dev/files/ghc-%-x86_64-unknown-linux-deb7.tar.xz

ghc-%: roles/haskell-dev/files/ghc-%-x86_64-unknown-linux-deb7.tar.xz ;

roles/haskell-dev/files/ghc-%-x86_64-unknown-linux-deb7.tar.xz:
	(cd $(dir $@) && curl -O $(GHC_BASE_URL)/$*/$(notdir $@))
