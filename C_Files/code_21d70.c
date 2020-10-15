void *func_80021170(void) {
    s32 temp_v1;
    s32 temp_v1_2;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;
    void *phi_v0_2;
    s32 phi_v1_2;

    func_80024260(0xD3BE40, 0x803AAC20, 0x400);
    phi_v0 = (void *)0x8008C770;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 1;
    *phi_v0 = (u8)0xFF;
    phi_v0 = phi_v0 + 1;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    *(void *)0x8008CF78 = (u8)0xFF;
    (void *)0x8008CF79->unk1 = (u8)0xFF;
    (void *)0x8008CF79->unk0 = (u8)0xFF;
    phi_v0_2 = (void *)0x8008CF79 + 2;
    phi_v1_2 = 0x94;
loop_3:
    temp_v1_2 = phi_v1_2 - 4;
    phi_v0_2->unk0 = (u8)0xFF;
    phi_v0_2->unk1 = (u8)0xFF;
    phi_v0_2->unk2 = (u8)0xFF;
    phi_v0_2->unk3 = (u8)0xFF;
    temp_v0 = phi_v0_2 + 4;
    phi_v0_2 = temp_v0;
    phi_v1_2 = temp_v1_2;
    if (temp_v1_2 != 0) {
        goto loop_3;
    }
    *(void *)0x8008C760 = 0;
    *(void *)0x8008C764 = 0;
    *(void *)0x8008C768 = 0;
    return temp_v0;
}

? func_80021214(void) {
    ? phi_v1;

    phi_v1 = 1;
    if (*(void *)0x8008D00D != 0xFF) {
        phi_v1 = 0;
    }
    return phi_v1;
}

s32 func_80021240(s32 arg0) {
    void *temp_a2;
    void *phi_a2;
    s32 phi_v1;
    s32 phi_v1_2;

    phi_a2 = (void *)0x8008D00D;
    phi_v1_2 = 0;
loop_1:
    temp_a2 = phi_a2 - 1;
    phi_v1 = phi_v1_2;
    if ((arg0 & 0xFF) == *phi_a2) {
        phi_v1 = phi_v1_2 + 1;
    }
    if (temp_a2 != 0x8008CF77) {
        phi_a2 = temp_a2;
        phi_v1_2 = phi_v1;
        if (phi_v1 == 0) {
            goto loop_1;
        }
    }
    return phi_v1;
}

s32 func_800212A0(s32 arg0) {
    void *temp_v1;
    void *phi_v1;
    void *phi_v1_2;

    phi_v1 = (void *)0x8008CF78;
loop_1:
    phi_v1_2 = phi_v1;
    if (0xFF != *phi_v1) {
        temp_v1 = phi_v1 + 1;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        if (temp_v1 != 0x8008D00E) {
            goto loop_1;
        }
    }
    *phi_v1_2 = (s8) (arg0 & 0xFF);
    return 0xFF;
}

s32 func_800212E4(u8 arg0) {
    s32 sp1C;
    s32 temp_t6;
    u8 temp_a2;
    void *temp_a1;
    s32 phi_v1;
    s32 phi_a3;
    s32 phi_t0;
    s32 phi_v1_2;
    u8 phi_a2;

    temp_a2 = arg0 & 0xFF;
    temp_t6 = *(void *)0x8008C592 & 1;
    if ((temp_t6 != 0) && ((*((temp_a2 * 0xC) + 0x803A91F0) & 2) != 0)) {
block_5:
        phi_v1 = 1;
    } else {
        phi_v1 = 0;
        phi_a3 = 0x803A91F0;
        phi_t0 = 0xC;
        if (temp_t6 == 0) {
            phi_v1 = 0;
            phi_a3 = 0x803A91F0;
            phi_t0 = 0xC;
            if ((*((temp_a2 * 0xC) + 0x803A91F0) & 1) != 0) {
                goto block_5;
            }
        }
    }
    phi_v1_2 = phi_v1;
    phi_a2 = temp_a2;
    if (phi_v1 != 0) {
        arg0 = temp_a2;
        temp_a1 = phi_a3 + (temp_a2 * phi_t0);
        phi_v1_2 = ((temp_a1->unk2 * 4) + 0x80050000)->unk-2B80(0x8007BACC, temp_a1, temp_a2, phi_a3);
        phi_a2 = arg0;
    }
    if (phi_v1_2 != 0) {
        sp1C = phi_v1_2;
        func_8000669C(phi_a2 & 0xFF, phi_a2);
    }
    return phi_v1_2;
}

void func_800213D8(s32 arg0, ? arg1) {
    s32 temp_a2;
    void *temp_a1;

    temp_a2 = arg0 & 0xFF;
    temp_a1 = (temp_a2 * 0xC) + 0x803A91F0;
    ((temp_a1->unk2 * 4) + 0x80050000)->unk-2B70(arg1, temp_a1, temp_a2, arg1);
}

