s32 func_208f8(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *sp38;
    s32 temp_a3;
    s32 temp_ret;
    s32 temp_t6;
    s32 temp_v0;
    s8 temp_t7;
    u32 temp_v0_2;
    void *temp_a0;
    void *temp_t1;
    void *temp_t2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    u32 phi_v0;
    void *phi_v1_2;
    s32 phi_v0_2;
    f32 phi_f0;

    temp_t6 = arg1 & 0xFFFF;
    temp_t7 = arg2 & 0xFFFF;
    temp_a3 = (s32) (arg3 << 0x10) >> 0x10;
    temp_t2 = arg0->unk68;
    phi_v1 = (void *)0x8004D2CC;
    phi_v0 = 0U;
loop_1:
    if ((*phi_v1 & temp_t6) != 0) {
        temp_v1 = temp_t2 + phi_v0;
        temp_v1->unk12 = temp_t7;
        temp_v1->unk22 = (s8) temp_a3;
    } else {
        temp_v0_2 = phi_v0 + 1;
        phi_v1 = phi_v1 + 2;
        phi_v0 = temp_v0_2;
        if (temp_v0_2 < 7U) {
            goto loop_1;
        }
    }
    phi_v1_2 = (void *)0x8004D2DC;
    phi_v0_2 = 0;
loop_5:
    temp_t1 = temp_t2 + (phi_v0_2 * 4);
    if ((*phi_v1_2 & temp_t6) != 0) {
        if (temp_t1->unk44 == 0) {
            (temp_t2 + phi_v0_2)->unk32 = (s8) temp_a3;
            temp_v1_2 = (temp_t7 * 0x10) + 0x803A8E0C;
            (void *)0x8008C748->unk0 = (f32) temp_v1_2->unk8;
            (void *)0x8008C748->unk4 = (f32) temp_v1_2->unkC;
            (void *)0x8008C748->unk8 = 1.0f;
            temp_a0 = arg0->unk64;
            if (temp_a0->unk0 == 1) {
                if ((temp_v1_2->unk4 & 0x100) != 0) {
                    phi_f0 = arg0->unk68->unk94;
                } else {
                    phi_f0 = arg0->unk68->unk94 - (temp_a0->unk18 * arg0->unk24);
                }
            } else {
                if ((temp_v1_2->unk4 & 0x100) != 0) {
                    phi_f0 = (f32) ((f64) arg0->unk4 + (((f64) temp_a0->unk1C * 0.5) * (f64) arg0->unk24));
                } else {
                    phi_f0 = arg0->unk4;
                }
            }
            sp38 = temp_t1;
            temp_ret = func_000177F8(temp_v1_2->unk2, temp_v1_2->unk4, arg0->unk0, phi_f0, arg0->unk8, 0.0f, (temp_v1_2->unk0 * 0xA) + 0x803A8DD8, (void *)0x8008C748, arg0);
            temp_t1->unk44 = temp_ret;
            return temp_ret;
        }
    }
    temp_v0 = phi_v0_2 + 1;
    phi_v1_2 = phi_v1_2 + 2;
    phi_v0_2 = temp_v0;
    if (temp_v0 != 4) {
        goto loop_5;
    }
    return temp_v0;
}
