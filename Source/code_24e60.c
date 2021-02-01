void func_80024260(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_s1;
    s32 phi_s1;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s0;

    func_800363E0(arg1, arg2);
    func_80036460(arg1, arg2);
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
        func_80036510(0x8008D070, 0, 0, phi_s3, phi_s2, phi_s0, 0x8007B320);
        func_80034020(0x8007B320, 0, 1);
        temp_s1 = phi_s1 - phi_s0;
        phi_s1 = temp_s1;
        phi_s3 = phi_s3 + phi_s0;
        phi_s2 = phi_s2 + phi_s0;
        if (temp_s1 != 0) {
            goto loop_2;
        }
    }
}

s32 func_80024330(s32 arg0, void *arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_hi_3;
    s32 temp_hi_4;
    s32 temp_hi_5;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_t1;
    s32 temp_t6;
    void *temp_a1;
    void *temp_a1_2;
    s32 phi_v1;
    s32 phi_a0;
    s32 phi_a3;
    s32 phi_v1_2;
    void *phi_a1;
    s32 phi_a2;
    s32 phi_a3_2;
    s32 phi_v1_3;
    void *phi_a1_2;
    s32 phi_a2_2;
    s8 phi_a3_3;
    void *phi_a1_3;
    void *phi_a1_4;
    s32 phi_a2_3;
    s32 phi_v0;
    s32 phi_v1_4;
    s32 phi_a0_2;
    s32 phi_v1_5;

    temp_t6 = arg2 & 0xFFFF;
    if ((temp_t6 & 2) != 0) {
        phi_a0 = 4;
        phi_v1_4 = 0x2710;
    } else {
        if ((temp_t6 & 4) != 0) {
            phi_a0 = 1;
            phi_v1_4 = 0xA;
        } else {
            phi_a0 = 0;
            phi_v1_5 = 0xA;
            if (arg0 >= 0xA) {
                phi_v1 = 0xA;
                phi_a0_2 = 0;
loop_6:
                temp_lo = phi_v1 * 0xA;
                temp_a0 = phi_a0_2 + 1;
                phi_v1 = temp_lo;
                phi_a0 = temp_a0;
                phi_a0_2 = temp_a0;
                phi_v1_5 = temp_lo;
                if (arg0 >= temp_lo) {
                    goto loop_6;
                }
            }
            phi_v1_4 = phi_v1_5 / 0xA;
        }
    }
    temp_a2 = phi_a0;
    phi_a3_3 = (s8) arg0;
    phi_a1_3 = arg1;
    if (phi_a0 != 0) {
        temp_t1 = -(s32) (phi_a0 & 3);
        phi_a3_2 = arg0;
        phi_v1_3 = phi_v1_4;
        phi_a1_2 = arg1;
        phi_a2_2 = temp_a2;
        if (temp_t1 != 0) {
            phi_a3 = arg0;
            phi_v1_2 = phi_v1_4;
            phi_a1 = arg1;
            phi_a2 = temp_a2;
loop_11:
            temp_hi = phi_a3 % phi_v1_2;
            temp_a2_2 = phi_a2 - 1;
            *phi_a1 = (s8) (phi_a3 / phi_v1_2);
            temp_lo_2 = phi_v1_2 / 0xA;
            temp_a1 = phi_a1 + 1;
            phi_a3 = temp_hi;
            phi_v1_2 = temp_lo_2;
            phi_a1 = temp_a1;
            phi_a2 = temp_a2_2;
            if ((temp_t1 + phi_a0) != temp_a2_2) {
                goto loop_11;
            }
            phi_a3_2 = temp_hi;
            phi_v1_3 = temp_lo_2;
            phi_a1_2 = temp_a1;
            phi_a2_2 = temp_a2_2;
            phi_a3_3 = (s8) temp_hi;
            phi_a1_3 = temp_a1;
            if (temp_a2_2 != 0) {
loop_13:
                temp_hi_2 = phi_a3_2 % phi_v1_3;
                temp_a2_3 = phi_a2_2 - 4;
                *phi_a1_2 = (s8) (phi_a3_2 / phi_v1_3);
                temp_lo_3 = phi_v1_3 / 0xA;
                temp_a1_2 = phi_a1_2 + 4;
                temp_hi_3 = temp_hi_2 % temp_lo_3;
                temp_a1_2->unk-3 = (s8) (temp_hi_2 / temp_lo_3);
                temp_lo_4 = temp_lo_3 / 0xA;
                temp_hi_4 = temp_hi_3 % temp_lo_4;
                temp_a1_2->unk-2 = (s8) (temp_hi_3 / temp_lo_4);
                temp_lo_5 = temp_lo_4 / 0xA;
                temp_hi_5 = temp_hi_4 % temp_lo_5;
                temp_a1_2->unk-1 = (s8) (temp_hi_4 / temp_lo_5);
                phi_a3_2 = temp_hi_5;
                phi_v1_3 = temp_lo_5 / 0xA;
                phi_a1_2 = temp_a1_2;
                phi_a2_2 = temp_a2_3;
                phi_a3_3 = (s8) temp_hi_5;
                phi_a1_3 = temp_a1_2;
                if (temp_a2_3 != 0) {
                    goto loop_13;
                }
            }
        } else {
            goto loop_13;
        }
    }
    phi_a1_3->unk0 = phi_a3_3;
    phi_a1_3->unk1 = (u8)0xFF;
    if ((temp_t6 & 1) != 0) {
        if (phi_a0 != 0) {
            phi_a1_4 = arg1;
            phi_a2_3 = phi_a0;
            phi_v0 = 1;
loop_17:
            temp_a2_4 = phi_a2_3 - 1;
            if (*phi_a1_4 == 0) {
                *phi_a1_4 = (u8)0x20U;
            } else {
                phi_v0 = 0;
            }
            if (temp_a2_4 != 0) {
                phi_a1_4 = phi_a1_4 + 1;
                phi_a2_3 = temp_a2_4;
                if (phi_v0 != 0) {
                    goto loop_17;
                }
            }
        }
    }
    return phi_a0 + 1;
}
