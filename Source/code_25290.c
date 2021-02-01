void func_80024690(s32 arg0, s32 arg1, s32 arg2) {
    ? sp28;

    func_80036460(arg1, arg2);
    func_80036510(&sp28, 0, 0, arg0, arg1, arg2, 0x8008F288);
    func_80034020(0x8008F288, 0, 1);
}

void func_80024704(void) {
    func_80036620(0x8008F240, 0x80331AB0, 0x68000);
    *(void *)0x8008F250 = func_80036660(0, 0, 0x8008F240, 1, 0x8000);
    *(void *)0x8008F254 = func_80036660(0, 0, 0x8008F240, 1, 0x8000);
    *(void *)0x8008F258 = func_80036660(0, 0, 0x8008F240, 1, 0x40);
    *(void *)0x8008F25C = func_80036660(0, 0, 0x8008F240, 1, 0x40);
    *(void *)0x8008F260 = func_80036660(0, 0, 0x8008F240, 1, 0x8000);
    *(void *)0x8008F264 = func_80036660(0, 0, 0x8008F240, 1, 0x8000);
    *(void *)0x8008F268 = func_80036660(0, 0, 0x8008F240, 1, 0x8000);
    func_80033F10(0x8008F270, 0x8008F2A0, 1);
    func_80033F10(0x8008F288, 0x8008F2A4, 1);
    *(void *)0x8008F698 = (u8)0;
    (void *)0x8008F5F8->unk18 = func_800366C0(0x5622);
    (void *)0x8008F5F8->unk0 = 0x10;
    (void *)0x8008F5F8->unk4 = 0x10;
    (void *)0x8008F5F8->unk8 = 0x40;
    (void *)0x8008F5F8->unk10 = 0x80024A48;
    (void *)0x8008F5F8->unk1C = (u8)1;
    (void *)0x8008F5F8->unk14 = 0x8008F240;
    (void *)0x8008F5F8->unk20 = 0;
    func_800368AC(0x8008F5A8, (void *)0x8008F5F8);
}

s32 func_800248C8(s32 arg0, s32 arg1, ? arg2) {
    s32 sp38;
    void *sp30;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_s1;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v1;
    void *temp_a0;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_v0_2;
    void *phi_s0;
    void *phi_a2;
    s32 phi_a3;

    temp_a3 = arg0;
    temp_s0 = (void *)0x8008F698->unk4;
    phi_s0 = temp_s0;
    phi_a2 = NULL;
    phi_a2 = NULL;
    if (temp_s0 != 0) {
loop_1:
        temp_v0 = phi_s0->unk8;
        if (temp_a3 >= temp_v0) {
            temp_a2 = phi_s0;
            if ((temp_v0 + 0x500) >= (temp_a3 + arg1)) {
                phi_s0->unkC = (s32) *(void *)0x800538F8;
                return func_80034DD0((phi_s0->unk10 + temp_a3) - temp_v0, temp_a2, temp_a3);
            }
            temp_s0_2 = phi_s0->unk0;
            phi_s0 = temp_s0_2;
            phi_a2 = temp_a2;
            phi_a2 = temp_a2;
            if (temp_s0_2 != 0) {
                goto loop_1;
            }
        }
    }
    temp_s0_3 = (void *)0x8008F698->unk8;
    arg0 = temp_a3;
    sp30 = phi_a2;
    temp_a0 = temp_s0_3;
    (void *)0x8008F698->unk8 = (void *) temp_s0_3->unk0;
    func_80036820(temp_a0, phi_a2, temp_a3);
    temp_a2_2 = phi_a2;
    temp_a3_2 = arg0;
    if (temp_a2_2 != 0) {
        arg0 = temp_a3_2;
        func_80036850(temp_s0_3, temp_a2_2, temp_a2_2, temp_a3_2);
        phi_a3 = arg0;
    } else {
        temp_v0_2 = (void *)0x8008F698->unk4;
        if (temp_v0_2 != 0) {
            (void *)0x8008F698->unk4 = temp_s0_3;
            temp_s0_3->unk0 = temp_v0_2;
            temp_s0_3->unk4 = 0;
            temp_v0_2->unk4 = temp_s0_3;
            phi_a3 = temp_a3_2;
        } else {
            (void *)0x8008F698->unk4 = temp_s0_3;
            temp_s0_3->unk0 = NULL;
            temp_s0_3->unk4 = 0;
            phi_a3 = temp_a3_2;
        }
    }
    temp_v0_3 = phi_a3 & 1;
    temp_s1 = temp_s0_3->unk10;
    sp38 = temp_v0_3;
    temp_a3_3 = phi_a3 - temp_v0_3;
    temp_s0_3->unk8 = temp_a3_3;
    temp_s0_3->unkC = (s32) *(void *)0x800538F8;
    temp_v1 = *(void *)0x800538F4;
    temp_t3 = temp_v1 * 0x18;
    *(void *)0x800538F4 = (s32) (temp_v1 + 1);
    func_80036510(temp_t3 + 0x8008F2A8, 0, 0, temp_a3_3, temp_s1, 0x500, 0x8008F270);
    return func_80034DD0(temp_s1) + sp38;
}