s32 func_80021434(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2_2;
    u8 temp_a0;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    u8 phi_a0;
    s32 phi_v1;
    void *phi_v0;
    s32 phi_v1_2;
    s32 phi_a1;
    void *phi_v0_2;
    s32 phi_a1_2;
    void *phi_v0_3;
    s32 phi_a1_3;
    void *phi_v0_4;
    s32 phi_a1_4;
    void *phi_v0_5;

    phi_v1_2 = 0;
    phi_a1 = 0x96;
    phi_v0_5 = (void *)0x8008CF78;
    if (0xFF != *(void *)0x8008CF78) {
        phi_a0 = *(void *)0x8008CF78;
        phi_v0 = (void *)0x8008CF78;
        phi_v1 = 0;
        phi_a1_4 = 0x96;
loop_2:
        temp_v0 = phi_v0 + 1;
        temp_a2 = (phi_a0 * 0xC) + 0x803A91F0;
        if (0xF == temp_a2->unk2) {
            phi_v1 = temp_a2->unk4 == (arg0 & 0xFFFF);
        }
        temp_a1 = phi_a1_4 - 1;
        phi_v1_2 = phi_v1;
        phi_a1 = temp_a1;
        phi_v0_5 = temp_v0;
        if (phi_v1 == 0) {
            temp_a0 = *temp_v0;
            phi_a0 = temp_a0;
            phi_v0 = temp_v0;
            phi_v1_2 = phi_v1;
            phi_a1 = temp_a1;
            phi_a1_4 = temp_a1;
            phi_v0_5 = temp_v0;
            if (0xFF != temp_a0) {
                goto loop_2;
            }
        }
    }
    if (phi_v1_2 != 0) {
        temp_v0_2 = phi_v0_5 - 1;
        phi_v0_4 = temp_v0_2;
        if (phi_a1 != 0) {
            temp_a2_2 = -(s32) (phi_a1 & 3);
            phi_v0_2 = temp_v0_2;
            phi_a1_2 = phi_a1;
            phi_v0_3 = temp_v0_2;
            phi_a1_3 = phi_a1;
            if (((temp_a2_2 == 0) || (temp_a1_2 = phi_a1_2 - 1, temp_v0_3 = phi_v0_2 + 1, temp_v0_3->unk-1 = (u8) phi_v0_2->unk1, phi_v0_2 = temp_v0_3, phi_a1_2 = temp_a1_2, ((temp_a2_2 + phi_a1) != temp_a1_2))) || (phi_v0_3 = temp_v0_3, phi_a1_3 = temp_a1_2, phi_v0_4 = temp_v0_3, (temp_a1_2 != 0))) {
loop_11:
                temp_a1_3 = phi_a1_3 - 4;
                temp_v0_4 = phi_v0_3 + 4;
                temp_v0_4->unk-4 = (u8) phi_v0_3->unk1;
                temp_v0_4->unk-3 = (u8) phi_v0_3->unk2;
                temp_v0_4->unk-2 = (u8) phi_v0_3->unk3;
                temp_v0_4->unk-1 = (u8) phi_v0_3->unk4;
                phi_v0_3 = temp_v0_4;
                phi_a1_3 = temp_a1_3;
                phi_v0_4 = temp_v0_4;
                if (temp_a1_3 != 0) {
                    goto loop_11;
                }
            } else {

            }
        }
        *phi_v0_4 = (u8)0xFF;
    }
    return phi_v1_2;
}

