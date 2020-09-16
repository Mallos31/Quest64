u16 func_1e524(void *arg0, void *arg1, f32 arg2) {
    f32 sp2C;
    void *sp28;
    f32 temp_f0;
    f32 temp_f12;
    s16 temp_v1;
    s32 temp_v0;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_v0_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_v0_3;
    void *temp_v0_4;
    s32 phi_v0;
    void *phi_a3;
    void *phi_a3_2;
    s32 phi_a2;
    void *phi_v0_2;
    void *phi_v0_3;
    f32 phi_f8;
    u16 phi_return;

    temp_f12 = arg2;
    temp_v1 = arg1->unk0;
    temp_a3 = arg1->unk4;
    phi_a3_2 = temp_a3;
    if ((s32) temp_v1 > 0) {
        phi_v0 = 0;
        phi_a3 = temp_a3;
        phi_a3_2 = temp_a3;
        if (temp_a3->unk14 != 0) {
loop_2:
            temp_v0 = phi_v0 + 1;
            temp_a3_2 = phi_a3 + 0x20;
            phi_a3_2 = temp_a3_2;
            if (temp_v0 < (s32) temp_v1) {
                phi_v0 = temp_v0;
                phi_a3 = temp_a3_2;
                phi_a3_2 = temp_a3_2;
                if (temp_a3_2->unk14 != 0) {
                    goto loop_2;
                }
            }
        }
    }
    temp_a2 = phi_a3_2->unk6;
    if (temp_a2 != 0) {
        phi_a2 = (s32) arg0->unk54 % (s32) temp_a2;
    } else {
        phi_a2 = 0;
    }
    sp28 = phi_a3_2;
    arg2 = temp_f12;
    func_00022B40(temp_f12, phi_a3_2, &sp2C, phi_a2, phi_a3_2);
    temp_v0_2 = arg0->unk60;
    temp_a3_3 = phi_a3_2;
    if ((temp_v0_2 & 0x200) != 0) {
        temp_v0_3 = temp_a3_3->unk0;
        temp_a2_2 = temp_a3_3->unk6;
        phi_v0_2 = temp_v0_3;
        phi_v0_3 = temp_v0_3;
        if (temp_a2_2 != temp_v0_3->unk32) {
loop_9:
            temp_v0_4 = phi_v0_2 + 0x34;
            phi_v0_2 = temp_v0_4;
            phi_v0_3 = temp_v0_4;
            if (temp_a2_2 != phi_v0_2->unk66) {
                goto loop_9;
            }
        }
        temp_f0 = phi_v0_3->unk0;
        arg0->unk44 = (f32) (((sp2C + temp_f0) * arg2) - arg0->unk38);
        arg0->unk48 = (f32) (((sp30 + phi_v0_3->unk4) * arg2) - arg0->unk3C);
        arg0->unk4C = (f32) (((sp34 + phi_v0_3->unk8) * arg2) - arg0->unk40);
        arg0->unk38 = (f32) (sp2C * arg2);
        arg0->unk3C = (f32) (sp30 * arg2);
        phi_f8 = sp34 * arg2;
        phi_return = (bitwise u16) temp_f0;
    } else {
        if ((temp_v0_2 & 0x400) != 0) {
            arg0->unk44 = 0.0f;
            arg0->unk48 = 0.0f;
            arg0->unk4C = 0.0f;
            arg0->unk38 = (f32) (sp2C * arg2);
            arg0->unk3C = (f32) (sp30 * arg2);
            phi_f8 = sp34 * arg2;
            phi_return = (bitwise u16) 0.0f;
        } else {
            arg0->unk44 = (f32) ((sp2C * arg2) - arg0->unk38);
            arg0->unk48 = (f32) ((sp30 * arg2) - arg0->unk3C);
            arg0->unk4C = (f32) ((sp34 * arg2) - arg0->unk40);
            arg0->unk38 = (f32) (sp2C * arg2);
            arg0->unk3C = (f32) (sp30 * arg2);
            phi_f8 = sp34 * arg2;
            phi_return = temp_v0_2;
        }
    }
    arg0->unk40 = phi_f8;
    return phi_return;
}