? func_80024A48(void *arg0) {
    s32 temp_s1;
    void *temp_s0;
    s32 phi_s1;
    void *phi_s0;

    if ((void *)0x8008F698->unk0 == 0) {
        (void *)0x8008F698->unk8 = 0x8008F6A8;
        (void *)0x8008F698->unk4 = 0;
        phi_s1 = 0x8008F6BC;
        phi_s0 = (void *)0x8008F6A8;
loop_2:
        func_80036850(phi_s1, phi_s0);
        temp_s1 = phi_s1 + 0x14;
        temp_s0 = phi_s0 + 0x14;
        temp_s0->unk-4 = func_80036660(0, 0, 0x8008F240, 1, 0x500);
        phi_s1 = temp_s1;
        phi_s0 = temp_s0;
        if (temp_s1 != 0x8008F928) {
            goto loop_2;
        }
        (void *)0x8008F698->unk0 = (u8)1U;
    }
    *arg0 = (void *)0x8008F698;
    return 0x800248C8;
}

void func_80024B1C(void) {
    void *temp_a1;
    void *temp_s0;
    void *temp_v0;
    void *phi_s0;

    temp_s0 = (void *)0x8008F698->unk4;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        temp_v0 = phi_s0->unk0;
        if ((u32) (phi_s0->unkC + 2) < (u32) *(void *)0x800538F8) {
            if (phi_s0 == (void *)0x8008F698->unk4) {
                (void *)0x8008F698->unk4 = temp_v0;
            }
            func_80036820(phi_s0);
            temp_a1 = (void *)0x8008F698->unk8;
            if (temp_a1 != 0) {
                func_80036850(phi_s0, temp_a1);
            } else {
                (void *)0x8008F698->unk8 = phi_s0;
                phi_s0->unk0 = NULL;
                phi_s0->unk4 = 0;
            }
        }
        phi_s0 = temp_v0;
        if (temp_v0 != 0) {
            goto loop_1;
        }
    }
    *(void *)0x800538F4 = 0;
    *(void *)0x800538F8 = (u32) (*(void *)0x800538F8 + 1);
}

