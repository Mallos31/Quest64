Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

void *func_fa60(f32 arg0, f32 arg1, f32 arg2, s32 arg3, void *arg4) {
    s32 temp_f18;
    s32 temp_f4;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_s0;
    u16 temp_s0_2;
    u16 temp_s0_3;
    u16 temp_s0_4;
    void *temp_ret;
    void *temp_ret_2;
    void *temp_v0_3;
    s32 phi_v1;
    s32 phi_a1;
    void *phi_s1;
    f32 phi_f20;
    f32 phi_f22;
    void *phi_s1_2;
    u16 phi_s0;
    void *phi_s1_3;
    u16 phi_s0_2;
    void *phi_return;

    temp_s3 = arg3 & 0xFFFF;
    *(void *)0x80085340 = (f32) arg4->unk0;
    arg4->unk0 = arg0;
    arg4->unk4 = arg1;
    arg4->unk8 = arg2;
    arg4->unk18 = (u16)0x8000;
    arg4->unkC = 0.0f;
    arg4->unk14 = 0.0f;
    arg4->unk10 = 1.0f;
    if ((temp_s3 & 1) != 0) {
        temp_v0 = *(void *)0x80084F2C;
        phi_f20 = arg0;
        phi_f22 = arg2;
        if (temp_v0 != 0) {
            phi_f20 = arg0;
            phi_f22 = arg2;
            if (func_0000FCBC(arg0, arg2, (*(void *)0x80084EE8 * 0x10) + temp_v0, arg4) != 0) {
block_8:
                phi_f22 = arg4->unk8;
            }
        }
    } else {
        phi_f20 = arg0;
        phi_f22 = arg2;
        if ((temp_s3 & 2) != 0) {
            temp_v0_2 = *(void *)0x80084F30;
            phi_f20 = arg0;
            phi_f22 = arg2;
            if (temp_v0_2 != 0) {
                phi_f20 = arg0;
                phi_f22 = arg2;
                if (func_0000FCBC(arg0, arg2, (*(void *)0x80084EE8 * 0x10) + temp_v0_2, arg4) != 0) {
                    goto block_8;
                }
            }
        }
    }
    temp_v0_3 = *(void *)0x80084F20;
    if (temp_v0_3->unk28 == 0) {
        phi_v1 = 0;
        phi_a1 = 0;
        phi_s1 = temp_v0_3->unk20;
    } else {
        temp_f4 = (s32) ((phi_f20 - temp_v0_3->unk8) / temp_v0_3->unk10);
        temp_f18 = (s32) ((phi_f22 - temp_v0_3->unkC) / temp_v0_3->unk14);
        phi_v1 = temp_f4;
        phi_a1 = temp_f18;
        phi_s1 = (*(temp_v0_3->unk1C + (((temp_v0_3->unk4 * temp_f18) + temp_f4) * 2)) * 2) + temp_v0_3->unk20;
    }
    if (((((phi_v1 >= 0) && (phi_v1 < (s32) temp_v0_3->unk4)) && (phi_a1 >= 0)) && (phi_a1 < (s32) temp_v0_3->unk6)) && (temp_s0 = *phi_s1, phi_s1_2 = phi_s1 + 2, phi_s0 = temp_s0, (temp_s0 != 0))) {
loop_17:
        temp_ret = func_0000F0BC(phi_f20, phi_f22, temp_s3 & 0xFFFF, *phi_s1_2, arg4);
        temp_s0_2 = phi_s0 - 1;
        phi_return = temp_ret;
        if (temp_ret == 0) {
            phi_s1_2 = phi_s1_2 + 2;
            phi_s0 = temp_s0_2;
            if (temp_s0_2 != 0) {
                goto loop_17;
            }
block_20:
            temp_s0_3 = (*(void *)0x80084F20)->unk2;
            phi_s1_3 = (*(void *)0x80084F20)->unk24;
            phi_s0_2 = temp_s0_3;
            if (temp_s0_3 != 0) {
loop_21:
                temp_ret_2 = func_0000F0BC(phi_f20, phi_f22, temp_s3 & 0xFFFF, *phi_s1_3, arg4);
                temp_s0_4 = phi_s0_2 - 1;
                phi_return = temp_ret_2;
                if (temp_ret_2 == 0) {
                    phi_s1_3 = phi_s1_3 + 2;
                    phi_s0_2 = temp_s0_4;
                    phi_return = temp_ret_2;
                    if (temp_s0_4 != 0) {
                        goto loop_21;
                    }
                }
            }
        }
    } else {
        goto block_20;
    }
    return phi_return;
}
