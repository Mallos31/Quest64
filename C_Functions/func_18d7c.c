void *func_18d7c(void *arg0) {
    s32 temp_a1;
    u8 temp_t9;
    void *temp_a2;
    void *temp_v0;
    s32 phi_v1;
    s32 phi_a1;

    temp_v0 = arg0->unk68;
    phi_v1 = 1;
    phi_a1 = 0;
loop_1:
    temp_a2 = temp_v0 + phi_a1;
    if ((temp_v0->unk0 & phi_v1) != 0) {
        temp_t9 = temp_a2->unk2 - 1;
        temp_a2->unk2 = temp_t9;
        if ((temp_t9 & 0xFF) == 0) {
            temp_v0->unk0 = (u16) (temp_v0->unk0 ^ phi_v1);
            if ((phi_v1 & 1) != 0) {
                arg0->unk24 = (f32) arg0->unk64->unk20;
            } else {
                if ((phi_v1 & 4) != 0) {
                    arg0->unk68->unk8A = (u16)0x10;
                } else {
                    if ((phi_v1 & 0x10) != 0) {
                        arg0->unk68->unk90 = 1.0f;
                    } else {
                        if ((phi_v1 & 0x20) != 0) {
                            arg0->unk68->unk86 = (u16) arg0->unk64->unkC;
                        } else {
                            if ((phi_v1 & 0x400) != 0) {
                                arg0->unk68->unk88 = (u16) arg0->unk64->unkE;
                            } else {
                                if ((phi_v1 & 8) != 0) {
                                    arg0->unk60 = (u16) (arg0->unk60 & -2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    temp_a1 = phi_a1 + 1;
    phi_v1 = phi_v1 * 2;
    phi_a1 = temp_a1;
    if (temp_a1 != 0xC) {
        goto loop_1;
    }
    return temp_v0;
}