void func_80024BEC(s32 arg0) {
    ? sp1A0;
    ? sp180;
    ? sp168;
    ? sp148;
    ? sp140;
    s32 sp130;
    u32 sp128;
    s32 sp120;
    ? sp70;
    void *sp68;
    s32 sp64;
    s16 sp62;
    s16 sp60;
    s16 sp5E;
    s16 sp5C;
    f32 temp_f0;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_f18;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u32 temp_v0_4;
    void *temp_s0;
    void *temp_s1_2;
    void *temp_s6;
    void *temp_v1_2;
    s32 phi_v0;
    s32 phi_v0_2;
    s16 *phi_s0;
    s16 *phi_s2;
    s32 phi_s1;

    sp128 = 0U;
    sp68 = NULL;
    sp64 = 0;
    temp_f0 = ((f32) *(void *)0x8008F610 * 1.0f) / 60.0f;
    temp_f18 = (s32) temp_f0;
    phi_v0 = temp_f18;
    if ((f32) temp_f18 < temp_f0) {
        phi_v0 = temp_f18 + 1;
    }
    phi_v0_2 = phi_v0;
    if ((phi_v0 & 0xF) != 0) {
        phi_v0_2 = (phi_v0 & -0x10) + 0x10;
    }
    sp130 = phi_v0_2;
    func_80033F10(&sp1A0, &sp180, 8);
    func_80033F10(&sp168, &sp148, 8);
    func_800007D4(arg0, &sp140, &sp1A0);
    sp120 = Add_Four(arg0);
loop_5:
    func_80034020(&sp1A0, &sp68, 1);
    temp_v1 = *sp68;
    if (temp_v1 == 1) {
        func_8002571C();
        if (sp64 != 1) {
            if (sp64 == 2) {
                goto loop_5;
            }
        } else {
            phi_s0 = &sp5C;
            phi_s2 = &sp60;
            phi_s1 = 0;
loop_12:
            *phi_s0 = (s16) (*phi_s0 - ((s32) *phi_s2 / 0x1C));
            if ((s32) *phi_s0 < 0) {
                *phi_s0 = (u16)0;
            }
            func_800368E0(((((((((phi_s1 * 4) - phi_s1) * 4) + phi_s1) * 8) - phi_s1) * 4) + 0x8008F978) + 0x1C, *phi_s0);
            temp_s1 = phi_s1 + 1;
            phi_s0 = phi_s0 + 2;
            phi_s2 = phi_s2 + 2;
            phi_s1 = temp_s1;
            if (temp_s1 != 2) {
                goto loop_12;
            }
            if (sp5C == 0) {
                if (sp5E == 0) {
                    sp64 = sp64 + 1;
                }
            }
        }
        temp_s3 = sp130 - 0x10;
        temp_a3 = *(void *)0x800538FC;
        temp_s2 = (s32) *(void *)0x80053900 % 3;
        temp_s0 = (temp_a3 * 0x58) + &sp70;
        temp_s5 = ((temp_a3 * 4) + 0x80090000)->unk-DB0;
        func_80024B1C(temp_a3);
        temp_s6 = (temp_s2 * 4) + 0x8008F260;
        temp_v0_2 = func_80034DD0(*temp_s6);
        temp_s1_2 = (temp_s2 * 2) + 0x80053904;
        *temp_s1_2 = (s16) (((sp130 - sp128) + 0x60) & 0xFFF0);
        if ((s32) *temp_s1_2 < temp_s3) {
            *temp_s1_2 = (s16) temp_s3;
        }
        temp_v0_3 = func_80036A68(temp_s5, 0x8008F928, temp_v0_2, *temp_s1_2);
        temp_a3_2 = *(void *)0x800538FC;
        temp_s0->unk0 = 0;
        temp_s0->unk50 = &sp168;
        temp_s0->unk54 = 0;
        temp_v1_2 = (temp_a3_2 * 4) + 0x8008F250;
        temp_s0->unk40 = (s32) *temp_v1_2;
        temp_s0->unk44 = (s32) (((s32) (temp_v0_3 - *temp_v1_2) >> 3) * 8);
        temp_s0->unk10 = 2;
        temp_s0->unk14 = 0;
        temp_s0->unk18 = 0x80049EF0;
        temp_s0->unk1C = (s32) (0x80049FC0 - 0x80049EF0);
        temp_s0->unk20 = 0x8004B3F0;
        temp_s0->unk28 = 0x80072BD0;
        temp_s0->unk2C = 0x800;
        temp_s0->unk30 = 0;
        temp_s0->unk34 = 0;
        temp_s0->unk38 = 0;
        temp_s0->unk3C = 0;
        temp_s0->unk48 = 0;
        temp_s0->unk4C = 0;
        func_80034200(sp120, temp_s0, 1, temp_a3_2);
        temp_v0_4 = func_80037000();
        temp_a3_3 = *(void *)0x800538FC;
        *(void *)0x80053900 = (s32) (*(void *)0x80053900 + 1);
        sp128 = temp_v0_4 >> 2;
        *(void *)0x800538FC = (s32) (temp_a3_3 ^ 1);
        func_80034020(&sp168, 0, 1, temp_a3_3);
        func_80037010(*temp_s6, *temp_s1_2 * 4);
        goto loop_5;
    }
    if (temp_v1 != 3) {
        goto loop_5;
    }
    sp64 = sp64 + 1;
    sp60 = func_800370C0(0x8008F994);
    temp_v0 = func_800370C0(0x8008FB30);
    sp5E = temp_v0;
    sp62 = temp_v0;
    sp5C = sp60;
    goto loop_5;
}

