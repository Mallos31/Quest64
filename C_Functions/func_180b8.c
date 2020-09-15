void func_180b8(s32 arg0, void *arg1) {
    u16 temp_v0_2;
    u16 temp_v0_3;
    void *temp_v0;
    s32 phi_v0;

    temp_v0 = arg1->unk68;
    temp_v0->unk0 = (u16) (temp_v0->unk0 | 0x400);
    if (arg0 != 1) {
        if (arg0 != 2) {
            if (arg0 != 3) {
                if (arg0 != 4) {

                } else {
                    arg1->unk68->unk88 = (s16) (arg1->unk64->unkE * 2);
                }
            } else {
                temp_v0_2 = arg1->unk64->unkE;
                arg1->unk68->unk88 = (s16) (temp_v0_2 + ((s32) temp_v0_2 >> 1));
            }
        } else {
            temp_v0_3 = arg1->unk64->unkE;
            arg1->unk68->unk88 = (s16) (temp_v0_3 - ((s32) temp_v0_3 >> 2));
        }
    } else {
        arg1->unk68->unk88 = (s16) ((s32) arg1->unk64->unkE >> 1);
    }
    phi_v0 = 6;
    if ((s32) arg1->unk64->unkE < (s32) arg1->unk68->unk88) {
        phi_v0 = 5;
    }
    func_0001FCF8(arg1, 0x400, phi_v0 & 0xFFFF, -1);
}