s32 func_80021524(void) {
    s32 sp144;
    s32 sp13C;
    void *sp124;
    ? *sp11C;
    ? sp114;
    s32 sp34;
    ? *temp_t5_3;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1_3;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_s0;
    s32 temp_s1_2;
    s32 temp_t4;
    s32 temp_t4_2;
    s32 temp_t4_3;
    s32 temp_t4_4;
    s32 temp_t4_5;
    s32 temp_t4_6;
    s32 temp_t4_7;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t5_4;
    s32 temp_t5_5;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_4;
    s32 temp_v1_55;
    s8 temp_s1;
    u8 temp_a0;
    u8 temp_t0;
    u8 temp_t0_2;
    u8 temp_v0_5;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_4;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_a3_6;
    void *temp_a3_7;
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
    void *temp_v1_21;
    void *temp_v1_22;
    void *temp_v1_23;
    void *temp_v1_24;
    void *temp_v1_25;
    void *temp_v1_26;
    void *temp_v1_27;
    void *temp_v1_28;
    void *temp_v1_29;
    void *temp_v1_2;
    void *temp_v1_30;
    void *temp_v1_31;
    void *temp_v1_32;
    void *temp_v1_33;
    void *temp_v1_34;
    void *temp_v1_35;
    void *temp_v1_36;
    void *temp_v1_37;
    void *temp_v1_38;
    void *temp_v1_39;
    void *temp_v1_3;
    void *temp_v1_40;
    void *temp_v1_41;
    void *temp_v1_42;
    void *temp_v1_43;
    void *temp_v1_44;
    void *temp_v1_45;
    void *temp_v1_46;
    void *temp_v1_47;
    void *temp_v1_48;
    void *temp_v1_49;
    void *temp_v1_50;
    void *temp_v1_51;
    void *temp_v1_52;
    void *temp_v1_53;
    void *temp_v1_54;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    s32 phi_t4;
    void *phi_a3;
    s32 phi_t4_2;
    s8 phi_s1;
    s32 phi_a2;
    void *phi_a3_2;
    s32 phi_t0;
    void *phi_v1;
    void *phi_a3_3;
    s32 phi_v0;
    void *phi_a3_4;
    s32 phi_v0_2;
    s32 phi_t2;
    s32 phi_t4_3;
    ? *phi_t5;
    void *phi_t3;
    void *phi_a1;
    u8 phi_a0;
    s32 phi_v0_3;
    void *phi_v1_2;
    s32 phi_v0_4;
    u8 phi_t0_2;
    ? *phi_t5_2;
    s32 phi_ra;
    s32 phi_t4_4;
    void *phi_a3_5;
    void *phi_t3_2;
    s32 phi_s0;
    s32 phi_s2;
    s32 phi_s1_2;
    void *phi_a3_6;
    void *phi_a3_7;
    s32 phi_t4_5;
    void *phi_a3_8;
    s32 phi_t4_6;
    void *phi_a3_9;
    s32 phi_return;
    ? *phi_t5_3;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = 0x803A8F10;
    func_8002263C(0x46, 0x75, 0xB2, 0x16);
    temp_ret = func_8002263C(0x48, 0x3A, 0xAD, 0x36);
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk0 = 0x6000000;
    temp_v1_2->unk4 = 0x803A9090;
    temp_v1_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_3 + 8);
    temp_v1_3->unk0 = 0x6000000;
    temp_v1_3->unk4 = 0x803A90E8;
    temp_s1 = *(void *)0x80092871;
    if ((s32) temp_s1 >= 6) {
        phi_s1 = temp_s1 - 5;
    } else {
        if ((s32) temp_s1 < -5) {
            phi_s1 = temp_s1 + 5;
        } else {
            phi_s1 = (u8)0;
        }
    }
    temp_t5 = *(void *)0x8008C760;
    temp_a1 = temp_t5 + 0x8008CF78;
    phi_t4 = 8;
    phi_a3 = temp_a1;
    phi_t4_2 = 8;
    phi_a3_2 = temp_a1;
    if (0xFF != *temp_a1) {
loop_6:
        temp_t4 = phi_t4 - 1;
        temp_a3 = phi_a3 + 1;
        phi_t4_2 = temp_t4;
        phi_a3_2 = temp_a3;
        if (temp_t4 != 0) {
            phi_t4 = temp_t4;
            phi_a3 = temp_a3;
            phi_t4_2 = temp_t4;
            phi_a3_2 = temp_a3;
            if (0xFF != *temp_a3) {
                goto loop_6;
            }
        }
    }
    temp_v1_4 = 8 - phi_t4_2;
    phi_return = temp_ret;
    if (temp_v1_4 != 0) {
        if (phi_s1 != 0) {
            temp_v0 = *(void *)0x8008C768;
            if ((temp_v0 != 0) && ((phi_s1 ^ temp_v0) < 0)) {
                *(void *)0x8008C768 = 0;
                phi_t4_3 = 8;
            } else {
                temp_t7 = temp_v0 + phi_s1;
                *(void *)0x8008C768 = temp_t7;
                if (temp_t7 >= 0xFB) {
                    *(void *)0x8008C768 = 0;
                    temp_t9 = *(void *)0x8008C764 + 1;
                    *(void *)0x8008C764 = temp_t9;
                    phi_a2 = 1;
                    if (temp_t9 >= temp_v1_4) {
                        *(void *)0x8008C764 = (s32) (temp_v1_4 - 1);
                        phi_a2 = 1;
                        if (temp_t5 < (0x96 - temp_v1_4)) {
                            *(void *)0x8008C760 = (s32) (temp_t5 + 1);
                            temp_t5_2 = *(void *)0x8008C760;
                            phi_a2 = 1;
                            if (0xFF == ((temp_t5_2 + temp_v1_4) + 0x80090000)->unk-3089) {
                                *(void *)0x8008C760 = (s32) (temp_t5_2 - 1);
                                phi_a2 = 0;
                            }
                        }
                    }
                } else {
                    phi_a2 = 0;
                    if (temp_t7 < -0xFA) {
                        *(void *)0x8008C768 = 0;
                        temp_t6 = *(void *)0x8008C764 - 1;
                        *(void *)0x8008C764 = temp_t6;
                        phi_a2 = 1;
                        if (temp_t6 < 0) {
                            *(void *)0x8008C764 = 0;
                            if (temp_t5 > 0) {
                                *(void *)0x8008C760 = (s32) (temp_t5 - 1);
                                phi_a2 = 1;
                            } else {
                                phi_a2 = 0;
                            }
                        }
                    }
                }
                phi_t4_3 = 8;
                if (phi_a2 != 0) {
                    sp13C = temp_v1_4;
                    sp144 = 8;
                    func_800268D4(0, 3, 0xFF, phi_a3_2);
                    phi_t4_3 = 8;
                }
            }
            temp_a1_2 = *(void *)0x8008C760 + 0x8008CF78;
            phi_a3_3 = temp_a1_2;
            phi_a1 = temp_a1_2;
        } else {
            *(void *)0x8008C768 = 0;
            phi_t0 = temp_v1_4;
            phi_t2 = 8;
            phi_t3 = (void *)0x8007B2FC;
            phi_a3_3 = temp_a1;
            phi_t4_3 = 8;
            phi_a1 = temp_a1;
        }
        phi_v1 = (void *)0x8008C770;
        phi_t5 = &sp114;
loop_29:
        temp_v0_2 = phi_t0;
        phi_v0_2 = temp_v0_2;
        if (phi_t0 != 0) {
            temp_a0 = *phi_v1;
            phi_v0 = temp_v0_2;
            phi_a3_4 = phi_a3_3;
            phi_v0_2 = temp_v0_2;
            if (temp_a0 != *phi_a3_3) {
loop_31:
                temp_v0_3 = phi_v0 - 1;
                temp_a3_2 = phi_a3_4 + 1;
                phi_v0_2 = temp_v0_3;
                if (temp_v0_3 != 0) {
                    phi_v0 = temp_v0_3;
                    phi_a3_4 = temp_a3_2;
                    phi_v0_2 = temp_v0_3;
                    if (temp_a0 != *temp_a3_2) {
                        goto loop_31;
                    }
                }
            }
        }
        phi_t5_3 = phi_t5;
        if (phi_v0_2 == 0) {
            *phi_t5 = (s8) (phi_t2 - phi_t4_3);
            phi_a1 = *(void *)0x8008C760 + 0x8008CF78;
            phi_t5_3 = phi_t5 + 1;
        }
        temp_t4_2 = phi_t4_3 - 1;
        temp_a3_3 = phi_a1;
        phi_v1 = phi_v1 + 1;
        phi_a3_3 = temp_a3_3;
        phi_t4_3 = temp_t4_2;
        phi_t5 = phi_t5_3;
        if (temp_t4_2 != 0) {
            goto loop_29;
        }
        sp13C = phi_t0;
        temp_a1_3 = phi_t0;
        temp_t4_3 = phi_t0;
        temp_v1_5 = *phi_t3;
        *phi_t3 = (void *) (temp_v1_5 + 8);
        temp_v1_5->unk0 = 0x6000000;
        temp_v1_5->unk4 = 0x803A9140;
        phi_a3_6 = temp_a3_3;
        if (temp_a1_3 != 0) {
            temp_t0 = *temp_a3_3;
            phi_a3_6 = temp_a3_3;
            if (temp_t0 != 0xFF) {
                phi_a0 = temp_t0;
                phi_t0_2 = temp_t0;
                phi_t5_2 = phi_t5_3;
                phi_ra = temp_a1_3 - temp_t4_3;
                phi_t4_4 = temp_t4_3;
                phi_a3_5 = temp_a3_3;
                phi_s2 = 0;
                phi_s1_2 = 0x1AC;
                phi_t3_2 = phi_t3;
loop_39:
                phi_v0_3 = 8;
                phi_v1_2 = (void *)0x8008C770;
                phi_v0_4 = 8;
                if (phi_a0 != *(void *)0x8008C770) {
loop_40:
                    temp_v0_4 = phi_v0_3 - 1;
                    temp_v1_6 = phi_v1_2 + 1;
                    phi_v0_4 = temp_v0_4;
                    if (temp_v0_4 != 0) {
                        phi_v0_3 = temp_v0_4;
                        phi_v1_2 = temp_v1_6;
                        phi_v0_4 = temp_v0_4;
                        if (phi_a0 != *temp_v1_6) {
                            goto loop_40;
                        }
                    }
                }
                if (phi_v0_4 == 0) {
                    temp_v0_5 = phi_t5_2->unk-1;
                    (temp_v0_5 + 0x80090000)->unk-3890 = phi_t0_2;
                    temp_t5_3 = phi_t5_2 - 1;
                    sp34 = phi_ra;
                    temp_s0 = (temp_v0_5 << 8) + 0x8008C778;
                    sp11C = temp_t5_3;
                    sp144 = phi_t4_4;
                    sp124 = phi_a3_5;
                    func_80024260(((*phi_a3_5 << 8) + 0x400) + 0xD3BE40, temp_s0, 0x100, phi_a3_5);
                    phi_t3_2 = (void *)0x8007B2FC;
                    phi_s0 = temp_s0;
                    phi_t5_2 = temp_t5_3;
                } else {
                    phi_s0 = ((8 - phi_v0_4) << 8) + 0x8008C778;
                }
                temp_v1_7 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_7 + 8);
                temp_v1_7->unk4 = phi_s0;
                temp_v1_7->unk0 = 0xFD500000;
                temp_v1_8 = *phi_t3_2;
                temp_a3_4 = phi_a3_5 + 1;
                *phi_t3_2 = (void *) (temp_v1_8 + 8);
                temp_v1_8->unk4 = 0x7000000;
                temp_v1_8->unk0 = 0xF5500000;
                temp_v1_9 = *phi_t3_2;
                temp_t4_4 = phi_t4_4 - 1;
                *phi_t3_2 = (void *) (temp_v1_9 + 8);
                temp_v1_9->unk4 = 0;
                temp_v1_9->unk0 = 0xE6000000;
                temp_v1_10 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_10 + 8);
                temp_v1_10->unk4 = 0x707F400;
                temp_v1_10->unk0 = 0xF3000000;
                temp_v1_11 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_11 + 8);
                temp_v1_11->unk4 = 0;
                temp_v1_11->unk0 = 0xE7000000;
                temp_v1_12 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_12 + 8);
                temp_v1_12->unk4 = 0;
                temp_v1_12->unk0 = 0xF5480400;
                temp_v1_13 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_13 + 8);
                temp_v1_13->unk0 = 0xF2000000;
                temp_v1_13->unk4 = 0x3C03C;
                if (*(void *)0x8008C764 == phi_ra) {
                    temp_v1_14 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_14 + 8);
                    temp_v1_14->unk4 = -1;
                    temp_v1_14->unk0 = 0xFB000000;
                    temp_v1_15 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_15 + 8);
                    temp_v1_15->unk0 = 0xFD100000;
                    temp_v1_15->unk4 = 0x803AAC20;
                    temp_v1_16 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_16 + 8);
                    temp_v1_16->unk4 = 0;
                    temp_v1_16->unk0 = 0xE8000000;
                    temp_v1_17 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_17 + 8);
                    temp_v1_17->unk4 = 0x7000000;
                    temp_v1_17->unk0 = 0xF5000100;
                    temp_v1_18 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_18 + 8);
                    temp_v1_18->unk4 = 0;
                    temp_v1_18->unk0 = 0xE6000000;
                    temp_v1_19 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_19 + 8);
                    temp_v1_19->unk4 = 0x73FC000;
                    temp_v1_19->unk0 = 0xF0000000;
                    temp_v1_20 = *phi_t3_2;
                    *phi_t3_2 = (void *) (temp_v1_20 + 8);
                    temp_v1_20->unk4 = 0;
                    temp_v1_20->unk0 = 0xE7000000;
                    phi_s2 = 1;
                } else {
                    if (phi_s2 != 0) {
                        temp_v1_21 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_21 + 8);
                        temp_v1_21->unk4 = 0x7F7F7FFF;
                        temp_v1_21->unk0 = 0xFB000000;
                        temp_v1_22 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_22 + 8);
                        temp_v1_22->unk0 = 0xFD100000;
                        temp_v1_22->unk4 = 0x803AAE20;
                        temp_v1_23 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_23 + 8);
                        temp_v1_23->unk4 = 0;
                        temp_v1_23->unk0 = 0xE8000000;
                        temp_v1_24 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_24 + 8);
                        temp_v1_24->unk4 = 0x7000000;
                        temp_v1_24->unk0 = 0xF5000100;
                        temp_v1_25 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_25 + 8);
                        temp_v1_25->unk4 = 0;
                        temp_v1_25->unk0 = 0xE6000000;
                        temp_v1_26 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_26 + 8);
                        temp_v1_26->unk4 = 0x73FC000;
                        temp_v1_26->unk0 = 0xF0000000;
                        temp_v1_27 = *phi_t3_2;
                        *phi_t3_2 = (void *) (temp_v1_27 + 8);
                        temp_v1_27->unk4 = 0;
                        temp_v1_27->unk0 = 0xE7000000;
                        phi_s2 = 0;
                    }
                }
                temp_v1_28 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_28 + 8);
                temp_v1_28->unk4 = (s32) (((phi_s1_2 & 0xFFF) << 0xC) | 0x1E4);
                temp_v1_28->unk0 = (s32) (((((phi_s1_2 + 0x40) & 0xFFF) << 0xC) | 0xE4000000) | 0x224);
                temp_v1_29 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_29 + 8);
                temp_v1_29->unk4 = 0;
                temp_v1_29->unk0 = 0xB4000000;
                temp_v1_30 = *phi_t3_2;
                *phi_t3_2 = (void *) (temp_v1_30 + 8);
                temp_v1_30->unk4 = 0x4000400;
                temp_v1_30->unk0 = 0xB3000000;
                phi_a3_6 = temp_a3_4;
                if (temp_t4_4 != 0) {
                    temp_t0_2 = *temp_a3_4;
                    phi_a0 = temp_t0_2;
                    phi_t0_2 = temp_t0_2;
                    phi_ra = phi_ra + 1;
                    phi_t4_4 = temp_t4_4;
                    phi_a3_5 = temp_a3_4;
                    phi_s1_2 = phi_s1_2 + 0x44;
                    phi_a3_6 = temp_a3_4;
                    if (temp_t0_2 != 0xFF) {
                        goto loop_39;
                    }
                }
            }
        }
        temp_s1_2 = (*(void *)0x8008C764 * 0x44) + 0x1D4;
        temp_v0_6 = func_80035190(*(void *)0x8004D4A0 & 0x7FFF, phi_a3_6);
        temp_v1_31 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_31 + 8);
        temp_v1_31->unk0 = 0x6000000;
        temp_v1_31->unk4 = 0x803A8F78;
        temp_v1_32 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_32 + 8);
        temp_a0_2 = 0x1C8 - ((temp_v0_6 >> 0xB) & 0xFFFC);
        temp_v1_32->unk0 = (s32) (((((temp_s1_2 + 0x30) & 0xFFF) << 0xC) | 0xE4000000) | ((temp_a0_2 + 0x30) & 0xFFF));
        temp_v1_32->unk4 = (s32) (((temp_s1_2 & 0xFFF) << 0xC) | (temp_a0_2 & 0xFFF));
        temp_v1_33 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_33 + 8);
        temp_v1_33->unk4 = 0x9C00000;
        temp_v1_33->unk0 = 0xB4000000;
        temp_v1_34 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_34 + 8);
        temp_v1_34->unk0 = 0xB3000000;
        temp_v1_34->unk4 = 0x4000400;
        if (sp13C == 8) {
            temp_v0_7 = func_80035190((*(void *)0x8004D4A0 * 2) & 0x7FFF);
            temp_v1_35 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1_35 + 8);
            temp_v1_35->unk0 = 0xFD4800AF;
            temp_v1_35->unk4 = 0x80399CB0;
            temp_v1_36 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1_36 + 8);
            temp_v1_36->unk4 = 0x7000000;
            temp_v1_36->unk0 = 0xF5481000;
            temp_v1_37 = *(void *)0x8007B2FC;
            temp_a0_3 = temp_v0_7 >> 0xD;
            *(void *)0x8007B2FC = (void *) (temp_v1_37 + 8);
            temp_v1_37->unk4 = 0;
            temp_v1_37->unk0 = 0xE6000000;
            temp_v1_38 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1_38 + 8);
            temp_v1_38->unk4 = 0x7248034;
            temp_v1_38->unk0 = 0xF4168000;
            temp_v1_39 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1_39 + 8);
            temp_v1_39->unk4 = 0;
            temp_v1_39->unk0 = 0xE7000000;
            temp_v1_40 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1_40 + 8);
            temp_v1_40->unk4 = 0;
            temp_v1_40->unk0 = 0xF5481000;
            temp_v1_41 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1_41 + 8);
            temp_v1_41->unk4 = 0x248034;
            temp_v1_41->unk0 = 0xF2168000;
            if (*(void *)0x8008C760 != 0) {
                temp_v1_42 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_42 + 8);
                temp_v1_42->unk4 = 0x218228;
                temp_v1_42->unk0 = 0xE4234244;
                temp_v1_43 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_43 + 8);
                temp_v1_43->unk4 = 0xE000000;
                temp_v1_43->unk0 = 0xB4000000;
                temp_v1_44 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_44 + 8);
                temp_v1_44->unk0 = 0xB3000000;
                temp_v1_44->unk4 = 0x4000400;
                temp_v1_45 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_45 + 8);
                temp_v1_45->unk0 = (s32) ((((((0x85 - temp_a0_3) * 4) & 0xFFF) << 0xC) | 0xE4000000) | 0x24C);
                temp_v1_45->unk4 = (s32) (((((0x77 - temp_a0_3) * 4) & 0xFFF) << 0xC) | 0x220);
                temp_v1_46 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_46 + 8);
                temp_v1_46->unk4 = 0xEE00000;
                temp_v1_46->unk0 = 0xB4000000;
                temp_v1_47 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_47 + 8);
                temp_v1_47->unk0 = 0xB3000000;
                temp_v1_47->unk4 = 0x4000400;
            }
            if ((*(void *)0x8008C760 + 0x80090000)->unk-3080 != 0xFF) {
                temp_v1_48 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_48 + 8);
                temp_v1_48->unk4 = 0x348228;
                temp_v1_48->unk0 = 0xE4364244;
                temp_v1_49 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_49 + 8);
                temp_v1_49->unk4 = 0xE000000;
                temp_v1_49->unk0 = 0xB4000000;
                temp_v1_50 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_50 + 8);
                temp_v1_50->unk0 = 0xB3000000;
                temp_v1_50->unk4 = 0x4000400;
                temp_v1_51 = *(void *)0x8007B2FC;
                temp_a0_4 = temp_v0_7 >> 0xD;
                *(void *)0x8007B2FC = (void *) (temp_v1_51 + 8);
                temp_v1_51->unk0 = (s32) ((((((temp_a0_4 + 0xE8) * 4) & 0xFFF) << 0xC) | 0xE4000000) | 0x24C);
                temp_v1_51->unk4 = (s32) (((((temp_a0_4 + 0xDA) * 4) & 0xFFF) << 0xC) | 0x220);
                temp_v1_52 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_52 + 8);
                temp_v1_52->unk4 = 0x10A00000;
                temp_v1_52->unk0 = 0xB4000000;
                temp_v1_53 = *(void *)0x8007B2FC;
                *(void *)0x8007B2FC = (void *) (temp_v1_53 + 8);
                temp_v1_53->unk0 = 0xB3000000;
                temp_v1_53->unk4 = 0x4000400;
            }
        }
        temp_v1_54 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_54 + 8);
        temp_v1_54->unk0 = 0x6000000;
        temp_v1_54->unk4 = 0x1000388;
        func_80030EA0(0x77, 0x3E, ((((*(void *)0x8008C760 + *(void *)0x8008C764) + 0x80090000)->unk-3088 * 4) + 0x803B0000)->unk-66AC);
        phi_return = func_80030EA0(0x4E, 0x50, ((((*(void *)0x8008C760 + *(void *)0x8008C764) + 0x80090000)->unk-3088 * 4) + 0x803B0000)->unk-662C);
        if ((*(void *)0x80092876 & 0xA000) != 0) {
            temp_ret_2 = func_800212E4(((*(void *)0x8008C760 + *(void *)0x8008C764) + 0x80090000)->unk-3088);
            phi_return = temp_ret_2;
            if (temp_ret_2 != 0) {
                temp_t5_4 = *(void *)0x8008C760;
                temp_v0_8 = *(void *)0x8008C764;
                temp_t4_5 = (-temp_t5_4 - temp_v0_8) + 0x95;
                temp_a3_5 = (temp_t5_4 + temp_v0_8) + 0x8008CF78;
                phi_a3_9 = temp_a3_5;
                if (temp_t4_5 != 0) {
                    temp_v1_55 = -(s32) (temp_t4_5 & 3);
                    phi_a3_7 = temp_a3_5;
                    phi_t4_5 = temp_t4_5;
                    phi_a3_8 = temp_a3_5;
                    phi_t4_6 = temp_t4_5;
                    if (((temp_v1_55 == 0) || (temp_t4_6 = phi_t4_5 - 1, temp_a3_6 = phi_a3_7 + 1, temp_a3_6->unk-1 = (u8) phi_a3_7->unk1, phi_a3_7 = temp_a3_6, phi_t4_5 = temp_t4_6, ((temp_v1_55 + temp_t4_5) != temp_t4_6))) || (phi_a3_8 = temp_a3_6, phi_t4_6 = temp_t4_6, phi_a3_9 = temp_a3_6, (temp_t4_6 != 0))) {
loop_62:
                        temp_t4_7 = phi_t4_6 - 4;
                        temp_a3_7 = phi_a3_8 + 4;
                        temp_a3_7->unk-4 = (u8) phi_a3_8->unk1;
                        temp_a3_7->unk-3 = (u8) phi_a3_8->unk2;
                        temp_a3_7->unk-2 = (u8) phi_a3_8->unk3;
                        temp_a3_7->unk-1 = (u8) phi_a3_8->unk4;
                        phi_a3_8 = temp_a3_7;
                        phi_t4_6 = temp_t4_7;
                        phi_a3_9 = temp_a3_7;
                        if (temp_t4_7 != 0) {
                            goto loop_62;
                        }
                    } else {

                    }
                }
                *phi_a3_9 = (u8)0xFF;
                *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 & -2);
                func_80022B08(6, 4, 0x8004D544, phi_a3_9);
                temp_t5_5 = *(void *)0x8008C760;
                temp_v0_9 = *(void *)0x8008C764;
                temp_a1_4 = temp_t5_5 + 0x8008CF78;
                if (*(temp_a1_4 + temp_v0_9) == 0xFF) {
                    if (temp_t5_5 > 0) {
                        *(void *)0x8008C760 = (s32) (temp_t5_5 - 1);
                        phi_return = temp_v0_9;
                    } else {
                        phi_return = temp_v0_9;
                        if (temp_v0_9 > 0) {
                            *(void *)0x8008C764 = (s32) (temp_v0_9 - 1);
                            phi_return = temp_v0_9;
                        }
                    }
                } else {
                    phi_return = temp_v0_9;
                    if (temp_a1_4->unk7 == 0xFF) {
                        phi_return = temp_v0_9;
                        if (temp_t5_5 > 0) {
                            *(void *)0x8008C760 = (s32) (temp_t5_5 - 1);
                            phi_return = temp_v0_9;
                        }
                    }
                }
            }
        }
        *(void *)0x8004D4A0 = (u16) (*(void *)0x8004D4A0 + 0x300);
    }
    return phi_return;
}

