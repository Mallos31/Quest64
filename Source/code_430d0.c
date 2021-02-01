? func_800424D0(void *arg0, s32 arg1, ?32 arg2) {
    if (arg1 == 2) {
        *(arg0->unk1C + (arg0->unk14 * 4)) = arg2;
        arg0->unk14 = (s32) (arg0->unk14 + 1);
    }
    return 0;
}

void *func_80042500(void *arg0, ? arg1, s32 arg2, ? arg3, void *arg4) {
    s32 temp_s0;
    s32 temp_v0;
    void *temp_a0;
    void *temp_s2;
    void *temp_v0_2;
    void *phi_s1;
    void *phi_s2;
    s32 phi_s0;
    void *phi_s2_2;

    temp_v0 = arg2 * 2;
    arg4->unk0 = 0x20006C0;
    arg4->unk4 = temp_v0;
    arg4->unk8 = 0x2000800;
    arg4->unkC = temp_v0;
    temp_s2 = arg4 + 0x10;
    phi_s2_2 = temp_s2;
    if (arg0->unk14 > 0) {
        phi_s1 = arg0->unk1C;
        phi_s2 = temp_s2;
        phi_s0 = 0;
loop_2:
        temp_a0 = *phi_s1;
        temp_v0_2 = temp_a0->unk4(temp_a0, arg1, arg2, arg3, phi_s2);
        temp_s0 = phi_s0 + 1;
        phi_s1 = phi_s1 + 4;
        phi_s2 = temp_v0_2;
        phi_s0 = temp_s0;
        phi_s2_2 = temp_v0_2;
        if (temp_s0 < arg0->unk14) {
            goto loop_2;
        }
    }
    return phi_s2_2;
}
