void func_80000530(void *arg0, u8 arg1) {
    void *sp2C;
    void *sp28;
    void *sp24;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;

    arg0->unk66C = 0;
    arg0->unk670 = 0;
    arg0->unk674 = 0;
    arg0->unk668 = 0;
    arg0->unk678 = 1;
    arg0->unk0 = (u16)1;
    arg0->unk2 = (u16)3;
    temp_a0 = arg0 + 0x74;
    sp2C = temp_a0;
    func_80033F10(temp_a0, arg0 + 0x8C, 8);
    temp_a0_2 = arg0 + 0xAC;
    sp28 = temp_a0_2;
    func_80033F10(temp_a0_2, arg0 + 0xC4, 8);
    temp_a0_3 = arg0 + 0xE4;
    sp24 = temp_a0_3;
    func_80033F10(temp_a0_3, arg0 + 0xFC, 8);
    func_80033F10(arg0 + 0x3C, arg0 + 0x54, 8);
    func_80033F10(arg0 + 4, arg0 + 0x1C, 8);
    func_80033F10(arg0 + 0x11C, arg0 + 0x134, 8);
    func_80033F40(temp_a0, 0x29A, arg1);
    func_80033FB0(4, sp28, 0x29B);
    func_80033FB0(9, sp24, 0x29C);
    func_80033FB0(0xE, sp2C, 0x29D);
}

void func_8000062C(s32 arg0) {
    s32 sp2C;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;

    temp_a0 = arg0 + 0x158;
    sp2C = temp_a0;
    func_80033AE0(temp_a0, 0x13, 0x80000710, arg0, 0x800792D0, 0x78);
    func_80033C30(temp_a0);
    temp_a0_2 = arg0 + 0x308;
    sp2C = temp_a0_2;
    func_80033AE0(temp_a0_2, 0x12, 0x80000900, arg0, 0x8007A2D0, 0x6E);
    func_80033C30(temp_a0_2);
    temp_a0_3 = arg0 + 0x4B8;
    sp2C = temp_a0_3;
    func_80033AE0(temp_a0_3, 0x11, 0x80000A80, arg0, 0x8007B2D0, 0x64);
    func_80033C30(temp_a0_3);
}

s32 func_800006F8(s32 arg0) {
    return arg0 + 4;
}

s32 func_80000704(s32 arg0) {
    return arg0 + 0x3C;
}

void func_80000710(s32 arg0) {
    s32 sp3C;

    sp3C = 0;
loop_1:
    func_80034020(arg0 + 0x74, &sp3C, 1);
    *(void *)0x8007B2D0 = (u16) (*(void *)0x8007B2D0 + 1);
    if (sp3C == 0x29A) {
        func_800008B0(arg0, arg0);
        goto loop_1;
    }
    if (sp3C != 0x29D) {
        goto loop_1;
    }
    func_800008B0(arg0, arg0 + 2);
    goto loop_1;
}

void func_800007D4(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a0;

    temp_a0 = func_80034160(1);
    arg1->unk4 = arg2;
    arg1->unk0 = (void *) arg0->unk668;
    arg0->unk668 = arg1;
    func_80034160(temp_a0, arg1);
}

void func_80000824(void *arg0, void *arg1) {
    void *sp1C;
    void *sp18;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_a2;
    void *phi_a2_2;

    temp_v1 = arg0->unk668;
    sp18 = NULL;
    sp1C = temp_v1;
    phi_v1 = temp_v1;
    phi_a2 = sp18;
    phi_a2_2 = sp18;
    if (temp_v1 != 0) {
loop_1:
        if (phi_v1 == arg1) {
            if (phi_a2 != 0) {
                *phi_a2 = (s32) *arg1;
                phi_a2_2 = phi_a2;
            } else {
                arg0->unk668 = (s32) *arg1;
                phi_a2_2 = phi_a2;
            }
        } else {
            temp_a2 = phi_v1;
            temp_v1_2 = *phi_v1;
            phi_v1 = temp_v1_2;
            phi_a2 = temp_a2;
            phi_a2_2 = temp_a2;
            if (temp_v1_2 != 0) {
                goto loop_1;
            }
        }
    }
    func_80034160(func_80034160(1), arg1, phi_a2_2);
}

void func_800008B0(void *arg0, ? arg1) {
    void *temp_s0;
    void *temp_s0_2;
    void *phi_s0;

    temp_s0 = arg0->unk668;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        func_80034200(phi_s0->unk4, arg1, 0);
        temp_s0_2 = phi_s0->unk0;
        phi_s0 = temp_s0_2;
        if (temp_s0_2 != 0) {
            goto loop_1;
        }
    }
}

