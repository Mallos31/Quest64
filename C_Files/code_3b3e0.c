s32 func_8003A7E0(s32 arg0, s32 arg1, s32 arg2) {
    ? sp7C;
    s32 sp78;
    u32 sp74;
    u32 sp70;
    ? sp50;
    ? sp38;
    u32 sp34;
    s32 sp30;
    u32 sp2C;
    s32 sp28;
    s32 temp_ret_2;
    s32 temp_ret_4;
    s32 temp_ret_5;
    s32 temp_v0;
    u32 temp_ret;
    u32 temp_ret_3;
    u32 temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;

    sp78 = 0;
    if (*(void *)0x800709C0 != 0) {
        return 0;
    }
    *(void *)0x800709C0 = 1;
    temp_ret = func_80034ED0();
    temp_v1 = (u32) (u64) temp_ret;
    sp70 = temp_ret;
    sp74 = temp_v1;
    temp_ret_2 = func_80039C38(0, 0x7A120, *(void *)0x8006F400, *(void *)0x8006F404);
    temp_v1_2 = (u32) (u64) temp_ret_2;
    sp30 = temp_ret_2;
    sp34 = temp_v1_2;
    temp_ret_3 = func_80039B38(sp30, sp34, 0, 0xF4240);
    temp_v0_2 = temp_ret_3;
    if (temp_v0_2 >= sp70) {
        if ((sp70 < temp_v0_2) || (sp74 < (u32) (u64) temp_ret_3)) {
            func_80033F10(&sp38, &sp7C, 1);
            temp_ret_4 = func_80039C38(0, 0x7A120, *(void *)0x8006F400, *(void *)0x8006F404);
            temp_v1_3 = (u32) (u64) temp_ret_4;
            sp28 = temp_ret_4;
            sp2C = temp_v1_3;
            temp_ret_5 = func_80039B38(sp28, sp2C, 0, 0xF4240);
            temp_v1_4 = (u32) (u64) temp_ret_5;
            sp30 = temp_ret_5;
            sp34 = temp_v1_4;
            func_80046EE0(&sp50, (sp30 - sp70) - (sp34 < sp74), sp34 - sp74, 0, 0, &sp38, &sp7C);
            func_80034020(&sp38, &sp7C, 1);
        } else {

        }
    }
    *(void *)0x80095491 = (u8)4;
    func_8003AAA8(0);
    sp78 = func_80046950(1, 0x80095450);
    func_80034020(arg0, &sp7C, 1);
    temp_v0 = func_80046950(0, 0x80095450);
    sp78 = temp_v0;
    func_80034020(arg0, &sp7C, 1);
    func_8003A9D8(arg1, arg2);
    *(void *)0x80095490 = (u8)0;
    func_800447F0();
    func_80033F10(0x800954B8, 0x800954D0, 1);
    return temp_v0;
}

void func_8003A9D8(void *arg0, void *arg1) {
    void *sp14;
    ? spC;
    s32 sp8;
    u8 sp7;
    s32 temp_at;
    s32 temp_t7;
    void *phi_a1;

    sp7 = (u8)0U;
    sp14 = (void *)0x80095450;
    sp8 = 0;
    phi_a1 = arg1;
    if ((s32) *(void *)0x80095491 > 0) {
loop_1:
        spC.unk0 = (?32) (unaligned s32) sp14->unk0;
        spC.unk4 = (?32) (unaligned s32) sp14->unk4;
        phi_a1->unk3 = (u8) ((s32) (spE & 0xC0) >> 4);
        if (phi_a1->unk3 == 0) {
            phi_a1->unk0 = (s16) ((sp11 << 8) | sp10);
            phi_a1->unk2 = sp12;
            sp7 = sp7 | (1 << sp8);
        }
        temp_t7 = sp8 + 1;
        temp_at = temp_t7 < (s32) *(void *)0x80095491;
        sp14 = sp14 + 8;
        sp8 = temp_t7;
        phi_a1 = phi_a1 + 4;
        if (temp_at != 0) {
            goto loop_1;
        }
    }
    *arg0 = sp7;
}

void func_8003AAA8(s32 arg0) {
    void *spC;
    s8 spB;
    s8 spA;
    s8 sp9;
    s8 sp8;
    s8 sp7;
    s8 sp6;
    s8 sp5;
    s8 sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_t7;
    s32 temp_t9;

    sp0 = 0;
loop_1:
    ((sp0 * 4) + 0x80090000)->unk5450 = 0;
    temp_t9 = sp0 + 1;
    sp0 = temp_t9;
    if (temp_t9 < 0xF) {
        goto loop_1;
    }
    *(void *)0x8009548C = 1;
    spC = (void *)0x80095450;
    sp4 = (u8)0xFF;
    sp5 = (u8)1;
    sp6 = (u8)3;
    sp7 = arg0 & 0xFF;
    sp8 = (u8)0xFF;
    sp9 = (u8)0xFF;
    spA = (u8)0xFF;
    spB = (u8)0xFF;
    sp0 = 0;
    if ((s32) *(void *)0x80095491 > 0) {
loop_3:
        spC->unk0 = (unaligned s32) sp4.unk0;
        spC->unk4 = (unaligned s32) sp4.unk4;
        temp_t7 = sp0 + 1;
        temp_at = temp_t7 < (s32) *(void *)0x80095491;
        sp0 = temp_t7;
        spC = spC + 8;
        if (temp_at != 0) {
            goto loop_3;
        }
    }
    spC->unk0 = (u8)0xFE;
}

s32 func_8003ABA0(u8 arg0) {
    s32 sp1C;

    sp1C = 0;
    func_80044840();
    if ((s32) arg0 >= 5) {
        *(void *)0x80095491 = (u8)4U;
    } else {
        *(void *)0x80095491 = arg0;
    }
    *(void *)0x80095490 = (u8)0xFE;
    func_80044884();
    return sp1C;
}
