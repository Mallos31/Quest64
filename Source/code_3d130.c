s32 __osGetId(void *arg0) {
    s32 sp64;
    u16 sp62;
    u16 sp60;
    ? sp40;
    ? sp20;
    s32 sp1C;
    ? *sp18;
    s32 temp_t4;

    if (arg0->unk65 != 0) {
        arg0->unk65 = (u8)0U;
        sp1C = __osPfsSelectBank(arg0);
        if (sp1C != 0) {
            return sp1C;
        }
    }
    sp1C = __osContRamRead(arg0->unk4, arg0->unk8, 1, &sp40);
    if (sp1C != 0) {
        return sp1C;
    }
    __osIdCheckSum(&sp40, &sp62, &sp60);
    sp18 = &sp40;
    if ((sp40.unk1C != sp62) || (sp40.unk1E != sp60)) {
        sp1C = __osCheckPackId(arg0, sp18);
        if (sp1C == 0xA) {
            sp1C = __osRepairPackId(arg0, sp18, &sp20);
            if (sp1C != 0) {
                return sp1C;
            }
            sp18 = &sp20;
        } else {
            if (sp1C != 0) {
                return sp1C;
            }
        }
    } else {

    }
    if ((sp18->unk18 & 1) == 0) {
        sp1C = __osRepairPackId(arg0, sp18, &sp20);
        if (sp1C != 0) {
            return sp1C;
        }
        sp18 = &sp20;
        if ((sp20.unk18 & 1) == 0) {
            return 0xB;
        }
    }
    sp64 = 0;
loop_19:
    (arg0 + sp64)->unkC = (u8) *(sp18 + sp64);
    temp_t4 = sp64 + 1;
    sp64 = temp_t4;
    if (temp_t4 < 0x20) {
        goto loop_19;
    }
    arg0->unk4C = (?32) sp18->unk1B;
    arg0->unk64 = (u8) sp18->unk1A;
    arg0->unk60 = (s32) ((arg0->unk64 * 2) + 3);
    arg0->unk50 = 0x10;
    arg0->unk54 = 8;
    arg0->unk58 = (s32) ((arg0->unk64 * 8) + 8);
    arg0->unk5C = (s32) (arg0->unk58 + (arg0->unk64 * 8));
    sp1C = __osContRamRead(arg0->unk4, arg0->unk8, 7, arg0 + 0x2C);
    if (sp1C != 0) {
        return sp1C;
    }
    return 0;
}