void func_80000900(void *arg0) {
    ?32 sp54;
    void *sp50;
    s32 temp_s0_2;
    s32 temp_s3;
    void *temp_s0;
    s32 phi_s1;

    sp54 = 0;
    sp50 = NULL;
loop_1:
    func_80034020(arg0 + 4, &sp50, 1);
    func_80034350();
    temp_s3 = arg0->unk66C;
    if (temp_s3 != 0) {
        func_80034380();
        func_80034020(arg0 + 0xAC, &sp54, 1);
        phi_s1 = 2;
        if (func_800343A0(temp_s3 + 0x10) != 0) {
            phi_s1 = 1;
        }
    }
    temp_s0 = arg0 + 0xAC;
    arg0->unk670 = sp50;
    func_8003452C(sp50 + 0x10);
    func_80034694(sp50 + 0x10);
    func_80034020(temp_s0, &sp54, 1);
    arg0->unk670 = NULL;
    if (arg0->unk674 != 0) {
        func_80034200(arg0 + 0x11C, &sp54, 1);
    }
    if (phi_s1 == 1) {
        temp_s0_2 = temp_s3 + 0x10;
        func_8003452C(temp_s0_2);
        func_80034694(temp_s0_2);
    } else {
        if (phi_s1 == 2) {
            func_80034200(temp_s0, &sp54, 1);
        }
    }
    func_80034200(sp50->unk50, sp50->unk54, 1);
    goto loop_1;
}

void func_80000A80(void *arg0) {
    ?32 sp44;
    void *sp40;

    sp44 = 0;
loop_1:
    func_80034020(arg0 + 0x3C, &sp40, 1);
    func_80000BB4(arg0, sp40);
    if (arg0->unk670 != 0) {
        arg0->unk674 = sp40;
        func_80034020(arg0 + 0x11C, &sp44, 1);
        arg0->unk674 = NULL;
    }
    arg0->unk66C = sp40;
    func_8003452C(sp40 + 0x10);
    func_80034694(sp40 + 0x10);
    func_80034020(arg0 + 0xAC, &sp44, 1);
    arg0->unk66C = NULL;
    func_80034020(arg0 + 0xE4, &sp44, 1);
    if (arg0->unk678 != 0) {
        func_800346E0(0);
        arg0->unk678 = 0;
    }
    if ((sp40->unk8 & 0x40) != 0) {
        func_80034750(sp40->unkC);
    }
    func_80034200(sp40->unk50, sp40->unk54, 1);
    goto loop_1;
}

void func_80000BB4(s32 arg0, void *arg1) {
    ?32 sp44;
    ? sp3C;
    s32 temp_s2;
    s32 temp_s4;

    sp44 = 0;
    temp_s4 = arg1->unkC;
    temp_s2 = arg0 + 0x11C;
    if (func_800347A0() == temp_s4) {
loop_2:
        func_800007D4(arg0, &sp3C, temp_s2);
        func_80034020(temp_s2, &sp44, 1);
        func_80000824(arg0, &sp3C);
        if (func_800347A0() == temp_s4) {
            goto loop_2;
        }
    }
}

Failed to decompile function func_80000C50:

Found jr instruction, but the corresponding jump table is not provided.

Please pass a --rodata flag to mips_to_c, pointing to the right .s file.

(You might need to pass --goto and --no-andor flags as well,
to get correct control flow for non-jtbl switch jumps.)

?32 setupNewGame(void) {
    *(void *)hudState = 0x160;
    *(void *)gameState = (u16)4;
    *(void *)nextMap = -1;
    *(void *)0x80084EF8 = -1;
    *(void *)0x80084F04 = -1;
    *(void *)0x80084F14 = (u16)0xFFFF;
    *(void *)0x80086E44 = 0.0f;
    *(void *)0x800859E2 = (u16)0;
    *(void *)currentMap = 0xD;
    *(void *)currentSubmap = 0x11;
    *(void *)LastExitID = -1;
    *(void *)0x8007BA60 = (u16)0xD;
    *(void *)0x8007BA62 = (u16)0x11;
    *(void *)0x8007BA64 = (u16)0;
    *(void *)0x8007BA40 = -26.0f;
    *(void *)0x8007BA44 = 0.0f;
    *(void *)0x8007BA48 = (f32) *(void *)0x80070F04;
    *(void *)0x8007BA4C = 0x108;
    *(void *)0x8007BABE = (u16)0;
    *(void *)cutsceneToStart = (u16)1;
    *(void *)0x8007B2F0 = (u16)0;
    *(void *)0x8007B344 = (u8)0;
    *(void *)0x8007B345 = (u8)0;
    return -1;
}

