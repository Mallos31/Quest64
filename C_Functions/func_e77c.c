f32 func_e77c(s32 arg0, s32 arg1, s32 arg2, ?32 arg3) {
    s32 temp_t8;
    s32 temp_v0;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    void *phi_v0_2;
    f32 phi_return;

    phi_v0 = 3;
    phi_v1 = (void *)0x80084E60;
    phi_v1_2 = (void *)0x80084E60;
    if (*(void *)0x80084E60 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 0x1C;
        phi_v1_2 = temp_v1;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v1_2->unk4 = arg0;
    phi_v1_2->unk8 = arg1;
    phi_v1_2->unkC = arg2;
    phi_v1_2->unk10 = arg3;
    phi_v1_2->unk18 = 0.0f;
    phi_v1_2->unk14 = 0.0f;
    if (arg0 != 0) {
        temp_t8 = (arg2 >> 8) & 0xF;
        if ((temp_t8 != 2) && (temp_t8 != 3)) {
            if (temp_t8 != 4) {
                phi_v0_2 = sp4;
                phi_return = (bitwise f32) sp4;
            } else {
                phi_v0_2 = (void *)0x80056368;
                phi_return = (bitwise f32) (void *)0x80056368;
            }
        } else {
            if ((phi_v1_2->unkC & 1) != 0) {
                phi_v0_2 = (void *)0x800562E0;
                phi_return = (bitwise f32) (void *)0x800562E0;
            } else {
                phi_v0_2 = (void *)0x80055D58;
                phi_return = (bitwise f32) (void *)0x80055D58;
            }
        }
        phi_v1_2->unk0 = (s32) ((phi_v0_2->unk6 - arg1) + 1);
        return phi_return;
    }
    phi_v1_2->unk0 = 7;
    return 0.0f;
}
