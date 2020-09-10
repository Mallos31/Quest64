void func_1680(void *arg0) {
    ?32 sp44;
    void *sp40;

    sp44 = 0;
loop_1:
    func_00034020(arg0 + 0x3C, &sp40, 1);
    func_00000BB4(arg0, sp40);
    if (arg0->unk670 != 0) {
        arg0->unk674 = sp40;
        func_00034020(arg0 + 0x11C, &sp44, 1);
        arg0->unk674 = NULL;
    }
    arg0->unk66C = sp40;
    func_0003452C(sp40 + 0x10);
    func_00034694(sp40 + 0x10);
    func_00034020(arg0 + 0xAC, &sp44, 1);
    arg0->unk66C = NULL;
    func_00034020(arg0 + 0xE4, &sp44, 1);
    if (arg0->unk678 != 0) {
        func_000346E0(0);
        arg0->unk678 = 0;
    }
    if ((sp40->unk8 & 0x40) != 0) {
        func_00034750(sp40->unkC);
    }
    func_00034200(sp40->unk50, sp40->unk54, 1);
    goto loop_1;
}