void *func_80000FE8(void) {
    s32 temp_a0;
    void *temp_v0;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0;

    FillCacheWithDLData(0x73A90, 0x80096850, 0x77560 - 0x73A90);
    *(void *)0x8007B350 = 0x80096850;
    FillCacheWithDLData(0xD4B3C0, 0x800C0000, 0xD77380 - 0xD4B3C0);
    FillCacheWithDLData(0xD77380, 0x80399AB0, 0xD884F0 - 0xD77380);
    (void *)0x80308FFF->unk5149 = (u16)2;
    (void *)0x80308FFF->unk514D = 0x803B5000;
    func_8000111C(0x80301000);
    (void *)0x80319000->unk2298 = (u16)2;
    (void *)0x80319000->unk229C = 0x803DA800;
    func_8000111C(0x8030E150);
    *(void *)0x8007B2F4 = 0;
    phi_v0 = (void *)0x803DA800;
    phi_v1 = (void *)0x803B5000;
    phi_a0 = 0x12C00;
loop_1:
    phi_v0->unk0 = (u16)0;
    phi_v1->unk0 = (u16)0;
    phi_v0->unk2 = (u16)0;
    phi_v1->unk2 = (u16)0;
    phi_v0->unk4 = (u16)0;
    phi_v1->unk4 = (u16)0;
    phi_v0->unk6 = (u16)0;
    temp_a0 = phi_a0 - 4;
    phi_v1->unk6 = (u16)0;
    temp_v0 = phi_v0 + 8;
    phi_v0 = temp_v0;
    phi_v1 = phi_v1 + 8;
    phi_a0 = temp_a0;
    if (temp_a0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_8000111C(void *arg0) {
    arg0->unk10 = 1;
    arg0->unk20 = 0x80049FC0;
    arg0->unk1C = (s32) (0x80049FC0 - 0x80049EF0);
    arg0->unk28 = 0x800723D0;
    arg0->unk2C = 0x800;
    arg0->unk14 = 0;
    arg0->unk18 = 0x80049EF0;
    arg0->unk30 = 0x80300000;
    arg0->unk34 = 0x400;
    arg0->unk38 = 0x8031B2A0;
    arg0->unk3C = 0x803232A0;
    arg0->unk48 = 0x80300400;
    arg0->unk4C = 0xC00;
    arg0->unk0 = 0;
    arg0->unk8 = 0x40;
    arg0->unk50 = 0x8007B9E8;
    arg0->unk54 = (void *) (arg0 + 0xD148);
    arg0->unkC = (s32) arg0->unkD14C;
    return 0x80049EF0;
}

s32 func_800011DC(void *arg0) {
    void *sp74;
    void *sp70;
    void *sp68;
    void *sp5C;
    void *sp4C;
    void *sp24;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t8;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    u16 temp_v0;
    void *temp_a0;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_11;
    void *temp_v1_12;
    void *temp_v1_13;
    void *temp_v1_14;
    void *temp_v1_15;
    void *temp_v1_16;
    void *temp_v1_17;
    void *temp_v1_18;
    void *temp_v1_19;
    void *temp_v1_20;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    s32 phi_v0;
    s16 phi_t8;

    *(void *)0x8007B2FC = (void *) (arg0 + 0x8148);
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk4 = 0;
    temp_v1->unk0 = 0xBC000006;
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk0 = 0xBC000406;
    sp74 = temp_v1_2;
    sp74->unk4 = func_80034DD0(*(void *)0x8007B350);
    temp_v1_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_3 + 8);
    temp_v1_3->unk0 = 0xBC000806;
    sp70 = temp_v1_3;
    temp_a0 = arg0 + 0x58;
    sp24 = temp_a0;
    sp70->unk4 = func_80034DD0(temp_a0, sp74);
    temp_v1_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_4 + 8);
    temp_v1_4->unk4 = 0x1000010;
    temp_v1_4->unk0 = 0x6000000;
    temp_v1_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_5 + 8);
    temp_v1_5->unk0 = 0xFE000000;
    sp68 = temp_v1_5;
    sp68->unk4 = func_80034DD0(0x802DA800, sp70);
    temp_v1_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_6 + 8);
    temp_v1_6->unk4 = 0;
    temp_v1_6->unk0 = 0xE7000000;
    temp_v1_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_7 + 8);
    temp_v1_7->unk4 = 0x300000;
    temp_v1_7->unk0 = 0xBA001402;
    temp_v1_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_8 + 8);
    temp_v1_8->unk0 = 0xFF10013F;
    sp5C = temp_v1_8;
    sp5C->unk4 = func_80034DD0(0x802DA800, sp68);
    temp_v1_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_9 + 8);
    temp_v1_9->unk4 = 0xFFFCFFFC;
    temp_v1_9->unk0 = 0xF7000000;
    temp_v1_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_10 + 8);
    temp_v1_10->unk0 = 0xF64DC39C;
    temp_v1_10->unk4 = 0x20020;
    temp_v1_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_11 + 8);
    temp_v1_11->unk4 = 0;
    temp_v1_11->unk0 = 0xE7000000;
    temp_v1_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_12 + 8);
    temp_v1_12->unk0 = 0xFF10013F;
    sp4C = temp_v1_12;
    sp4C->unk4 = func_80034DD0(arg0->unkD14C);
    if (1 == *(void *)0x8007B2E0) {
        temp_v1_13 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_13 + 8);
        temp_v1_13->unk0 = 0xF7000000;
        temp_t5 = ((((*(void *)0x8007B300 << 8) & 0xF800) | ((*(void *)0x8007B304 * 8) & 0x7C0)) | (((u32) *(void *)0x8007B308 >> 2) & 0x3E)) | 1;
        temp_v1_13->unk4 = (s32) ((temp_t5 << 0x10) | temp_t5);
        temp_v1_14 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_14 + 8);
        temp_v1_14->unk4 = 0x20020;
        temp_v1_14->unk0 = 0xF64DC39C;
    } else {
        temp_v1_15 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_15 + 8);
        temp_v1_15->unk4 = 0x10001;
        temp_v1_15->unk0 = 0xF7000000;
        temp_v1_16 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_16 + 8);
        temp_v1_16->unk4 = 0x20020;
        temp_v1_16->unk0 = 0xF64DC39C;
    }
    temp_v1_17 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_17 + 8);
    temp_v1_17->unk4 = 0;
    temp_v1_17->unk0 = 0xE7000000;
    temp_v1_18 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_18 + 8);
    temp_v1_18->unk4 = 0x100000;
    temp_v1_18->unk0 = 0xBA001402;
    temp_v0 = *(void *)0x8007B2E0;
    if (1 == temp_v0) {
        func_80012BE0(sp24, (void *)0x8007B2E0, 1);
        func_80010B58();
        if ((*(void *)0x80084F12 & 4) != 0) {
            func_800111F8(*(void *)0x8007B340);
            func_8000D9BC(sp24);
        }
        func_800111F8(*(void *)0x8007B340);
        func_8000C4C4(sp24);
        func_80003870(sp24);
        func_80007F18(sp24);
        func_80011D28(sp24);
        func_8000CE8C(sp24);
        func_80008CF4(sp24);
        func_8000B618(sp24);
        func_8001249C();
        func_800111F8(*(void *)0x8007BC08);
        func_800118D4(sp24);
        func_8001B19C(sp24);
        func_80018638(sp24);
        func_800228F8(sp24);
        temp_v0_2 = *(void *)0x8007B2E4;
        if ((temp_v0_2 & 2) != 0) {
            func_8002EAA0();
block_11:
            phi_v0 = (void *)0x80080000->unk-4D1C;
        } else {
            phi_v0 = temp_v0_2;
            if ((temp_v0_2 & 0x4000) == 0) {
                phi_v0 = temp_v0_2;
                if (*(void *)0x8007B2E8 != 4) {
                    func_8001E25C(sp24);
                    goto block_11;
                }
            }
        }
        if ((phi_v0 & 1) != 0) {
            func_80021524();
        }
    } else {
        if (temp_v0 == 2) {
            func_80026A7C(sp24, (void *)0x8007B2E0, 1);
        } else {
            if (temp_v0 == 3) {
                temp_v0_3 = func_8010004C((void *)0x8007B2E0, 1);
                if (temp_v0_3 != 0) {
                    if (temp_v0_3 != 1) {

                    } else {
                        *(void *)0x8007B2E0 = (u16)4U;
                    }
                } else {
                    temp_t5_2 = *(void *)0x8007B344 & 0xF0;
                    if (temp_t5_2 != 0x10) {
                        if (temp_t5_2 != 0x20) {
                            if (temp_t5_2 != 0x30) {
                                phi_t8 = (u16)1;
block_38:
                                *(void *)0x8007B2E0 = phi_t8;
                            } else {
                                func_8002B510(8, (void *)0x8007B2E0, 1);
                            }
                        } else {
                            func_8002B510(0, (void *)0x8007B2E0, 1);
                        }
                    } else {
                        *(void *)0x8007B2E0 = (u16)1U;
                    }
                }
            } else {
                if (temp_v0 == 4) {
                    temp_v0_4 = func_8010009C((void *)0x8007B2E0, 1);
                    if (temp_v0_4 != 0) {
                        if (temp_v0_4 != 1) {
                            *(void *)0x8006AC60 = (u8)0;
                        } else {
                            *(void *)0x8006AC60 = (u8)1;
                            *(void *)0x8007B2E0 = (u16)3U;
                        }
                    } else {
                        *(void *)0x8006AC60 = (u8)0;
                        *(void *)0x8007B2E0 = (u16)3U;
                    }
                } else {
                    if (temp_v0 == 5) {
                        if (func_8010008C((void *)0x8007B2E0, 1) == 0) {
                            phi_t8 = (u16)3;
                            goto block_38;
                        }
                    }
                }
            }
        }
    }
    temp_v1_19 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_19 + 8);
    temp_v1_19->unk4 = 0;
    temp_v1_19->unk0 = 0xE9000000;
    temp_v1_20 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_20 + 8);
    temp_v1_20->unk4 = 0;
    temp_v1_20->unk0 = 0xB8000000;
    func_80034E50(0x2000000, 0xD0F0);
    temp_t8 = (s32) ((*(void *)0x8007B2FC - arg0) + 0xFFFF7EB8) >> 3;
    if (*(void *)0x8007B34C < temp_t8) {
        *(void *)0x8007B34C = temp_t8;
    }
    *(void *)0x8004C210 = temp_t8;
    arg0->unk40 = (void *) (sp24 + 0x80F0);
    arg0->unk44 = (s32) (((s32) ((*(void *)0x8007B2FC - sp24) + 0xFFFF7F10) >> 3) * 8);
    return temp_t8;
}

