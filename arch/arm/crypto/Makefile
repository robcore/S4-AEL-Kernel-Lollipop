#
# Arch-specific CryptoAPI modules.
#

#Keep this at the top
obj-$(CONFIG_CRYPTO_FIPS) += first_file_asm.o

obj-$(CONFIG_CRYPTO_AES_ARM) += aes-arm.o
obj-$(CONFIG_CRYPTO_AES_ARM_BS) += aes-arm-bs.o
obj-$(CONFIG_CRYPTO_SHA1_ARM) += sha1-arm.o

aes-arm-y    := aes-armv4.o aes_glue.o
aes-arm-bs-y := aesbs-core.o aesbs-glue.o
sha1-arm-y   := sha1-armv4-large.o sha1_glue.o

quiet_cmd_perl = PERL    $@
      cmd_perl = $(PERL) $(<) > $(@)

$(src)/aesbs-core.S_shipped: $(src)/bsaes-armv7.pl
	$(call cmd,perl)

.PRECIOUS: $(obj)/aesbs-core.S

#Keep this at the bottom
obj-$(CONFIG_CRYPTO_FIPS) += last_file_asm.o
