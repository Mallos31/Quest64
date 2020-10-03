void func_24e60(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_s1;
    s32 phi_s1;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;

    func_000363E0(arg1, arg2);
    func_00036460(arg1, arg2);
    if (arg2 != 0) {
        phi_s1 = arg2;
        phi_s3 = arg0;
        phi_s2 = arg1;
loop_2:
        if (phi_s1 >= 0x4001) {
            phi_s0 = 0x4000;
        } else {
            phi_s0 = phi_s1;
        }
        func_00036510(0x8008D070, 0, 0, phi_s3, phi_s2, phi_s0, 0x8007B320);
        func_00034020(0x8007B320, 0, 1);
        temp_s1 = phi_s1 - phi_s0;
        phi_s1 = temp_s1;
        phi_s3 = phi_s3 + phi_s0;
        phi_s2 = phi_s2 + phi_s0;
        if (temp_s1 != 0) {
            goto loop_2;
        }
    }
}