void func_80001800(void) {
    void *sp5C;
    s32 sp58;
    s32 temp_a0;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_9;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_8;
    u32 temp_t3;
    u32 temp_v1_7;
    u32 temp_v1_8;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_v1_5;
    s32 phi_v0;
    s32 phi_v1_6;

    *(void *)0x8007B348 = 0;
    *(void *)0x8007B2EC = 0;
    temp_v1 = *(void *)0x8007B2E4;
    sp5C = NULL;
    phi_v1 = temp_v1;
    if ((temp_v1 & 0x40) != 0) {
        if ((temp_v1 & 0x800) != 0) {
            *(void *)0x80084EE4 = (s32) *(void *)0x8007BA60;
            *(void *)0x80084EE8 = (s32) *(void *)0x8007BA62;
            func_80002EA0();
        }
        func_8002E5E0(0);
        *(void *)0x800905C0 = 0;
        func_8000BD10();
        func_80011B70();
        func_80012220();
        func_80002918();
        func_80007A50();
        func_80008BB0();
        func_8000B530();
        func_80012780();
        func_80010150();
        *(void *)0x8007B340 = func_80011100();
        *(void *)0x8007B33C = func_80011100();
        temp_v0 = func_80011100();
        temp_t1 = temp_v0 * 0x30;
        *(void *)0x8007BC08 = temp_v0;
        (temp_t1 + 0x80080000)->unk59E8 = 2;
        func_8001C560((void *)0x8007BC08);
        func_80014840();
        func_800185F0();
        func_8001B0D0();
        func_800228E0();
        func_8001E1F0();
        temp_v1_2 = *(void *)0x8007B2E4 & -0x841;
        *(void *)0x8007B2E4 = temp_v1_2;
        phi_v1 = temp_v1_2;
    }
    phi_v1_2 = phi_v1;
    if ((phi_v1 & 0x400) != 0) {
        func_8001D8B0(0x8007BACC, 0, 1, 0, 1, 1);
        phi_v1_2 = *(void *)0x8007B2E4;
    }
    phi_v1_3 = phi_v1_2;
    if ((phi_v1_2 & 0x20) != 0) {
        temp_t8 = phi_v1_2 & -0x21;
        *(void *)0x8007B2E4 = temp_t8;
        temp_v0_2 = *(void *)0x8007B2F0;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 != 1) {
                if (temp_v0_2 != 2) {
                    if (temp_v0_2 != 3) {
                        phi_v1_3 = temp_t8;
                    } else {
                        func_80022B08(0x20, 4, 0x8004D714);
block_16:
                        phi_v1_3 = *(void *)0x8007B2E4;
                    }
                } else {
                    func_80022B08(0x20, 4, 0x8004D674);
                    goto block_16;
                }
            } else {
                func_80022B08(0x10, 4, 0x8004D5AC);
                goto block_16;
            }
        } else {
            func_80022B08(0x10, 4, 0x8004D56C);
            goto block_16;
        }
    }
    phi_v1_4 = phi_v1_3;
    if ((phi_v1_3 & 0x100) != 0) {
        func_8002684C(*(void *)0x80084EE4, *(void *)0x80084EE8, 0);
        temp_v1_3 = *(void *)0x8007B2E4 & -0x101;
        *(void *)0x8007B2E4 = temp_v1_3;
        phi_v1_4 = temp_v1_3;
    }
    temp_t2 = phi_v1_4 & -0x481;
    *(void *)0x8007B2E4 = temp_t2;
    if (*(void *)0x8007B2E8 == 4) {
        *(void *)0x8007B2E4 = (s32) (temp_t2 | 0x4080);
        *(void *)0x8007B2EC = 0x31;
        *(void *)0x8007B2F0 = (u16)2U;
        *(void *)0x8007B2F2 = (u16)0x2FU;
    } else {
        *(void *)0x8007B2F0 = (u16)0U;
        *(void *)0x8007B2F2 = (u16)0x12U;
    }
    *(void *)0x8007B2E8 = (u16)0U;
    if (1 == *(void *)0x8007B2E0) {
loop_24:
        func_800314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        *(void *)0x80087200 = 0;
        func_80011850();
        if ((*(void *)0x80084F10 & 1) != 0) {
            func_8001C5F4();
        }
        temp_v0_3 = *(void *)0x8008C592;
        if ((temp_v0_3 & 1) != 0) {
            if ((temp_v0_3 & 0x200) != 0) {
                func_8001CACC();
            } else {
                func_8001CFE8();
                func_80008C20();
            }
        }
        func_80002F60();
        func_80007B64();
        func_800156D0();
        func_800102D0();
        func_8000C42C();
        func_8000DC4C();
        func_800011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_v1_4 = *(void *)0x8007B2E4;
        sp58 = (*(void *)0x8007B2F4 * 0xD150) + 0x80301000;
        if ((temp_v1_4 & 0x87) == 0) {
            if (((void *)0x8007BAB8->unk74 & 1) == 0) {
                if (func_8000FDE0((void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk1C, (void *)0x8007BAB8->unk24) != 0) {
                    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
                    func_8001459C();
                    func_800060D4();
                    *(void *)0x8007B2F0 = (u16)0U;
                } else {
block_34:
                    temp_v1_5 = *(void *)0x8007B2E4;
                    if ((temp_v1_5 & 0x1000) == 0) {
                        if (((void *)0x8007BAB8->unk74 & 1) == 0) {
                            if ((*(void *)0x80092876 & 0x1000) != 0) {
                                if ((*(void *)0x8008C592 & 1) == 0) {
                                    if ((*(void *)0x80092874 & 0x2000) == 0) {
                                        if ((temp_v1_5 & 1) == 0) {
                                            *(void *)0x8007B2E0 = (u16)2U;
                                            func_800268D4(0, (s32) (1 << 0x18) >> 0x18, 0xFF);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                goto block_34;
            }
        } else {
            if ((temp_v1_4 & 0x80) != 0) {
                if ((temp_v1_4 & 2) == 0) {
                    temp_v0_4 = *(void *)0x8007B2EC - 1;
                    *(void *)0x8007B2EC = temp_v0_4;
                    if (temp_v0_4 == 0) {
                        if ((temp_v1_4 & 0x4000) != 0) {
                            temp_t5 = temp_v1_4 & -0x4001;
                            *(void *)0x8007B2E0 = (u16)5U;
                            *(void *)0x8007B2E4 = temp_t5;
                            phi_v1_5 = temp_t5;
                        } else {
                            *(void *)0x8007B2E0 = (u16)0U;
                            phi_v1_5 = temp_v1_4;
                        }
                        temp_t6 = phi_v1_5 | 0x20;
                        temp_v0_5 = temp_t6 & 0x400;
                        *(void *)0x8007B2E4 = temp_t6;
                        phi_v0 = temp_v0_5;
                        phi_v1_6 = temp_t6;
                        if (temp_v0_5 == 0) {
                            temp_v1_6 = temp_t6 | 0x40;
                            *(void *)0x8007B2E4 = temp_v1_6;
                            phi_v0 = temp_v1_6 & 0x400;
                            phi_v1_6 = temp_v1_6;
                        }
                        *(void *)0x80084EEC = (s32) (void *)0x80085368->unk0;
                        *(void *)0x80084EF0 = (s32) (void *)0x80085368->unk4;
                        if (phi_v0 != 0) {
                            temp_v0_6 = (void *)0x8007BAB8->unk10;
                            temp_v0_6->unk4 = (u16) temp_v0_6->unk6;
                            temp_v0_7 = (void *)0x8007BAB8->unk10;
                            temp_v0_7->unk8 = (u16) temp_v0_7->unkA;
                            temp_a0 = *(void *)0x800859D0 + 0x2328;
                            *(void *)0x800859D0 = temp_a0;
                            func_80010510(temp_a0);
                            *(void *)0x8007BA60 = (u16) *(void *)0x80084EE4;
                            *(void *)0x8007BA62 = (u16) *(void *)0x80084EE8;
                            *(void *)0x8007BA64 = (s16) *(void *)0x80085370;
                            *(void *)0x8007B2F0 = (u16)2U;
                            phi_v1_6 = *(void *)0x8007B2E4;
                        }
                        *(void *)0x8007B2E4 = (s32) (phi_v1_6 | 0x100);
                        func_80026488();
                    } else {
                        if (temp_v0_4 == *(void *)0x8007B2F2) {
                            temp_v0_8 = *(void *)0x8007B2F0;
                            if (temp_v0_8 != 0) {
                                if (temp_v0_8 != 1) {
                                    if (temp_v0_8 != 2) {
                                        if (temp_v0_8 != 3) {

                                        } else {
                                            func_80022B08(0x1F, 2, 0x8004D698);
                                        }
                                    } else {
                                        func_80022B08(0x1F, 2, 0x8004D5F8);
                                    }
                                } else {
                                    func_80022B08(0xF, 2, 0x8004D570);
                                }
                            } else {
                                func_80022B08(0xF, 2, 0x8004D530);
                            }
                        }
                    }
                }
            }
        }
        func_80026658();
        temp_ret = func_80034ED0();
        temp_v0_9 = temp_ret;
        temp_v1_7 = (u32) (u64) temp_ret;
        (void *)0x8007BA28->unk0 = temp_v0_9;
        (void *)0x8007BA28->unk4 = temp_v1_7;
        temp_t3 = *(void *)0x8007BA24;
        temp_t4 = (temp_v0_9 - *(void *)0x8007BA20) - (temp_v1_7 < temp_t3);
        temp_t5_2 = temp_v1_7 - temp_t3;
        (void *)0x8007BA30->unk4 = temp_t5_2;
        (void *)0x8007BA30->unk0 = temp_t4;
        *(void *)0x8007BA38 = temp_t4;
        *(void *)0x8007BA3C = temp_t5_2;
        if (*(void *)0x8008C640 != -1) {
            if (func_8002543C(0, (void *)0x8007BA30) == 0) {
                func_800252D8(0, *(void *)0x8008C640);
                func_80025364(0);
                *(void *)0x8008C640 = -1;
            }
        }
        temp_v0_10 = *(void *)0x8007B348;
        if (temp_v0_10 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0_10 + 1);
loop_67:
            func_80034020(0x8007B9E8, &sp5C, 1);
            if (1 != *sp5C) {
                goto loop_67;
            }
        } else {
loop_69:
            func_80034020(0x8007B9E8, &sp5C, 1);
            if (2 != *sp5C) {
                goto loop_69;
            }
            if ((s32) *(void *)0x8007B2D0 < 2) {
loop_71:
                func_80034020(0x8007B9E8, &sp5C, 1);
                if ((s32) *(void *)0x8007B2D0 < 2) {
                    goto loop_71;
                }
            }
        }
        func_80034200(*(void *)0x8007B9D8, sp58, 1);
        *(void *)0x8007B2D0 = (u16)0U;
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        temp_ret_2 = func_80034ED0();
        temp_v1_8 = (u32) (u64) temp_ret_2;
        *(void *)0x8007BA20 = temp_ret_2;
        *(void *)0x8007BA24 = temp_v1_8;
        if (1 == *(void *)0x8007B2E0) {
            goto loop_24;
        }
    }
    if ((*(void *)0x8007B2E4 & 0x200) != 0) {
        func_800253F0(0);
    }
loop_75:
    func_80034020(0x8007B9E8, &sp5C, 1);
    if (2 != *sp5C) {
        goto loop_75;
    }
    temp_v1_9 = *(void *)0x8007B2E4;
    if ((temp_v1_9 & 0x200) != 0) {
        *(void *)0x8007B2E4 = (s32) (temp_v1_9 & -0x201);
        if (func_8002543C(0) != 0) {
loop_78:
            if (func_8002543C(0) != 0) {
                goto loop_78;
            }
        }
    }
    if ((*(void *)0x8007B2E4 & 0x400) != 0) {
        func_8002B510(4);
    }
}

void func_800020B4(void) {
    void *sp4C;
    s32 temp_s5;
    s32 temp_v0;

    *(void *)0x8007B348 = 0;
    sp4C = NULL;
    *(void *)0x8008FD0E = (u8)0;
    if (2 == *(void *)0x8007B2E0) {
loop_2:
        func_800314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        func_800011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_s5 = (*(void *)0x8007B2F4 * 0xD150) + 0x80301000;
        func_80026658();
        temp_v0 = *(void *)0x8007B348;
        if (temp_v0 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0 + 1);
loop_4:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (1 != *sp4C) {
                goto loop_4;
            }
        } else {
loop_6:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (2 != *sp4C) {
                goto loop_6;
            }
        }
        func_80034200(*(void *)0x8007B9D8, temp_s5, 1);
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        if (2 == *(void *)0x8007B2E0) {
            goto loop_2;
        }
    }
    if (*(void *)0x8008FD0E != 0) {
        func_80002EA0();
        *(void *)0x8007B2E8 = (u16)2;
    }
    func_80026A04();
loop_11:
    func_80034020(0x8007B9E8, &sp4C, 1);
    if (2 != *sp4C) {
        goto loop_11;
    }
}

void func_8000227C(void) {
    void *sp4C;
    s32 temp_v0;

    sp4C = NULL;
    *(void *)0x8007B348 = 0;
    func_80031C40();
    func_80100000();
    if (*(void *)0x8007B2E0 == 3) {
loop_2:
        func_800314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        func_800011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_v0 = *(void *)0x8007B348;
        if (temp_v0 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0 + 1);
loop_4:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (1 != *sp4C) {
                goto loop_4;
            }
        } else {
loop_6:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (2 != *sp4C) {
                goto loop_6;
            }
        }
        func_80034200(*(void *)0x8007B9D8, (*(void *)0x8007B2F4 * 0xD150) + 0x80301000, 1);
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        if (*(void *)0x8007B2E0 == 3) {
            goto loop_2;
        }
    }
loop_9:
    func_80034020(0x8007B9E8, &sp4C, 1);
    if (2 != *sp4C) {
        goto loop_9;
    }
}

void func_80002428(void) {
    void *sp4C;
    s32 temp_v0;

    sp4C = NULL;
    *(void *)0x8007B348 = 0;
    func_80031C78();
    func_80100000();
    if (*(void *)gameState == 4) {
loop_2:
        func_800314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        func_80026658();
        func_800011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_v0 = *(void *)0x8007B348;
        if (temp_v0 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0 + 1);
loop_4:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (1 != *sp4C) {
                goto loop_4;
            }
        } else {
loop_6:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (2 != *sp4C) {
                goto loop_6;
            }
        }
        func_80034200(*(void *)0x8007B9D8, (*(void *)0x8007B2F4 * 0xD150) + 0x80301000, 1);
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        if (*(void *)gameState == 4) {
            goto loop_2;
        }
    }
    func_800267B8(-1);
    func_80026658();
loop_9:
    func_80034020(0x8007B9E8, &sp4C, 1);
    if (2 != *sp4C) {
        goto loop_9;
    }
}

void func_800025E8(void) {
    void *sp4C;
    s32 temp_v0;

    sp4C = NULL;
    *(void *)0x8007B348 = 0;
    func_80031CB0();
    func_80100000();
    func_800267B8(0x14);
    if (*(void *)gameState == 5) {
loop_2:
        func_800314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        func_80026658();
        func_800011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_v0 = *(void *)0x8007B348;
        if (temp_v0 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0 + 1);
loop_4:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (1 != *sp4C) {
                goto loop_4;
            }
        } else {
loop_6:
            func_80034020(0x8007B9E8, &sp4C, 1);
            if (2 != *sp4C) {
                goto loop_6;
            }
        }
        func_80034200(*(void *)0x8007B9D8, (*(void *)0x8007B2F4 * 0xD150) + 0x80301000, 1);
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        if (*(void *)gameState == 5) {
            goto loop_2;
        }
    }
    func_800267B8(-1);
    func_80026658();
    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x8000);
loop_9:
    func_80034020(0x8007B9E8, &sp4C, 1);
    if (2 != *sp4C) {
        goto loop_9;
    }
}