? func_8002224C(s32 arg0, ? arg1) {
    return 0;
}

? func_80022260(void *arg0, void *arg1) {
    void *temp_v0;
    ? phi_v1;
    ? phi_v1_2;

    temp_v0 = arg0->unk64;
    phi_v1_2 = 0;
    if (arg1->unk4 != 0) {
        phi_v1_2 = 0;
        if (temp_v0->unk4 != temp_v0->unk6) {
            phi_v1_2 = 1;
        }
    }
    phi_v1 = phi_v1_2;
    if (arg1->unk6 != 0) {
        phi_v1 = phi_v1_2;
        if (temp_v0->unk8 != temp_v0->unkA) {
            phi_v1 = 1;
        }
    }
    return phi_v1;
}

? func_800222B4(s32 arg0, ? arg1) {
    ? phi_v1;

    if (((*(void *)0x80084EE0 & 0xA) != 0) || (phi_v1 = 1, (((*(void *)0x80084F1C)->unk14 & 4) != 0))) {
        phi_v1 = 0;
    } else {

    }
    return phi_v1;
}

? func_80022300(s32 arg0, void *arg1) {
    ? phi_v1;

    phi_v1 = 1;
    if ((*(void *)0x8008C592 & 0x100) != 0) {
        phi_v1 = 1;
        if ((*arg1 & 8) != 0) {
            phi_v1 = 0;
        }
    }
    return phi_v1;
}