void func_80025040(s32 arg0) {
    s32 sp24;
    s32 temp_v0_2;
    void *temp_v0;
    void *temp_v0_3;

    temp_v0 = func_80036660(0, 0, 0x8008F240, 1, 4);
    *(void *)0x800538F0 = temp_v0;
    func_80024690(arg0, temp_v0, 4);
    temp_v0_2 = ((*(void *)0x800538F0)->unk2 * 8) + 4;
    sp24 = temp_v0_2;
    temp_v0_3 = func_80036660(0, 0, 0x8008F240, 1, temp_v0_2);
    *(void *)0x800538F0 = temp_v0_3;
    func_80024690(arg0, temp_v0_3, sp24);
}

void func_800250E8(s32 arg0) {
    func_80033AE0(0x8008D090, 5, 0x80024BEC, arg0, 0x8008F240, 0x32);
    func_80033C30(0x8008D090);
}

void func_8002513C(s32 arg0, s32 arg1, s32 arg2, ? arg3, s32 arg4) {
    ?32 sp10;
    s32 temp_s0;
    s32 temp_s0_2;
    void *temp_v0;

    sp10 = 0x8000;
    (void *)0x8008F978->unk190 = func_80036660(0, 0, 0x8008F240, 1);
    sp10 = 0x8000;
    (void *)0x8008F978->unk32C = func_80036660(0, 0, 0x8008F240, 1);
    (void *)0x8008F978->unk0 = 0x40;
    (void *)0x8008F978->unk4 = 0x40;
    (void *)0x8008F978->unk8 = (u8)0x10;
    (void *)0x8008F978->unkC = 0x8008F240;
    (void *)0x8008F978->unk10 = 0;
    (void *)0x8008F978->unk14 = 0;
    (void *)0x8008F978->unk18 = 0;
    (void *)0x8008F978->unk9 = (u8)0;
    func_80038190(0x8008F994, (void *)0x8008F978);
    (void *)0x8008F978->unk19C = 0x40;
    (void *)0x8008F978->unk1A0 = 0x40;
    (void *)0x8008F978->unk1A4 = (u8)0x10;
    (void *)0x8008F978->unk1A8 = 0x8008F240;
    (void *)0x8008F978->unk1AC = 0;
    (void *)0x8008F978->unk1B0 = 0;
    (void *)0x8008F978->unk1B4 = 0;
    (void *)0x8008F978->unk1A5 = (u8)0;
    func_80038190(0x8008FB30, 0x8008FB14);
    func_80025040(arg2);
    func_80038508(*(void *)0x800538F0, arg2);
    temp_s0 = arg1 - arg0;
    sp10 = temp_s0;
    temp_v0 = func_80036660(0, 0, 0x8008F240, 1);
    *(void *)0x800538E8 = temp_v0;
    func_80024690(arg0, temp_v0, temp_s0);
    func_80038404(*(void *)0x800538E8, arg4);
    temp_s0_2 = (*(void *)0x800538E8)->unk4;
    func_80038550(0x8008F994, temp_s0_2);
    func_80038550(0x8008FB30, temp_s0_2);
}

