u16 func_51f0(void *arg0, void *arg1, void *arg2) {
    u16 temp_ret;
    u16 temp_t6;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 phi_return;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_v0 = arg1->unk120;
    temp_t6 = temp_v0 - 1;
    if (temp_v0 != 0) {
        arg1->unk120 = temp_t6;
        phi_return = temp_v0;
        if ((temp_t6 & 0xFFFF) == 0) {
            return func_00014A98(arg0, arg1->unk11E, 0, 0);
        }
    } else {
        temp_t9 = arg1->unk4 - 1;
        arg1->unk4 = temp_t9;
        phi_return = temp_v0;
        if ((temp_t9 & 0xFFFF) == 0) {
            temp_ret = func_00015B50();
            if (temp_ret != 0) {
                arg1->unk4 = (u16)8U;
                return temp_ret;
            }
            arg0->unk60 = (u16) (arg0->unk60 & 0xFFFE);
            temp_v0_2 = arg1->unk8;
            if ((temp_v0_2 & 4) != 0) {
                arg1->unk0 = (u16)3;
                arg1->unk8 = (u16) (temp_v0_2 & 0xFFFB);
                arg1->unk4 = (u16) arg2->unk122;
                func_0001D8B0(arg0, 0x18, 1, *(void *)0x8007BC2C, 1, 1);
            } else {
                arg1->unk0 = (u16)0;
            }
            func_000073CC(arg1);
            arg1->unk2 = (u16)0;
            phi_return = func_0001D358(arg0);
        }
    }
    return phi_return;
}
