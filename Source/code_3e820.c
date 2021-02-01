Failed to decompile function __osDevMgrMain:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void __osViInit(void) {
    void *temp_t5;

    bzero(0x80070A20, 0x60);
    *(void *)0x80070A80 = (void *)0x80070A20;
    *(void *)0x80070A84 = (void *)0x80070A50;
    (void *)0x80070A20->unk32 = (u16)1;
    (*(void *)0x80070A80)->unk2 = (u16)1;
    (*(void *)0x80070A84)->unk4 = 0x80000000;
    (*(void *)0x80070A80)->unk4 = 0x80000000;
    if (*(void *)0x80000300 == 0) {
        (*(void *)0x80070A84)->unk8 = 0x80070DD0;
    } else {
        if (*(void *)0x80000300 == 2) {
            (*(void *)0x80070A84)->unk8 = 0x80070E20;
        } else {
            (*(void *)0x80070A84)->unk8 = 0x80070E70;
        }
    }
    (*(void *)0x80070A84)->unk0 = (u16)0x20;
    temp_t5 = *(void *)0x80070A84;
    temp_t5->unkC = (s32) temp_t5->unk8->unk4;
    if ((u32) *(void *)0xA4400010 >= 0xBU) {
loop_6:
        if ((u32) *(void *)0xA4400010 >= 0xBU) {
            goto loop_6;
        }
    }
    *(void *)0xA4400000 = 0;
    __osViSwapContext();
}