void *func_800252D8(s32 arg0, s32 arg1) {
    void *sp1C;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_a2;

    temp_v0_2 = *(void *)0x800538F0 + (arg1 * 8);
    temp_a2 = temp_v0_2->unk8;
    temp_a3 = temp_v0_2->unk4;
    phi_a2 = temp_a2;
    if ((temp_a2 & 1) != 0) {
        phi_a2 = temp_a2 + 1;
    }
    temp_v0 = (arg0 * 0x19C) + 0x8008F978;
    sp1C = temp_v0;
    func_80024690(temp_a3, temp_v0->unk190, phi_a2, temp_a3);
    temp_v0->unk194 = arg1;
    return temp_v0;
}

? func_80025364(s32 arg0) {
    void *sp24;
    void *sp20;
    void *sp1C;
    void *temp_a0;
    void *temp_a2;
    void *temp_v0;

    temp_v0 = (arg0 * 0x19C) + 0x8008F978;
    temp_a2 = temp_v0 + 0x98;
    if (temp_v0->unk48 != 0) {
        return 0;
    }
    sp24 = temp_v0;
    sp20 = temp_a2;
    func_80038AEC(temp_a2, temp_v0->unk190, temp_a2);
    temp_a0 = temp_v0 + 0x1C;
    sp1C = temp_a0;
    func_80039050(temp_a0, sp20);
    func_80039090(temp_a0);
    return 1;
}

void func_800253F0(s32 arg0) {
    func_800390C0(((arg0 * 0x19C) + 0x1C) + 0x8008F978, arg0);
}

void func_8002543C(s32 arg0) {
    func_800390F0(((arg0 * 0x19C) + 0x1C) + 0x8008F978, arg0);
}

void func_80025488(s32 arg0, s32 arg1, ? arg2) {
    s32 sp10;
    s32 temp_s0;
    u32 temp_s2;
    void *temp_t1;
    void *temp_t9;
    void *temp_v0;
    s32 phi_s1;
    s32 phi_s0;
    u32 phi_s2;

    temp_s0 = arg1 - arg0;
    sp10 = temp_s0;
    temp_v0 = func_80036660(0, 0, 0x8008F240, 1);
    *(void *)0x800538EC = temp_v0;
    func_80024690(arg0, temp_v0, temp_s0);
    (void *)0x8008F678->unk0 = 0x50;
    (void *)0x8008F678->unk4 = 0x20;
    (void *)0x8008F678->unk8 = 0x8008F240;
    func_800396D4(0x8008F620, (void *)0x8008F678);
    func_80038404(*(void *)0x800538EC, arg2);
    temp_t9 = (*(void *)0x800538EC)->unk4;
    *(void *)0x8008F688 = temp_t9;
    temp_t1 = temp_t9->unkC;
    *(void *)0x8008F684 = temp_t1;
    sp10 = temp_t1->unkE * 2;
    *(void *)0x8008F68C = func_80036660(0, 0, 0x8008F240, 1);
    *(void *)0x8008F690 = 0;
    if ((*(void *)0x8008F684)->unkE != 0) {
        phi_s1 = 0;
        phi_s0 = 0;
        phi_s2 = 0U;
loop_2:
        *(*(void *)0x8008F68C + phi_s0) = func_80039810(0x8008F620, (*(void *)0x8008F684 + phi_s1)->unk10);
        if (-1 != *(*(void *)0x8008F68C + phi_s0)) {
            *(void *)0x8008F690 = (s32) (*(void *)0x8008F690 + 1);
        }
        temp_s2 = phi_s2 + 1;
        phi_s1 = phi_s1 + 4;
        phi_s0 = phi_s0 + 2;
        phi_s2 = temp_s2;
        if (temp_s2 < (u32) (*(void *)0x8008F684)->unkE) {
            goto loop_2;
        }
    }
}

void func_80025634(s32 arg0) {
    func_800398B0(0x8008F620, *(*(void *)0x8008F68C + (arg0 * 2)), arg0);
    if (func_800398D0(0x8008F620) == 0) {
        func_800398F0(0x8008F620);
    }
}

