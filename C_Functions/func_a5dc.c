u16 func_a5dc(void *arg0, void *arg1, s32 arg2) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_ret_2;
    s32 temp_a2;
    u16 temp_a0;
    u16 temp_ret;
    u16 temp_ret_3;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_5;
    void *temp_v0_3;
    void *temp_v0_4;
    u16 phi_return;
    u16 phi_return_2;
    u16 phi_return_3;

    temp_v0 = arg1->unk6;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                return temp_v0;
            }
            func_0000A7D8(arg0, 0x8007D0D0);
            temp_ret = func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            phi_return_2 = temp_ret;
            if (arg1->unk2 == 0) {
                arg1->unk0 = (u16)0;
                arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
                phi_return_2 = temp_ret;
            }
        } else {
            temp_v0_2 = arg1->unk1C->unk2;
            phi_return_3 = temp_v0_2;
            if ((temp_v0_2 & 0xA) != 0) {
                func_0000A7D8(arg0, 0x8007D0D0);
                phi_return_3 = func_0000A508(0, (void *)0x8007D0D0->unk0, (void *)0x8007D0D0->unk4, arg0, arg1);
            }
            phi_return_2 = phi_return_3;
            if (((void *)0x8007BAB8->unk74 & 2) == 0) {
                phi_return_2 = phi_return_3;
                if ((arg1->unk8 & 8) == 0) {
                    temp_f0 = (void *)0x8007BAB8->unk14 - arg0->unk0;
                    temp_f2 = (void *)0x8007BAB8->unk1C - arg0->unk8;
                    temp_ret_2 = func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
                    phi_return_2 = (bitwise u16) temp_ret_2;
                    if ((temp_ret_2 - ((void *)0x8007BAB8->unk38 * (void *)0x8007BAB8->unk10->unk18)) < (arg1->unk1C->unk14 * arg0->unk24)) {
                        if (func_0000ABF4(arg0) != 0) {
                            temp_ret_3 = func_00006BEC(func_0000AC84(arg1) & 0xFFFF, 0x8004, arg0);
                            phi_return_2 = temp_ret_3;
                            if ((arg1->unk90 & 2) != 0) {
                                temp_a2 = (((s32) ((temp_ret_3 & 0xFFFF) + 3) >> 2) + 1) & 0xFFFF;
                                temp_t8 = arg1->unkA + temp_a2;
                                arg1->unkA = temp_t8;
                                temp_a0 = arg0->unk64->unk6;
                                if ((s32) temp_a0 < (temp_t8 & 0xFFFF)) {
                                    arg1->unkA = temp_a0;
                                }
                                func_00018DF4(arg0, 1, temp_a2);
                                phi_return_2 = func_0001FCF8(arg0, 2, 1, 0x1E);
                            }
                        } else {
                            func_00006F6C();
                            temp_v0_3 = (void *)0x8007BAB8->unk10;
                            temp_v0_3->unk2C = (u16) (temp_v0_3->unk2C + 1);
                            phi_return_2 = (u16) temp_v0_3;
                        }
                        arg1->unk8 = (u16) (arg1->unk8 | 8);
                    }
                }
            }
            arg1->unk2 = (s16) (arg1->unk2 - 1);
            if (arg1->unk2 == 0) {
                temp_v0_4 = arg1->unk1C;
                arg1->unk6 = (u16) (arg1->unk6 + 1);
                if (temp_v0_4->unkA == -1) {
                    arg1->unk2 = (s16) ((arg2 + (temp_v0_4->unk8 * 0xC))->unk2 - temp_v0_4->unk4);
                } else {
                    arg1->unk2 = (s16) (arg2 + (temp_v0_4->unkC * 0xC))->unk2;
                    func_0001D8B0(arg0, temp_v0_4->unkC, 1, 0, 1, 1);
                    func_0000A7D8(arg0, 0x8007D0D0);
                }
                if ((s32) arg1->unk2 <= 0) {
                    arg1->unk2 = (u16)1;
                }
                return func_0001D358(arg0);
            }
        }
    } else {
        temp_v0_5 = arg1->unk1C->unk2;
        phi_return = temp_v0_5;
        if ((temp_v0_5 & 2) != 0) {
            func_0000A7D8(arg0, 0x8007D0D0);
            phi_return = func_0000A508(0, (void *)0x8007D0D0->unk0, *(void *)0x8007D0D4, arg0, arg1);
        }
        arg1->unk2 = (s16) (arg1->unk2 - 1);
        phi_return_2 = phi_return;
        if (arg1->unk2 == 0) {
            arg1->unk6 = (u16) (arg1->unk6 + 1);
            arg1->unk2 = (s16) arg1->unk1C->unk6;
            return phi_return;
        }
    }
    return phi_return_2;
}