void func_8002233C(s32 arg0, ? arg1) {

}

void func_8002234C(void *arg0, void *arg1) {
    void *sp38;
    s16 temp_a0;
    s16 temp_a3;
    s32 temp_a2;
    s32 temp_a2_2;
    u16 temp_a3_2;
    u16 temp_t0;
    void *temp_v1;
    s32 phi_a2;
    s32 phi_a2_2;

    temp_v1 = arg0->unk64;
    temp_a3 = arg1->unk4;
    if (temp_a3 != 0) {
        temp_t0 = temp_v1->unk4;
        temp_a2 = (temp_v1->unk6 - temp_t0) & 0xFFFF;
        phi_a2 = temp_a2;
        if ((s32) temp_a3 < temp_a2) {
            phi_a2 = temp_a3 & 0xFFFF;
        }
        temp_v1->unk4 = (u16) (temp_t0 + phi_a2);
        sp38 = temp_v1;
        func_80018DF4(arg0, 1, phi_a2, temp_a3);
    }
    temp_a0 = arg1->unk6;
    if (temp_a0 != 0) {
        temp_a3_2 = arg0->unk64->unk8;
        temp_a2_2 = (arg0->unk64->unkA - temp_a3_2) & 0xFFFF;
        phi_a2_2 = temp_a2_2;
        if ((s32) temp_a0 < temp_a2_2) {
            phi_a2_2 = temp_a0 & 0xFFFF;
        }
        arg0->unk64->unk8 = (u16) (temp_a3_2 + phi_a2_2);
        func_80018DF4(arg0, 2, phi_a2_2, temp_a3_2);
    }
    (void *)0x8008D010->unk0 = (f32) (void *)0x803A9A68->unk8;
    (void *)0x8008D010->unk4 = (f32) (void *)0x803A9A68->unkC;
    (void *)0x8008D010->unk8 = 1.0f;
    func_800177F8((void *)0x803A9A68->unk2, (void *)0x803A9A68->unk4, arg0->unk0, arg0->unk4, arg0->unk8, 0.0f, ((void *)0x803A9A68->unk0 * 0xA) + 0x803A9A54, (void *)0x8008D010, arg0);
    func_800268D4(0, 0xB, 0xFF);
}

