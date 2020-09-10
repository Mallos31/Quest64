void func_1500(void *arg0) {
    ?32 sp54;
    void *sp50;
    s32 temp_s0_2;
    s32 temp_s3;
    void *temp_s0;
    s32 phi_s1;

    sp54 = 0;
    sp50 = NULL;
loop_1:
    func_00034020(arg0 + 4, &sp50, 1);
    func_00034350();
    temp_s3 = arg0->unk66C;
    if (temp_s3 != 0) {
        func_00034380();
        func_00034020(arg0 + 0xAC, &sp54, 1);
        phi_s1 = 2;
        if (func_000343A0(temp_s3 + 0x10) != 0) {
            phi_s1 = 1;
        }
    }
    temp_s0 = arg0 + 0xAC;
    arg0->unk670 = sp50;
    func_0003452C(sp50 + 0x10);
    func_00034694(sp50 + 0x10);
    func_00034020(temp_s0, &sp54, 1);
    arg0->unk670 = NULL;
    if (arg0->unk674 != 0) {
        func_00034200(arg0 + 0x11C, &sp54, 1);
    }
    if (phi_s1 == 1) {
        temp_s0_2 = temp_s3 + 0x10;
        func_0003452C(temp_s0_2);
        func_00034694(temp_s0_2);
    } else {
        if (phi_s1 == 2) {
            func_00034200(temp_s0, &sp54, 1);
        }
    }
    func_00034200(sp50->unk50, sp50->unk54, 1);
    goto loop_1;
}
