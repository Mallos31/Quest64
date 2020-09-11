void func_a188(void *arg0, void *arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    void *temp_a2;

    func_0000A3F4(arg0, (void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk1C);
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        (void *)0x8007D0D0->unk0 = 0.0f;
        (void *)0x8007D0D0->unk4 = (f32) *(void *)0x80071158;
        func_000232F4(arg0->unk10, arg0, (void *)0x8007D0D0);
    } else {
        func_0000A7D8(arg0, 0x8007D0D0);
    }
    func_0000A508(1, (bitwise s32) (void *)0x8007D0D0->unk0, (bitwise s32) (void *)0x8007D0D0->unk4, arg0, arg1);
    arg1->unk2 = (s16) (arg1->unk2 - 1);
    if (arg1->unk2 == 0) {
        arg1->unk4 = (u16) (arg1->unk4 - 1);
        if (arg1->unk1C != 0) {
            temp_f0 = (bitwise f32) (void *)0x8007BAB8->unk14 - arg0->unk0;
            temp_f2 = (bitwise f32) (void *)0x8007BAB8->unk1C - arg0->unk8;
            temp_a2 = arg1->unk1C;
            if (!((func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2), arg1) - ((*(void *)0x8007BB30)->unk18 * *(void *)0x8007BAF0)) < (temp_a2->unk10 * arg0->unk24))) {
                if (arg1->unk4 != 0) {
                    if ((arg1->unk8 & 2) == 0) {
                        if ((*(void *)0x8008C592 & 0x100) == 0) {
                            arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
                            return;
                        }
                        arg1->unk2 = (s16) arg2->unkE;
                        return;
                    }
                }
                func_0000A284(arg1, arg0, temp_a2);
                return;
            }
            func_0000A284(arg1, arg0, temp_a2);
            return;
        }
        temp_v0 = func_0000A008(arg1, arg0);
        if (temp_v0 != 0) {
            func_0000A284(arg1, arg0, temp_v0);
            return;
        }
        if (arg1->unk4 == 0) {
block_17:
            arg1->unk0 = (u16)0;
            func_0001D8B0(arg0, 0, 1, 0, 1, 1);
            func_0001D358(arg0);
            return;
        }
        if ((arg1->unk8 & 2) != 0) {
            goto block_17;
        }
        if ((*(void *)0x8008C592 & 0x100) != 0) {
            arg1->unk2 = (s16) arg2->unkE;
            return;
        }
        arg1->unk2 = (s16) ((s32) arg2->unkE / 0xA);
    }
}
