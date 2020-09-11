f32 func_5048(void *arg0, void *arg1, void *arg2) {
    s32 temp_a2;
    s32 temp_v0;
    u16 temp_a0;
    u16 temp_a1;
    u16 temp_t7;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    f32 phi_return;

    arg0->unk20 = 0.0f;
    arg0->unk18 = 0.0f;
    temp_t7 = arg1->unk4 - 1;
    arg1->unk4 = temp_t7;
    phi_return = 0.0f;
    if ((temp_t7 & 0xFFFF) == 0) {
        if (func_00006A74(arg1->unk2 - 1, arg0) != 0) {
            temp_v0 = func_0000ACC0(arg1->unk2 - 1, func_00006B1C(arg1) & 0xFFFF, ((s32) arg1->unk11E >> 8) & 0xF, 0x8004, arg0);
            if (temp_v0 != 0) {
                temp_v1 = arg0->unk64;
                temp_v1->unk8 = (u16) (temp_v1->unk8 + 1);
                temp_v1_2 = arg0->unk64;
                temp_a0 = temp_v1_2->unkA;
                if ((s32) temp_a0 < (s32) temp_v1_2->unk8) {
                    temp_v1_2->unk8 = temp_a0;
                }
                if ((arg1->unk80 & 2) != 0) {
                    temp_v1_3 = arg0->unk64;
                    temp_a2 = (((s32) ((temp_v0 & 0xFFFF) + 3) >> 2) + 1) & 0xFFFF;
                    temp_v1_3->unk4 = (u16) (temp_v1_3->unk4 + temp_a2);
                    temp_v1_4 = arg0->unk64;
                    temp_a1 = temp_v1_4->unk6;
                    if ((s32) temp_a1 < (s32) temp_v1_4->unk4) {
                        temp_v1_4->unk4 = temp_a1;
                    }
                    func_00018DF4(arg0, 1, temp_a2);
                    func_0001FCF8(arg0, 2, 1, 0x1E);
                }
            }
            temp_v0_2 = arg1->unk10;
            temp_v0_2->unk28 = (u16) (temp_v0_2->unk28 + 1);
        } else {
            func_0000B110(((arg1->unk2 * 0x128) - 0x104) + 0x8007C998);
        }
        arg1->unk0 = (u16)3;
        arg1->unk2 = (u16)0U;
        arg1->unk4 = (u16) (arg2->unk7A - 0x14);
        func_000073CC(arg1);
        arg1->unk2 = (u16)0U;
        phi_return = func_0001D358(arg0);
    }
    return phi_return;
}
