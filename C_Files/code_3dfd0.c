? func_8003D3D0(s32 arg0, void *arg1) {
    if ((*(void *)0xA4600010 & 3) != 0) {
loop_1:
        if ((*(void *)0xA4600010 & 3) != 0) {
            goto loop_1;
        }
    }
    *arg1 = (s32) *((*(void *)0x80000308 | arg0) | 0xA0000000);
    return 0;
}
