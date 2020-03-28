#!/bin/bash

docs="docs"

wget https://www.st.com/resource/en/datasheet/stm32l011k4.pdf -O $docs/datasheet.pdf
wget https://www.st.com/resource/en/errata_sheet/dm00237371-stm32l011x34-device-limitations-stmicroelectronics.pdf -O $docs/errata.pdf
wget https://www.st.com/resource/en/programming_manual/dm00104451-cortexm0-programming-manual-for-stm32l0-stm32g0-stm32wl-and-stm32wb-series-stmicroelectronics.pdf -O $docs/progman.pdf
wget https://www.st.com/resource/en/reference_manual/dm00108282-ultralowpower-stm32l0x1-advanced-armbased-32bit-mcus-stmicroelectronics.pdf -O $docs/refman.pdf
wget https://static.$docs.arm.com/ddi0484/c/DDI0484C_cortex_m0p_r0p1_trm.pdf -O $docs/techman.pdf --no-check-certificate
wget https://static.$docs.arm.com/ddi0419/d/DDI0419D_armv6m_arm.pdf -O $docs/armv6-arm.pdf --no-check-certificate
wget https://www.st.com/resource/en/user_manual/dm00231744-stm32-nucleo32-boards-mb1180-stmicroelectronics.pdf -O $docs/userman.pdf

