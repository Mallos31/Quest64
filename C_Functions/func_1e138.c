s32 func_1e138(f32 arg0, f32 arg1) {
    ? sp30;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a1;
    void *phi_v1;
    s32 phi_a0;
    s32 phi_a0_2;
    s32 phi_v0;
    s32 phi_a0_3;
    f32 phi_f12;
    f32 phi_f14;
    s32 phi_v1_2;

    temp_a1 = *(void *)0x8008C564;
    phi_v1_2 = 0;
    if (temp_a1 != 0) {
        temp_v0 = temp_a1->unkC;
        phi_a0_3 = 0;
        phi_f12 = arg0;
        phi_f14 = arg1;
        if (temp_v0 != 0) {
            temp_f14 = *(void *)0x8007169C;
            phi_v1 = temp_a1->unk8;
            phi_a0 = 0;
            phi_v0 = temp_v0;
loop_3:
            temp_v0_2 = phi_v0 - 1;
            temp_f0 = (f32) phi_v1->unk0 - arg0;
            temp_f2 = (f32) phi_v1->unk2 - arg1;
            temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
            phi_a0_2 = phi_a0;
            if (temp_f14 <= temp_f12) {
                phi_a0_2 = phi_a0;
                if (temp_f12 <= *(void *)0x80071698) {
                    *(&sp30 + (phi_a0 * 4)) = phi_v1;
                    phi_a0_2 = phi_a0 + 1;
                }
            }
            phi_a0_3 = phi_a0_2;
            phi_f12 = temp_f12;
            phi_f14 = temp_f14;
            if (phi_a0_2 < 6) {
                phi_v1 = phi_v1 + 4;
                phi_a0 = phi_a0_2;
                phi_v0 = temp_v0_2;
                phi_a0_3 = phi_a0_2;
                phi_f12 = temp_f12;
                phi_f14 = temp_f14;
                if (temp_v0_2 != 0) {
                    goto loop_3;
                }
            }
        }
        if (phi_a0_3 == 0) {
            phi_v1_2 = 0;
        } else {
            phi_v1_2 = *(&sp30 + (func_00022FD0(phi_f12, phi_f14, phi_a0_3, &sp30) * 4));
        }
    }
    return phi_v1_2;
}
