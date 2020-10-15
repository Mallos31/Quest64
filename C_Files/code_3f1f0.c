? func_8003E5F0(void) {
    if ((*(void *)0xA4040010 & 0x1C) != 0) {
        return 1;
    }
    return 0;
}

void func_8003E620(void) {
    void *temp_t1;
    void *temp_t4;
    void *temp_t8;
    void *temp_t9;

    *(void *)0x80095624 = 0;
    *(void *)0x80095620 = 0;
    temp_t8 = *(void *)0x80070A90;
    *(void *)0x80095628 = 0;
    *(void *)0x8009562C = 0;
    temp_t8->unk4 = temp_t8;
    temp_t9 = *(void *)0x80070A90;
    temp_t9->unk0 = (s32) temp_t9->unk4;
    temp_t1 = *(void *)0x80070A90;
    temp_t1->unk10 = 0;
    temp_t1->unk14 = 0;
    temp_t4 = *(void *)0x80070A90;
    temp_t4->unk8 = (s32) temp_t4->unk10;
    temp_t4->unkC = (s32) temp_t4->unk14;
    (*(void *)0x80070A90)->unk18 = 0;
    (*(void *)0x80070A90)->unk1C = 0;
}

void func_8003E6AC(void) {
    void *sp24;
    s32 sp20;
    u32 sp1C;
    void *sp18;
    s32 temp_t0;
    s32 temp_t6_3;
    s32 temp_t8_2;
    s32 temp_t9_2;
    u32 temp_t3;
    u32 temp_t6_2;
    void *temp_t6;
    void *temp_t8;
    void *temp_t9;

    temp_t6 = *(void *)0x80070A90;
    if (*temp_t6 != temp_t6) {
loop_1:
        temp_t8 = *(void *)0x80070A90;
        temp_t9 = *temp_t8;
        sp24 = temp_t9;
        if (temp_t9 != temp_t8) {
            sp20 = func_8003ED90();
            sp1C = sp20 - *(void *)0x80095630;
            *(void *)0x80095630 = sp20;
            temp_t6_2 = sp24->unk10;
            if (temp_t6_2 >= 0U) {
                if (0U < temp_t6_2) {
block_6:
                    sp18 = sp24 + 0x10;
                    temp_t3 = sp24->unk14;
                    temp_t0 = (sp24->unk10 - 0U) - (temp_t3 < sp1C);
                    sp24->unk14 = (u32) (temp_t3 - sp1C);
                    sp24->unk10 = temp_t0;
                    func_8003E824(sp24->unk10, sp24->unk14);
                    return;
                }
                if (sp1C < (u32) sp24->unk14) {
                    goto block_6;
                }
            }
            *sp24->unk4 = (s32) sp24->unk0;
            sp24->unk0->unk4 = (s32) sp24->unk4;
            sp24->unk0 = 0;
            sp24->unk4 = 0;
            temp_t6_3 = sp24->unk18;
            if (temp_t6_3 != 0) {
                func_80034200(temp_t6_3, sp24->unk1C, 0);
            }
            temp_t8_2 = sp24->unk8;
            temp_t9_2 = sp24->unkC;
            if (temp_t8_2 == 0) {
                if (temp_t9_2 == 0) {
                    goto loop_1;
                }
            }
            sp24->unk10 = temp_t8_2;
            sp24->unk14 = temp_t9_2;
            func_8003E898(sp24);
            goto loop_1;
        }
        func_80047CD0(0);
        *(void *)0x80095630 = 0;
        return;
    }
}

void func_8003E824(s32 arg0, u32 arg1) {
    u32 sp24;
    s32 sp20;
    s32 sp1C;
    u32 temp_t3;

    sp1C = func_8003D4D0();
    *(void *)0x80095630 = func_8003ED90();
    temp_t3 = *(void *)0x80095630 + arg1;
    sp20 = (temp_t3 < arg1) + arg0;
    sp24 = temp_t3;
    func_80047CD0(temp_t3);
    func_8003D4F0(sp1C);
}

u32 func_8003E898(void *arg0) {
    void *sp34;
    u32 sp2C;
    u32 sp28;
    s32 sp24;
    u32 *sp20;
    void *sp1C;
    s32 temp_t0_3;
    u32 temp_t0;
    u32 temp_t0_2;
    u32 temp_t1;
    u32 temp_t2;
    u32 temp_t5;
    u32 temp_t5_2;
    u32 temp_t6_2;
    u32 temp_t7_2;
    void *temp_t3;
    void *temp_t6;
    void *temp_t7;

    temp_t6 = *(void *)0x80070A90;
    sp24 = func_8003D4D0();
    temp_t7 = *temp_t6;
    sp34 = temp_t7;
    temp_t1 = arg0->unk14;
    temp_t0 = arg0->unk10;
    sp2C = temp_t1;
    sp28 = temp_t0;
    if (temp_t7 != temp_t6) {
        temp_t2 = temp_t7->unk10;
        if (temp_t0 >= temp_t2) {
            if ((((temp_t2 >= temp_t0) && ((u32) temp_t7->unk14 < temp_t1)) && (sp20 = &sp28, temp_t5 = (&sp28)[1], temp_t7_2 = sp34->unk14, temp_t0_2 = (sp28.unk0 - sp34->unk10) - (temp_t5 < temp_t7_2), (&sp28)[1] = (u32) (temp_t5 - temp_t7_2), sp28.unk0 = temp_t0_2, temp_t3 = sp34->unk0, sp34 = temp_t3, (temp_t3 != *(void *)0x80070A90))) && (temp_t6_2 = temp_t3->unk10, ((temp_t6_2 < sp28) == 0))) {
block_6:
                if (sp28 >= temp_t6_2) {
                    if ((u32) temp_t3->unk14 < sp2C) {
                        goto loop_4;
                    }
                }
            } else {
loop_4:
                sp20 = &sp28;
                temp_t5 = (&sp28)[1];
                temp_t7_2 = sp34->unk14;
                temp_t0_2 = (sp28.unk0 - sp34->unk10) - (temp_t5 < temp_t7_2);
                (&sp28)[1] = (u32) (temp_t5 - temp_t7_2);
                sp28.unk0 = temp_t0_2;
                temp_t3 = sp34->unk0;
                sp34 = temp_t3;
                if (temp_t3 != *(void *)0x80070A90) {
                    temp_t6_2 = temp_t3->unk10;
                    if (temp_t6_2 < sp28) {
                        goto loop_4;
                    }
                    goto block_6;
                }
            }
        }
    }
    arg0->unk10 = sp28;
    arg0->unk14 = sp2C;
    if (sp34 != *(void *)0x80070A90) {
        sp1C = sp34 + 0x10;
        temp_t5_2 = sp34->unk14;
        temp_t0_3 = (sp34->unk10 - sp28) - (temp_t5_2 < sp2C);
        sp34->unk14 = (u32) (temp_t5_2 - sp2C);
        sp34->unk10 = temp_t0_3;
    }
    arg0->unk0 = sp34;
    arg0->unk4 = (s32) sp34->unk4;
    *sp34->unk4 = arg0;
    sp34->unk4 = arg0;
    func_8003D4F0(sp24);
    return sp28;
}

