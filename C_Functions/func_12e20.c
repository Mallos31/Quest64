void *func_12e20(void) {
    u16 temp_s2_2;
    u16 temp_s2_3;
    u32 temp_s2;
    void *temp_ret;
    void *temp_s0;
    void *temp_v0;
    void *phi_v0;
    u32 phi_s2;
    u32 phi_s2_2;
    void *phi_v0_2;
    void *phi_s0;
    void *phi_s1;
    u16 phi_s2_3;
    void *phi_return;

    phi_v0 = (void *)0x8004C510;
    phi_s2 = 0U;
    phi_return = (void *)0x8004C510;
loop_1:
    if ((*(void *)0x80084EE4 != phi_v0->unk0) || (phi_s2_2 = phi_s2, phi_v0_2 = phi_v0, (*(void *)0x80084EE8 != phi_v0->unk2))) {
        temp_s2 = phi_s2 + 1;
        temp_v0 = phi_v0 + 0xC;
        phi_v0 = temp_v0;
        phi_s2 = temp_s2;
        phi_s2_2 = temp_s2;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        phi_return = temp_v0;
        if (temp_s2 < 0x2BU) {
            goto loop_1;
        }
    } else {

    }
    if (phi_s2_2 < 0x2BU) {
        temp_s2_2 = phi_v0_2->unk4;
        *(void *)0x80086A00 = (?32) temp_s2_2;
        if (temp_s2_2 != 0) {
            phi_s0 = (void *)0x80086A08;
            phi_s1 = phi_v0_2->unk8;
            phi_s2_3 = temp_s2_2;
loop_7:
            phi_s0->unk12 = (u16)-1;
            phi_s0->unk10 = func_00012700(phi_s1->unk8);
            phi_s0->unk0 = (f32) phi_s1->unk0;
            phi_s0->unk8 = (f32) -phi_s1->unk4;
            temp_ret = func_0000EE60(phi_s0->unk0, 0.0f, (bitwise s32) phi_s0->unk8, 0xA00, (void *)0x80086AC8);
            phi_s0->unkC = 0.0f;
            temp_s2_3 = phi_s2_3 - 1;
            phi_s0->unk4 = (f32) (void *)0x80086AC8->unk4;
            temp_s0 = phi_s0 + 0x18;
            temp_s0->unk-4 = (u8) phi_s1->unk8;
            phi_s0 = temp_s0;
            phi_s1 = phi_s1 + 0xC;
            phi_s2_3 = temp_s2_3;
            if (temp_s2_3 != 0) {
                goto loop_7;
            }
            return temp_ret;
        }
    } else {
        *(void *)0x80086A00 = 0;
    }
    return phi_return;
}
