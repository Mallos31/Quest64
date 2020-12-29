.section .header, "a"

.word 0x80371240 /* PI PSD Domain 1 register */
.word 0x0000000F /* Clockrate setting */
.word 0x80000400 /* Entrypoint address */
.word 0x00001448 /* Revision */
.word 0xC8BB4DD9 /* Checksum 1 */
.word 0xCC5F430B /* Checksum 2 */
.word 0x00000000 /* Unknown 1 */
.word 0x00000000 /* Unknown 2 */
.ascii "Quest 64            " /* Internal ROM name */
.word 0x00000000 /* Unknown 3 */
.word 0x0000004E /* Cartridge */
.ascii "ET" /* Cartridge ID */
.ascii "E" /* Country code */
.byte 00 /* Version */