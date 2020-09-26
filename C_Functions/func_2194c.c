u8 func_2194c(s32 arg0, s32 arg1, ? arg2, ? arg3) {
    ? sp48;
    s32 temp_s3;
    u8 temp_ret;
    u8 temp_s2;
    u8 temp_v0;
    u8 temp_v0_2;
    ? *phi_s1;
    s32 phi_s0;
    u8 phi_s2;
    u8 phi_return;

    temp_s3 = arg0 & 0xFFFF;
    temp_ret = func_00024330(arg3, &sp48, temp_s3 & 0xFFFF);
    temp_v0 = temp_ret;
    phi_return = temp_ret;
    if (temp_v0 != 0) {
        phi_s1 = &sp48;
        phi_s0 = arg1;
        phi_s2 = temp_v0;
loop_2:
        temp_v0_2 = *phi_s1;
        if (0x20 != temp_v0_2) {
            phi_return = func_00020F8C(phi_s0, arg2, 8, 0xA, (temp_v0_2 * 8) + 0x20, 0x1D, 0x400, 0x400);
block_5:
            phi_s0 = phi_s0 + 7;
        } else {
            phi_return = temp_v0_2;
            phi_return = temp_v0_2;
            if ((temp_s3 & 6) != 0) {
                goto block_5;
            }
        }
        temp_s2 = phi_s2 - 1;
        phi_s1 = phi_s1 + 1;
        phi_s2 = temp_s2;
        if (temp_s2 != 0) {
            goto loop_2;
        }
    }
    return phi_return;
}
