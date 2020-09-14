void func_e84c(void) {
    s32 sp44;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_v0;
    s32 temp_v1;
    void *phi_s0;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s2_2;
    s32 phi_s2_3;

    phi_s0 = (void *)0x80084E60;
    phi_s1 = 4;
    phi_s2_3 = sp44;
loop_1:
    temp_v1 = phi_s0->unk0;
    phi_s2_2 = phi_s2_3;
    if (temp_v1 != 0) {
        temp_v0 = phi_s0->unk4;
        temp_t6 = temp_v1 - 1;
        if (temp_v0 != 0) {
            if (temp_v0 != 1) {
                phi_s2_2 = phi_s2_3;
            } else {
                temp_a0 = phi_s0->unkC;
                phi_s0->unk0 = (s32) (temp_v1 - 1);
                temp_t2 = (temp_a0 >> 8) & 0xF;
                if ((temp_t2 != 2) && (temp_t2 != 3)) {
                    if (temp_t2 != 4) {
                        phi_s2 = phi_s2_3;
                    } else {
                        phi_s2 = 0x80056368;
                    }
                } else {
                    if ((temp_a0 & 1) != 0) {
                        phi_s2 = 0x800562E0;
                    } else {
                        phi_s2 = 0x80055D58;
                    }
                }
                temp_a2 = phi_s0->unk8;
                phi_s0->unk8 = (s32) (temp_a2 + 1);
                func_00022B40(phi_s2, (void *)0x80082C48, temp_a2);
                phi_s0->unk14 = (f32) (void *)0x80082C48->unk0;
                phi_s0->unk18 = (f32) (void *)0x80082C48->unkC;
                phi_s2_2 = phi_s2;
            }
        } else {
            phi_s0->unk0 = temp_t6;
            phi_s2_2 = phi_s2_3;
            if (temp_t6 == 0) {
                phi_s0->unk0 = 0x50;
                phi_s0->unk4 = (s32) (phi_s0->unk4 + 1);
                phi_s2_2 = phi_s2_3;
            }
        }
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x1C;
    phi_s1 = temp_s1;
    phi_s2_3 = phi_s2_2;
    if (temp_s1 != 0) {
        goto loop_1;
    }
    sp44 = phi_s2_2;
}
