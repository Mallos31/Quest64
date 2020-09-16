s16 func_1e878(s32 arg0, f32 arg1, f32 arg2, f32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, void *arg8, void *arg9, s32 argA) {
    ? spA0;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_s1_2;
    s32 temp_v1;
    s8 temp_s1;
    u16 temp_a2;
    void *temp_a2_3;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    s32 phi_a2;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_v0;
    s16 phi_return;
    s16 phi_return_2;

    temp_s2 = (arg5 << 5) + arg9;
    temp_a2 = temp_s2->unk6;
    if (temp_a2 != 0) {
        phi_a2 = arg6 % (s32) temp_a2;
    } else {
        phi_a2 = 0;
    }
    func_00022B40(temp_s2, &sp7C, phi_a2);
    if (temp_s2->unk14 == 0) {
        if ((arg4 & 1) != 0) {
            sp7C = 0.0f;
            sp84 = 0.0f;
        }
        if ((arg4 & 2) != 0) {
            sp80 = 0.0f;
        }
    }
    func_00023C1C(&spA0, (bitwise s32) sp7C, (bitwise s32) sp80, (bitwise s32) sp84, sp8C, sp88, sp90, sp94, sp98, sp9C);
    func_0001E138(&spA0, temp_s2);
    arg1 = arg1 * sp94;
    arg2 = arg2 * sp98;
    arg3 = arg3 * sp9C;
    if ((temp_s2->unk16 & 1) != 0) {
        func_00023E80(arg0, &spA0, &spA0);
        func_0002371C(0x8008C5E8, spD0, spD4, spD8, (void *)0x80086DC0->unkC, (void *)0x80086DC0->unk10, (void *)0x80086DC0->unk14);
        func_00023DF4(0x8008C5E8, (bitwise s32) arg1, (bitwise s32) arg2, (bitwise s32) arg3);
        func_00035200(0x8008C5E8, (argA + (*(void *)0x8007B2F8 << 6)) + 0xC0);
    } else {
        func_00023E80(arg0, &spA0);
        func_00035200(&spA0, (argA + (*(void *)0x8007B2F8 << 6)) + 0xC0);
    }
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk0 = 0x1020040;
    temp_v0->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0xC0) + 0x2000000);
    *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
    if ((temp_s2->unk16 & 2) != 0) {
        temp_v1 = *(void *)0x8008C5E0;
        temp_v0_2 = (temp_v1 * 0xC) + 0x8008C5B0;
        *(void *)0x8008C5E0 = (s32) (temp_v1 + 1);
        temp_v0_2->unk0 = (bitwise f32) spD0;
        temp_v0_2->unk4 = (bitwise f32) spD4;
        temp_v0_2->unk8 = (bitwise f32) spD8;
    }
    temp_a2_2 = temp_s2->unk18;
    temp_a1 = arg8->unk8;
    if (temp_a2_2 == 0) {
        temp_s1 = temp_s2->unk15;
        if (temp_s1 != -1) {
            temp_a2_3 = temp_a1 + (temp_s1 * 4);
            if (*temp_a2_3 != 0) {
                temp_v0_3 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
                temp_v0_3->unk0 = 0x6000000;
                temp_v0_3->unk4 = (s32) *temp_a2_3;
            }
        }
    } else {
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk0 = 0x6000000;
        temp_v0_4->unk4 = (s32) *(temp_a1 + (*(temp_a2_2 + ((arg7 % (s32) temp_s2->unk1C) * 4)) * 4));
    }
    temp_v0_5 = arg8->unk0;
    phi_s0 = arg9;
    phi_s1 = 0;
    phi_return = temp_v0_5;
    phi_v0 = (s32) temp_v0_5;
    phi_return_2 = temp_v0_5;
    if ((s32) temp_v0_5 > 0) {
loop_19:
        if ((arg5 + 1) == phi_s0->unk14) {
            func_0001DC78(&spA0, subroutine_arg1, (bitwise s32) (&arg1)[1], (bitwise s32) (&arg1)[2], arg4, phi_s1, arg6, arg7, arg8, arg9, argA);
            temp_v0_6 = arg8->unk0;
            phi_v0 = (s32) temp_v0_6;
            phi_return_2 = temp_v0_6;
        }
        temp_s1_2 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x20;
        phi_s1 = temp_s1_2;
        phi_return = phi_return_2;
        if (temp_s1_2 < phi_v0) {
            goto loop_19;
        }
    }
    return phi_return;
}