void func_8002568C(s32 arg0) {
    func_800398B0(0x8008F620, *(*(void *)0x8008F68C + (arg0 * 2)), arg0);
    func_80039960(0x8008F620);
}

void func_800256D4(s32 arg0) {
    func_800398B0(0x8008F620, *(*(void *)0x8008F68C + (arg0 * 2)), arg0);
    func_800398D0(0x8008F620);
}

Failed to decompile function func_8002571C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_800258F8(s32 arg0) {
    if (arg0 >= 0) {
        if (arg0 < 0x47) {
            *(void *)0x8008F92C = (s32) ((arg0 * 4) + 0x80050000)->unk39E4;
            return;
        }
    }
    *(void *)0x8008F92C = (s32) *(void *)0x800539E4;
}

? func_80025938(void) {
    if (*(void *)0x8005398C != 0) {
block_2:
        return 1;
    }
    if (*(void *)0x80053990 != 0) {
        goto block_2;
    }
    func_80025984();
    return 0;
}

void func_80025984(s32 arg0) {
    s32 sp1C;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 phi_a2;

    temp_a2 = arg0;
    *(void *)0x8005397C = temp_a2;
    if (temp_a2 == 1) {
        if (*(void *)0x80053980 != 0xFF) {
            if (*(void *)0x8008F9C0 == 0) {
block_6:
                *(void *)0x80053978 = 1;
                func_800368E0(0x8008FB30, 0x7FFF);
                *(void *)0x80053988 = 0x7FFF;
                func_80025364(1);
                *(void *)0x8005397C = 0xFF;
                return;
            }
            func_800390C0(0x8008F994, temp_a2);
            return;
        }
        if (func_800263A8(0, temp_a2) == 0) {
            goto block_6;
        }
        return;
    }
    *(void *)0x80053978 = 0;
    arg0 = temp_a2;
    func_800390C0(0x8008FB30, temp_a2);
    temp_a2_2 = arg0;
    if (temp_a2_2 >= 0x50) {
        temp_v0 = temp_a2_2 - 0x50;
        sp1C = temp_v0;
        if (temp_v0 == *(void *)0x80053980) {
block_10:
            func_80025364(0);
            func_800368E0(0x8008F994, 0);
            *(void *)0x80053984 = 0;
            *(void *)0x80053990 = 0x100;
            *(void *)0x80053980 = sp1C;
            *(void *)0x8005397C = 0xFF;
            return;
        }
        if (func_800263A8(temp_v0, temp_a2_2) == 0) {
            goto block_10;
        }
    } else {
        temp_a0 = temp_a2_2;
        phi_a2 = temp_a2_2;
        if ((temp_a2_2 == *(void *)0x80053980) || (arg0 = temp_a2_2, phi_a2 = arg0, (func_800263A8(temp_a0, temp_a2_2) == 0))) {
            arg0 = phi_a2;
            func_80025364(0, phi_a2);
            func_800368E0(0x8008F994, 0x7FFF);
            *(void *)0x80053984 = 0x7FFF;
            *(void *)0x80053980 = arg0;
            *(void *)0x8005397C = 0xFF;
        } else {

        }
    }
}

s32 func_80025B3C(s32 arg0) {
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = *(void *)0x80053970;
    temp_v1 = temp_v0 * 4;
    (temp_v1 + 0x80050000)->unk390C = arg0;
    (temp_v1 + 0x80050000)->unk392C = 0;
    temp_v0 = temp_v0 + 1;
    (temp_v1 + 0x80050000)->unk394C = 0x40;
    *(void *)0x80053970 = (s32) (temp_v0 & 7);
    *(void *)0x8008FCB0 = temp_v0;
    return temp_v0;
}

s32 func_80025B8C(s32 arg0, ?32 arg1, ?32 arg2) {
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = *(void *)0x80053970;
    temp_v1 = temp_v0 * 4;
    (temp_v1 + 0x80050000)->unk390C = arg0;
    (temp_v1 + 0x80050000)->unk392C = arg1;
    temp_v0 = temp_v0 + 1;
    (temp_v1 + 0x80050000)->unk394C = arg2;
    *(void *)0x80053970 = (s32) (temp_v0 & 7);
    *(void *)0x8008FCB4 = temp_v0;
    return temp_v0;
}

