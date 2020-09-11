void *func_8ce8(void) {
    ? sp58;
    u16 temp_s2;
    u16 temp_s2_2;
    void *temp_ret;
    void *temp_v0;
    void *phi_s1;
    void *phi_s0;
    u16 phi_s2;
    void *phi_return;
    void *phi_return_2;

    temp_v0 = (*(void *)0x80084F18)->unk38;
    phi_return = temp_v0;
    if (temp_v0 != 0) {
        temp_s2 = temp_v0->unk0;
        *(void *)0x8007BCE4 = 0;
        phi_return = temp_v0;
        if (temp_s2 != 0) {
            phi_s1 = temp_v0->unk4;
            phi_s0 = (void *)0x8007BD30;
            phi_s2 = temp_s2;
            phi_return_2 = temp_v0;
loop_3:
            if (*(void *)0x80084EE8 == phi_s1->unk0) {
                phi_s0->unk0 = (u16)0;
                phi_s0->unk2 = (u16)1;
                phi_s0->unk80 = phi_s1;
                phi_s0->unk14 = (f32) phi_s1->unk1C;
                phi_s0->unk1C = (f32) phi_s1->unk20;
                phi_s0->unk20 = 0.0f;
                phi_s0->unk28 = 0.0f;
                phi_s0->unk24 = (f32) phi_s1->unk24;
                phi_s0->unk3C = 50.0f;
                phi_s0->unk38 = (f32) phi_s1->unk28;
                func_0000EE60(phi_s0->unk14, phi_s0->unk18, (bitwise s32) phi_s0->unk1C, 0xA00, &sp58);
                phi_s0->unk18 = sp5C;
                phi_s0->unk40 = sp64;
                phi_s0->unk44 = sp68;
                phi_s0->unk48 = sp6C;
                temp_ret = func_0001D8B0(phi_s0 + 0x14, 0, 1, 0, 1, (?32) (u16)1);
                phi_s0->unk4 = (f32) phi_s1->unk1C;
                phi_s0->unk8 = (f32) phi_s1->unk20;
                phi_s0->unkC = (f32) phi_s1->unk24;
                if ((phi_s1->unk5 & 1) != 0) {
                    phi_s0->unk74 = (u16)0x1000;
                } else {
                    phi_s0->unk74 = (u16)0;
                }
                *(void *)0x8007BCE4 = (s32) (*(void *)0x8007BCE4 + 1);
                phi_s0 = phi_s0 + 0x84;
                phi_return_2 = temp_ret;
            }
            temp_s2_2 = phi_s2 - 1;
            phi_s1 = phi_s1 + 0x2C;
            phi_s2 = temp_s2_2;
            phi_return = phi_return_2;
            if (temp_s2_2 != 0) {
                goto loop_3;
            }
        }
    }
    return phi_return;
}
