void func_1310(s32 arg0) {
    s32 sp3C;

    sp3C = 0;
loop_1:
    func_00034020(arg0 + 0x74, &sp3C, 1);
    *(void *)0x8007B2D0 = (u16) (*(void *)0x8007B2D0 + 1);
    if (sp3C == 0x29A) {
        func_000008B0(arg0, arg0);
        goto loop_1;
    }
    if (sp3C != 0x29D) {
        goto loop_1;
    }
    func_000008B0(arg0, arg0 + 2);
    goto loop_1;
}
