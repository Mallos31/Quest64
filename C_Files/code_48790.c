? func_80047B90(void *arg0, s32 arg1, ?32 arg2) {
    if ((*(void *)0xA4600010 & 3) != 0) {
loop_1:
        if ((*(void *)0xA4600010 & 3) != 0) {
            goto loop_1;
        }
    }
    *((arg0->unkC | arg1) | 0xA0000000) = arg2;
    return 0;
}

? func_80047BE0(void *arg0, s32 arg1, void *arg2) {
    if ((*(void *)0xA4600010 & 3) != 0) {
loop_1:
        if ((*(void *)0xA4600010 & 3) != 0) {
            goto loop_1;
        }
    }
    *arg2 = (s32) *((arg0->unkC | arg1) | 0xA0000000);
    return 0;
}

void __osSetGlobalIntMask(s32 arg0) {
    s32 temp_s0;

    temp_s0 = __osDisableInt();
    *(void *)0x8006F410 = (s32) (*(void *)0x8006F410 | arg0);
    __osRestoreInt(temp_s0);
}