void func_80022490(void *arg0, void *arg1) {
    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
    *(void *)0x8007B2EC = 0x16;
    (void *)0x80085368->unk0 = (?32) *((arg1->unk4 * 0x10) + 0x803A9190);
    (void *)0x80085368->unk8 = -1;
    (void *)0x80085368->unk4 = (?32) ((arg1->unk4 * 0x10) + 0x803A9190)->unk2;
    *(void *)0x8007BA40 = (f32) ((arg1->unk4 * 0x10) + 0x803A9190)->unk4;
    *(void *)0x8007BA44 = (f32) ((arg1->unk4 * 0x10) + 0x803A9190)->unk8;
    *(void *)0x8007BA48 = (f32) ((arg1->unk4 * 0x10) + 0x803A9190)->unkC;
    *(void *)0x8007BA4C = 0x108;
    *(void *)0x8007BABE = (u16)0;
    *(void *)0x8007B2F0 = (u16)1;
    (void *)0x8008D010->unk0 = (f32) (void *)0x803A9A68->unk18;
    (void *)0x8008D010->unk4 = (f32) (void *)0x803A9A68->unk1C;
    (void *)0x8008D010->unk8 = 1.0f;
    func_800177F8((void *)0x803A9A68->unk12, (void *)0x803A9A68->unk14, arg0->unk0, arg0->unk4, arg0->unk8, 0.0f, ((void *)0x803A9A68->unk10 * 0xA) + 0x803A9A54, (void *)0x8008D010, arg0);
    func_800268D4(0, 0x3B, 0xFF);
}

