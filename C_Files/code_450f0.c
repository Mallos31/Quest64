f32 func_800444F0(s32 arg0) {
    s32 temp_t7;
    s32 phi_a0;
    s32 phi_a0_2;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f2_3;
    f32 phi_f0;

    if (arg0 >= 0) {
        phi_a0 = arg0;
        phi_f0 = *(void *)0x80072320;
    } else {
        phi_a0 = -arg0;
        phi_f0 = *(void *)0x80072324;
    }
    phi_a0_2 = phi_a0;
    phi_f2 = 1.0f;
    phi_f2_3 = 1.0f;
    if (phi_a0 != 0) {
loop_4:
        temp_t7 = phi_a0_2 >> 1;
        phi_f2_2 = phi_f2_3;
        if ((phi_a0_2 & 1) != 0) {
            phi_f2_2 = phi_f2_3 * phi_f0;
        }
        phi_a0_2 = temp_t7;
        phi_f2 = phi_f2_2;
        phi_f2_3 = phi_f2_2;
        phi_f0 = phi_f0 * phi_f0;
        if (temp_t7 != 0) {
            goto loop_4;
        }
    }
    return phi_f2;
}

void func_80044540(void *arg0, void *arg1, s32 arg2, f32 arg3, s16 arg4, u8 arg5, u8 arg6, s32 arg7) {
    void *sp1C;
    void *temp_a0;
    void *temp_a3;
    void *temp_v0;
    u8 phi_v1;

    if (arg1->unk8 != 0) {
        temp_v0 = func_80036A30();
        temp_a3 = arg1;
        if (temp_v0 != 0) {
            phi_v1 = arg6;
            if ((s32) arg6 < 0) {
                phi_v1 = -(s32) arg6 & 0xFF;
            }
            temp_v0->unk0 = 0;
            temp_v0->unk8 = (u16)0xD;
            temp_v0->unk4 = (s32) (arg0->unk1C + temp_a3->unk8->unkD8);
            temp_v0->unkA = (s16) temp_a3->unk1A;
            temp_v0->unk12 = arg5;
            temp_v0->unk13 = phi_v1;
            temp_v0->unk10 = arg4;
            temp_v0->unkC = arg3;
            arg1 = temp_a3;
            sp1C = temp_v0;
            temp_v0->unk14 = func_80036928(arg0, arg7, temp_v0, temp_a3);
            temp_v0->unk18 = arg2;
            temp_a0 = arg1->unk8->unkC;
            temp_a0->unk8(temp_a0, 3, temp_v0, arg1);
        }
    }
}
