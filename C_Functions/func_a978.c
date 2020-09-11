u16 func_a978(void *arg0, void *arg1, s32 arg2) {
    u16 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    u16 phi_return;
    u16 phi_return_2;

    temp_v0 = arg1->unk6;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                return temp_v0;
            }
            if ((arg1->unk1C->unk2 & 0xA) != 0) {
                func_0000A7D8(arg0, 0x8007D0D0);
                func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            }
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            if (arg1->unk2 == 0) {
                temp_v0_2 = arg1->unk1C;
                arg1->unk6 = (u16) (arg1->unk6 - 1);
                arg1->unk2 = (s16) (arg2 + (temp_v0_2->unkC * 0xC))->unk2;
                func_0001D8B0(arg0, temp_v0_2->unkC, 1, 0, 1, 1);
            }
            phi_return_2 = (u16) arg1->unk2;
            if ((s32) arg1->unk2 <= 0) {
                arg1->unk2 = (u16)0xF;
                phi_return_2 = (u16) arg1->unk2;
            }
        } else {
            phi_return = temp_v0;
            if ((arg1->unk1C->unk2 & 0xA) != 0) {
                func_0000A7D8(arg0, 0x8007D0D0);
                phi_return = func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            }
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            phi_return_2 = phi_return;
            if (arg1->unk2 == 0) {
                arg1->unk0 = (u16)0;
                arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
                return phi_return;
            }
        }
    } else {
        phi_return_2 = temp_v0;
        if ((arg1->unk1C->unk2 & 2) != 0) {
            func_0000A7D8(arg0, 0x8007D0D0);
            phi_return_2 = func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
        }
        arg1->unk2 = (s16) (arg1->unk2 - 1);
        if (arg1->unk2 == 0) {
            func_00014A98(arg0, arg1->unk1C->unk0 & 0xFFFF7FFF, 0, 0);
            temp_v0_3 = arg1->unk1C;
            arg1->unk6 = (u16) (arg1->unk6 + 1);
            if (temp_v0_3->unkA == -1) {
                arg1->unk2 = (s16) ((arg2 + (temp_v0_3->unk8 * 0xC))->unk2 - temp_v0_3->unk4);
            } else {
                arg1->unk6 = (u16) (arg1->unk6 + 1);
                arg1->unk2 = (s16) temp_v0_3->unk6;
            }
            if ((s32) arg1->unk2 <= 0) {
                arg1->unk2 = (u16)0xF;
            }
            return func_0001D358(arg0);
        }
    }
    return phi_return_2;
}