void func_8002260C(void *arg1) {
    func_80014A98(arg1->unk4, 0, 4);
}

void *func_8002263C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *sp50;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp14;
    s32 sp10;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xE7000000;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0x300000;
    temp_v0_3->unk0 = 0xBA001402;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xB900031D;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk0 = 0xF7000000;
    temp_v0_5->unk4 = 0x10001;
    temp_v0_6 = *(void *)0x8007B2FC;
    temp_s0 = arg0 + arg2;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_t6 = (temp_s0 & 0x3FF) << 0xE;
    temp_t8 = (arg1 & 0x3FF) * 4;
    temp_t5 = temp_t6 | 0xF6000000;
    sp24 = temp_t8;
    sp28 = temp_t6;
    temp_v0_6->unk0 = (s32) (temp_t5 | temp_t8);
    temp_t7 = (arg0 & 0x3FF) << 0xE;
    temp_t9 = temp_t7 | temp_t8;
    sp1C = temp_t9;
    sp20 = temp_t7;
    temp_v0_6->unk4 = temp_t9;
    temp_v0_7 = *(void *)0x8007B2FC;
    temp_s1 = arg1 + arg3;
    temp_t2 = (temp_s1 & 0x3FF) * 4;
    temp_t9_2 = temp_t5 | temp_t2;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    sp10 = temp_t9_2;
    sp14 = temp_t2;
    sp50 = temp_v0_7;
    temp_v0_7->unk0 = temp_t9_2;
    temp_v0_7->unk4 = (s32) (sp20 | temp_t2);
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = (s32) ((sp20 | 0xF6000000) | temp_t2);
    temp_v0_8->unk4 = sp1C;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk0 = sp10;
    temp_v0_9->unk4 = (s32) (sp28 | sp24);
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_t0 = (((temp_s0 + 2) & 0x3FF) << 0xE) | 0xF6000000;
    temp_v0_10->unk0 = (s32) (temp_t0 | (((temp_s1 + 2) & 0x3FF) * 4));
    temp_t1 = ((temp_s1 + 1) & 0x3FF) * 4;
    temp_v0_10->unk4 = (s32) ((((arg0 + 3) & 0x3FF) << 0xE) | temp_t1);
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk0 = (s32) (temp_t0 | temp_t1);
    temp_v0_11->unk4 = (s32) ((((temp_s0 + 1) & 0x3FF) << 0xE) | (((arg1 + 3) & 0x3FF) * 4));
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk0 = 0x6000000;
    temp_v0_12->unk4 = 0x803A8FF8;
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk0 = (s32) (((((temp_s0 * 4) & 0xFFF) << 0xC) | 0xE4000000) | ((temp_s1 * 4) & 0xFFF));
    temp_v0_13->unk4 = (s32) (((((arg0 + 1) * 4) & 0xFFF) << 0xC) | (((arg1 + 1) * 4) & 0xFFF));
    temp_v0_14 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_14 + 8);
    temp_v0_14->unk4 = 0;
    temp_v0_14->unk0 = 0xB4000000;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0x4000400;
    temp_v0->unk0 = 0xB3000000;
    return temp_v0;
}
