void func_17b4(s32 arg0, void *arg1) {
    ?32 sp44;
    ? sp3C;
    s32 temp_s2;
    s32 temp_s4;

    sp44 = 0;
    temp_s4 = arg1->unkC;
    temp_s2 = arg0 + 0x11C;
    if (func_000347A0() == temp_s4) {
loop_2:
        func_000007D4(arg0, &sp3C, temp_s2);
        func_00034020(temp_s2, &sp44, 1);
        func_00000824(arg0, &sp3C);
        if (func_000347A0() == temp_s4) {
            goto loop_2;
        }
    }
}
