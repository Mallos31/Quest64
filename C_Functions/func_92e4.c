void *func_92e4(s32 arg0) {
    void *sp28;
    f32 temp_f12;
    f32 temp_f12_2;
    f64 temp_f2;
    u16 temp_a1;
    u16 temp_v1;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    f64 phi_f2;
    f32 phi_f12;
    u16 phi_a1;
    void *phi_v0;
    u16 phi_a1_2;
    void *phi_return;

    temp_s0 = (arg0 * 0x84) + 0x8007BD30;
    temp_s0->unk0 = (u16)2;
    if ((temp_s0->unk80->unk5 & 2) != 0) {
        temp_s0->unk2 = (u16)0;
    } else {
        temp_s0->unk2 = (u16)0xF;
        temp_f12 = func_00023210(*(void *)0x8007BACC - temp_s0->unk14, *(void *)0x8007BAD4 - temp_s0->unk1C) - temp_s0->unk24;
        temp_f2 = (f64) temp_f12;
        phi_f2 = temp_f2;
        phi_f12 = temp_f12;
        if (temp_f2 < *(void *)0x80071130) {
            temp_f12_2 = (f32) (temp_f2 + *(void *)0x80071138);
            phi_f2 = (f64) temp_f12_2;
            phi_f12 = temp_f12_2;
        }
        if (*(void *)0x80071140 < phi_f2) {
            phi_f12 = (f32) (phi_f2 - *(void *)0x80071148);
        }
        temp_s0->unk10 = phi_f12;
        temp_s0->unk2 = (u16)0xF;
        func_0001D8B0(phi_f12, temp_s0 + 0x14, 1, 1, 1, 1, 1);
    }
    temp_v0 = temp_s0->unk80;
    temp_v1 = temp_v0->unk2;
    if (temp_v1 != 2) {
        if (temp_v1 == 5) {
            if (func_0000B9D8(temp_v0->unk6) == 0) {
                phi_a1 = temp_s0->unk80->unk8;
            } else {
                temp_v0_2 = temp_s0->unk80;
                temp_a1 = temp_v0_2->unkA;
                phi_a1 = temp_a1;
                if (temp_v0_2->unk6 == 7) {
                    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x8080);
                    *(void *)0x8007B2EC = 0x16;
                    phi_a1 = temp_a1;
                }
            }
            return func_00008A00(temp_s0, phi_a1);
        }
        if (temp_v1 == 6) {
            func_00008A00(temp_s0, temp_v0->unk8);
            (void *)0x800905C8->unk0 = 2;
            (void *)0x800905C8->unk8 = 0x8004C280;
            (void *)0x800905C8->unkC = 0x8004C288;
            *(void *)0x800905C4 = -1;
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x10);
            return (void *)0x800905C8;
        }
        phi_return = func_00008A00(temp_s0, temp_v0->unk8);
    } else {
        if (func_00021240(temp_v0->unk7) == 0) {
            phi_v0 = NULL;
            phi_a1_2 = temp_s0->unk80->unk8;
        } else {
            phi_v0 = (void *)1;
            phi_a1_2 = temp_s0->unk80->unkA;
        }
        sp28 = phi_v0;
        func_00008A00(temp_s0, phi_a1_2);
        temp_v0_3 = phi_v0;
        phi_return = temp_v0_3;
        if (temp_v0_3 == 0) {
            func_000212A0(temp_s0->unk80->unk7);
            (void *)0x8007BAB8->unk8 = (u16) ((void *)0x8007BAB8->unk8 | 0x40);
            return (void *)0x8007BAB8;
        }
    }
    return phi_return;
}
