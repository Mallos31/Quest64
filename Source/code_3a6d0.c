s64 func_80039AD0(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) ((u64) ERROR(unknown instruction: ld $t6, ($sp)) >> ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

s64 func_80039AFC(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) ((u64) ERROR(unknown instruction: ld $t6, ($sp)) % (u64) ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

s64 func_80039B38(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) ((u64) ERROR(unknown instruction: ld $t6, ($sp)) / (u64) ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

s64 func_80039B74(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) (ERROR(unknown instruction: ld $t6, ($sp)) << ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

s64 func_80039BA0(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) ((u64) ERROR(unknown instruction: ld $t6, ($sp)) % (u64) ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

s64 func_80039BDC(s32 arg0, ? arg1, ? arg2, ? arg3) {
    s64 temp_t6;
    s64 temp_t7;

    temp_t7 = ERROR(unknown instruction: ld $t7, 0x8($sp));
    temp_t6 = ERROR(unknown instruction: ld $t6, ($sp));
    if (temp_t7 == -1) {
        if (temp_t6 == (1 << 0x3F)) {
            BREAK(6);
        }
    }
    return (s64) (temp_t6 / temp_t7) >> 0x20;
}

s64 func_80039C38(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) (ERROR(unknown instruction: ld $t6, ($sp)) * ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

void func_80039C68(? arg2, ? arg3, s16 arg4) {
    ERROR(unknown instruction: ld $t6, 0x8($sp));
    ERROR(unknown instruction: sd $t0, ($a0));
    ERROR(unknown instruction: ld $t1, 0x8($sp));
    ERROR(unknown instruction: sd $t5, ($a1));
}

s32 func_80039CC8(s32 arg0, ? arg1, ? arg2, ? arg3) {
    s64 temp_t7;

    temp_t7 = ERROR(unknown instruction: ld $t7, 0x10($sp));
    if (temp_t7 == -1) {
        if (ERROR(unknown instruction: ld $t6, 0x8($sp)) == (1 << 0x3F)) {
            BREAK(6);
        }
    }
    if ((ERROR(unknown instruction: sd $t8, ($sp)) >= 0) || ((s32) temp_t7 <= 0)) {
        if (ERROR(unknown instruction: ld $t9, ($sp)) > 0) {
            if (ERROR(unknown instruction: ld $t0, 0x10($sp)) < 0) {
block_7:
                ERROR(unknown instruction: ld $t1, ($sp));
                ERROR(unknown instruction: ld $t2, 0x10($sp));
                ERROR(unknown instruction: sd $t3, ($sp));
            }
        }
    } else {
        goto block_7;
    }
    return sp0;
}

s64 func_80039D64(s32 arg0, ? arg1, ? arg2, ? arg3) {
    return (s64) ((s64) ERROR(unknown instruction: ld $t6, ($sp)) >> ERROR(unknown instruction: ld $t7, 0x8($sp))) >> 0x20;
}

s32 func_80039D90(s32 arg0, void *arg1, s32 arg2) {
    s32 sp64;
    s32 sp60;
    u16 sp5E;
    u16 sp5C;
    ? sp3C;
    ? *sp38;
    ? sp18;
    s32 temp_t6;
    s32 temp_v0;

    sp60 = 0;
    __osSiGetAccess();
    sp60 = __osPfsGetStatus(arg0, arg2);
    __osSiRelAccess();
    if (sp60 != 0) {
        return sp60;
    }
    arg1->unk4 = arg0;
    arg1->unk8 = arg2;
    arg1->unk0 = 0;
    arg1->unk65 = (u8)0;
    sp60 = __osPfsSelectBank(arg1);
    if (sp60 != 0) {
        return sp60;
    }
    __osIdCheckSum(&sp3C, &sp5E, &sp5C);
    sp38 = &sp3C;
    if ((sp3C.unk1C != sp5E) || (sp3C.unk1E != sp5C)) {
        sp60 = __osCheckPackId(arg1, sp38);
        if (sp60 != 0) {
            return sp60;
        }
        if (sp60 != 0) {
            return sp60;
        }
    } else {

    }
    if ((sp38->unk18 & 1) == 0) {
        sp60 = __osRepairPackId(arg1, sp38, &sp18);
        if (sp60 != 0) {
            return sp60;
        }
        sp38 = &sp18;
        if ((sp18.unk18 & 1) == 0) {
            return 0xB;
        }
    }
    sp64 = 0;
loop_16:
    (arg1 + sp64)->unkC = (u8) *(sp38 + sp64);
    temp_t6 = sp64 + 1;
    sp64 = temp_t6;
    if (temp_t6 < 0x20) {
        goto loop_16;
    }
    arg1->unk4C = (?32) sp38->unk1B;
    arg1->unk64 = (u8) sp38->unk1A;
    arg1->unk60 = (s32) ((arg1->unk64 * 2) + 3);
    arg1->unk50 = 0x10;
    arg1->unk54 = 8;
    arg1->unk58 = (s32) ((arg1->unk64 * 8) + 8);
    arg1->unk5C = (s32) (arg1->unk58 + (arg1->unk64 * 8));
    sp60 = __osContRamRead(arg1->unk4, arg1->unk8, 7, arg1 + 0x2C);
    if (sp60 != 0) {
        return sp60;
    }
    temp_v0 = func_80045BB0(arg1);
    sp60 = temp_v0;
    arg1->unk0 = (s32) (arg1->unk0 | 1);
    return temp_v0;
}
