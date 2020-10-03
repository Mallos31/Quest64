void func_2710c(void) {
    s32 temp_a0;

    temp_a0 = *(void *)0x800539A4;
    if (temp_a0 != 0xFF) {
        func_0002568C(temp_a0);
    }
    *(void *)0x800539B8 = 0;
    *(void *)0x800539A4 = 0xFF;
}

