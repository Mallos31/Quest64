void func_11110(s32 arg0) {
    s32 temp_v1;
    u16 temp_a0;

    *(void *)0x800859D0 = arg0;
    temp_v1 = *(void *)0x800859D4;
    if (arg0 >= temp_v1) {
        temp_a0 = *(void *)0x800859E0;
        *(void *)0x800859D0 = (s32) (arg0 - temp_v1);
        if ((s32) temp_a0 < 0x270F) {
            *(void *)0x800859E0 = (u16) (temp_a0 + 1);
        }
    }
    *(void *)0x800859D8 = (s32) *(void *)0x800859D0;
}