s32 func_8003EA20(void) {
    return *(void *)0x80070A80;
}

void func_8003EA30(void) {
    s32 sp3C;
    s32 sp38;
    u32 sp34;
    s32 sp30;
    u32 temp_t6;
    void *temp_s0;
    void *temp_s1;
    void *temp_t6_2;
    void *temp_t8;
    void *temp_t8_2;
    void *phi_t8;
    void *phi_t6;

    sp30 = 0;
    temp_s1 = *(void *)0x80070A84;
    temp_s0 = temp_s1->unk8;
    sp30 = *(void *)0xA4400010 & 1;
    sp3C = (temp_s0 + (sp30 * 0x14))->unk28 + func_80034DD0(temp_s1->unk4);
    if ((temp_s1->unk0 & 2) != 0) {
        temp_s1->unk20 = (s32) (temp_s1->unk20 | (temp_s0->unk20 & -0x1000));
    } else {
        temp_s1->unk20 = (s32) temp_s0->unk20;
    }
    if ((temp_s1->unk0 & 4) != 0) {
        temp_t6 = (temp_s0 + (sp30 * 0x14))->unk2C & 0xFFF;
        sp34 = temp_t6;
        temp_s1->unk2C = (u32) (temp_s1->unk24 * (f32) temp_t6);
        temp_s1->unk2C = (u32) (temp_s1->unk2C | ((temp_s0 + (sp30 * 0x14))->unk2C & -0x1000));
    } else {
        temp_s1->unk2C = (u32) (temp_s0 + (sp30 * 0x14))->unk2C;
    }
    sp38 = temp_s0->unk1C;
    if ((temp_s1->unk0 & 0x20) != 0) {
        sp38 = 0;
    }
    if ((temp_s1->unk0 & 0x40) != 0) {
        temp_s1->unk2C = 0U;
        sp3C = func_80034DD0(temp_s1->unk4);
    }
    if ((temp_s1->unk0 & 0x80) != 0) {
        temp_s1->unk2C = (u32) ((temp_s1->unk28 << 0x10) & 0x3FF0000);
        sp3C = func_80034DD0(temp_s1->unk4);
    }
    *(void *)0xA4400004 = sp3C;
    *(void *)0xA4400008 = (s32) temp_s0->unk8;
    *(void *)0xA4400014 = (s32) temp_s0->unkC;
    *(void *)0xA4400018 = (s32) temp_s0->unk10;
    *(void *)0xA440001C = (s32) temp_s0->unk14;
    *(void *)0xA4400020 = (s32) temp_s0->unk18;
    *(void *)0xA4400024 = sp38;
    *(void *)0xA4400028 = (s32) (temp_s0 + (sp30 * 0x14))->unk30;
    *(void *)0xA440002C = (s32) (temp_s0 + (sp30 * 0x14))->unk34;
    *(void *)0xA440000C = (s32) (temp_s0 + (sp30 * 0x14))->unk38;
    *(void *)0xA4400030 = (s32) temp_s1->unk20;
    *(void *)0xA4400034 = (u32) temp_s1->unk2C;
    *(void *)0xA4400000 = (s32) temp_s1->unkC;
    *(void *)0x80070A84 = (void *) *(void *)0x80070A80;
    *(void *)0x80070A80 = temp_s1;
    temp_t8 = *(void *)0x80070A80;
    phi_t8 = temp_t8;
    phi_t6 = *(void *)0x80070A84;
loop_13:
    temp_t8_2 = phi_t8 + 0xC;
    temp_t6_2 = phi_t6 + 0xC;
    temp_t6_2->unk-C = (s32) *phi_t8;
    temp_t6_2->unk-8 = (s32) temp_t8_2->unk-8;
    temp_t6_2->unk-4 = (s32) temp_t8_2->unk-4;
    phi_t8 = temp_t8_2;
    phi_t6 = temp_t6_2;
    if (temp_t8_2 != (temp_t8 + 0x30)) {
        goto loop_13;
    }
}

? func_8003ED90(void) {
    return ERROR(unknown instruction: mfc0 $v0, $9);
}