s32 func_80025BD8(void) {
    s32 sp28;
    s32 sp24;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s0;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;
    void *temp_a3;
    void *temp_v0_2;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_a0;
    s32 phi_return;

    temp_v1 = *(void *)0x8005396C;
    temp_v0 = temp_v1 * 4;
    temp_a1 = temp_v0 + 0x8005390C;
    temp_a2 = *temp_a1;
    if (0xFF != temp_a2) {
        temp_t8 = (temp_v1 + 1) & 7;
        temp_s0 = temp_a2;
        *temp_a1 = 0xFF;
        *(void *)0x8005396C = temp_t8;
        *(void *)0x8008F934 = (s32) (temp_t8 & 3);
        sp24 = temp_v0;
        func_800258F8(temp_a2, temp_a1, temp_a2, (void *)0x8005396C);
        if (**(void *)0x8008F92C != 0) {
            *(void *)0x8008F934 = 4;
            temp_t6 = 4 * 4;
            temp_a1_2 = *(void *)0x800539A4;
            (temp_t6 + 0x80050000)->unk39BC = (s32) (temp_v0 + 0x80050000)->unk392C;
            sp28 = temp_a1_2;
            (temp_t6 + 0x80050000)->unk39D0 = (s32) (temp_v0 + 0x80050000)->unk394C;
            phi_return = temp_v0;
            if (temp_s0 != temp_a1_2) {
                phi_return = temp_v0;
                if (0xFF != temp_a1_2) {
                    func_8002568C(temp_a1_2, temp_a1_2, 0xFF);
                    *(void *)0x800539A4 = temp_s0;
                    phi_return = func_80025634(temp_s0);
                }
            }
            if (0xFF == *(void *)0x800539A4) {
                *(void *)0x800539A4 = temp_s0;
                phi_return = func_80025634(temp_s0, *(void *)0x800539A4, 0xFF);
            }
        } else {
            temp_t9 = *(void *)0x8008F934 * 4;
            (temp_t9 + 0x80050000)->unk39BC = (s32) (temp_v0 + 0x80050000)->unk392C;
            (temp_t9 + 0x80050000)->unk39D0 = (s32) (temp_v0 + 0x80050000)->unk394C;
            phi_a0 = temp_t9;
            if (*(temp_t9 + 0x800539A8) != 0) {
                temp_a2_2 = (temp_t9 + 0x80050000)->unk3994;
                phi_a0 = temp_t9;
                if (temp_s0 != temp_a2_2) {
                    func_8002568C(temp_a2_2, 0x800539A8, temp_a2_2);
                    phi_a0 = *(void *)0x8008F934 * 4;
                }
            }
            temp_a3 = phi_a0 + (void *)0x80053994;
            phi_v0 = (void *)0x80053994;
            phi_v1 = 0;
loop_11:
            if (temp_s0 == *phi_v0) {
                *(0x800539A8 + phi_v1) = 0;
                *phi_v0 = 0xFF;
            }
            temp_v0_2 = phi_v0 + 4;
            phi_v0 = temp_v0_2;
            phi_v1 = phi_v1 + 4;
            if (temp_v0_2 != 0x800539A4) {
                goto loop_11;
            }
            *temp_a3 = temp_s0;
            phi_return = func_80025634(temp_s0, 0x800539A8, 0xFF, temp_a3);
        }
        if (sp28 != temp_s0) {
            *(void *)0x8008F92C = (void *) (*(void *)0x8008F92C + 4);
            return func_80025E0C();
        }
    } else {
        *(void *)0x8005396C = (s32) *(void *)0x80053970;
        phi_return = temp_v0;
    }
    return phi_return;
}

