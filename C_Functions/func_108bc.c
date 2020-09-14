s32 func_108bc(f32 arg0, f32 arg1, void *arg2, void *arg3) {
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_fp;
    s32 temp_fp_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_s7;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_fp;
    s32 phi_s2;
    s32 phi_s2_2;
    s32 phi_s2_3;
    s32 phi_s2_4;

    temp_fp = arg2->unkC;
    phi_s2 = 0;
    if (temp_fp != 0) {
        phi_s7 = arg2->unk8;
        phi_fp = temp_fp;
        phi_s2_4 = 0;
loop_2:
        temp_s1 = phi_s7->unk4;
        phi_s0 = arg2->unk4 + (phi_s7->unk0 * 4);
        phi_s1 = temp_s1;
        phi_s2_2 = phi_s2_4;
        phi_s2_3 = phi_s2_4;
        if (temp_s1 != 0) {
loop_3:
            temp_v1 = arg2->unk0;
            temp_v0 = (phi_s0->unk0 * 8) + temp_v1;
            temp_v0_2 = (phi_s0->unk4 * 8) + temp_v1;
            temp_f12 = temp_v0_2->unk0;
            temp_f14 = temp_v0_2->unk4;
            temp_s1_2 = phi_s1 - 1;
            temp_s2 = phi_s2_3 | func_0000F6A4(temp_f12, temp_f14, &arg0, &arg1, *(void *)0x80085340, temp_v0->unk0, temp_v0->unk4, temp_f12, temp_f14);
            phi_s0 = phi_s0 + 4;
            phi_s1 = temp_s1_2;
            phi_s2_2 = temp_s2;
            phi_s2_3 = temp_s2;
            if (temp_s1_2 != 0) {
                goto loop_3;
            }
        }
        temp_fp_2 = phi_fp - 1;
        phi_s7 = phi_s7 + 8;
        phi_fp = temp_fp_2;
        phi_s2 = phi_s2_2;
        phi_s2_4 = phi_s2_2;
        if (temp_fp_2 != 0) {
            goto loop_2;
        }
    }
    arg3->unk0 = arg0;
    arg3->unk8 = arg1;
    return phi_s2;
}
