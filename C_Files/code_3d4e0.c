s32 func_8003C8E0(s32 arg0) {
    s32 sp1C;
    s32 temp_v0;

    sp1C = 0;
    func_80044840();
    if (*(void *)0x80095490 != 0) {
        func_8003AAA8(0);
        sp1C = func_80046950(1, 0x80095450);
        func_80034020(arg0, 0, 1);
    }
    temp_v0 = func_80046950(0, 0x80095450);
    sp1C = temp_v0;
    *(void *)0x80095490 = (u8)0U;
    func_80044884();
    return temp_v0;
}

void func_8003C964(s32 arg0) {
    ? sp1F;

    func_8003A9D8(&sp1F, arg0);
}