Failed to decompile function func_80025E0C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_80026214(void) {
    s32 temp_t0;
    s32 temp_v1;
    void *temp_v0;

    temp_v1 = *(void *)0x80053978;
    temp_v0 = (temp_v1 * 4) + 0x80053984;
    temp_t0 = *temp_v0 - *(void *)0x8005398C;
    *temp_v0 = temp_t0;
    if (temp_t0 < 0) {
block_2:
        *temp_v0 = (s32) *(void *)0x80053974;
        func_800390C0(((temp_v1 * 0x19C) + 0x1C) + 0x8008F978, temp_t0);
        *(void *)0x8005398C = 0;
        return;
    }
    if (*(void *)0x80053974 < temp_t0) {
        goto block_2;
    }
    func_800368E0(((temp_v1 * 0x19C) + 0x1C) + 0x8008F978, (s32) (temp_t0 << 0x10) >> 0x10, temp_t0);
}

void *func_800262F4(void) {
    s32 temp_a2;
    s32 temp_t0;
    void *temp_v0;

    temp_a2 = *(void *)0x80053978;
    temp_v0 = (temp_a2 * 4) + 0x80053984;
    temp_t0 = *temp_v0 + *(void *)0x80053990;
    *temp_v0 = temp_t0;
    if (temp_t0 < 0) {
block_2:
        *(void *)0x80053990 = 0;
        *temp_v0 = (s32) *(void *)0x80053974;
        return temp_v0;
    }
    if (*(void *)0x80053974 < temp_t0) {
        goto block_2;
    }
    return func_800368E0(((temp_a2 * 0x19C) + 0x1C) + 0x8008F978, (s32) (temp_t0 << 0x10) >> 0x10, temp_a2);
}

? func_800263A8(s32 arg0) {
    if (((*(void *)0x80053978 * 0x19C) + 0x80090000)->unk-640 == 0) {
        func_800252D8(0, arg0);
        func_800252D8(1, 1);
        return 0;
    }
    func_800390C0(0x8008F994, arg0);
    func_800390C0(0x8008FB30);
    return 1;
}

? func_80026434(u32 arg0) {
    if (*(void *)0x8005398C != 0) {
        return 1;
    }
    if (*(void *)0x80053990 != 0) {
        return 1;
    }
    *(void *)0x8005398C = (u32) (0x8000U / arg0);
    return 0;
}

void func_80026488(void) {
    s32 temp_a0;
    void *temp_s0;
    void *temp_s1;
    void *phi_s0;
    void *phi_s1;

    phi_s0 = (void *)0x80053994;
    phi_s1 = (void *)0x800539A8;
loop_1:
    temp_a0 = *phi_s0;
    if (temp_a0 != 0xFF) {
        func_8002568C(temp_a0);
    }
    temp_s1 = phi_s1 + 4;
    temp_s0 = phi_s0 + 4;
    temp_s1->unk-4 = 0;
    temp_s0->unk-4 = 0xFF;
    phi_s0 = temp_s0;
    phi_s1 = temp_s1;
    if (temp_s1 != 0x800539BC) {
        goto loop_1;
    }
}

void func_8002650C(void) {
    s32 temp_a0;

    temp_a0 = *(void *)0x800539A4;
    if (temp_a0 != 0xFF) {
        func_8002568C(temp_a0);
    }
    *(void *)0x800539B8 = 0;
    *(void *)0x800539A4 = 0xFF;
}

? func_80026554(s32 arg0) {
    s32 temp_v1;

    if (*(void *)0x8005398C != 0) {
block_2:
        return 1;
    }
    if (*(void *)0x80053990 != 0) {
        goto block_2;
    }
    (void *)0x80053974->unk0 = (s32) ((arg0 << 7) + 0x7F);
    func_800368E0(0x8008F994, (void *)0x80053974->unk2, arg0);
    func_800368E0(0x8008FB30, *(void *)0x80053976);
    temp_v1 = (void *)0x80053974->unk0;
    (void *)0x80053984->unk0 = temp_v1;
    (void *)0x80053984->unk4 = temp_v1;
    return 0;
}
