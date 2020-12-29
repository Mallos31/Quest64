void func_80007A50(void) {
    s32 temp_a0;
    u16 temp_v0_2;
    void *temp_v0;

    *(void *)0x8007BCE4 = 0;
    if ((*(void *)0x80084F10 & 1) == 0) {
        *(void *)0x8007BCB0 = (void *) (((*(void *)0x80084F1C)->unk12 * 8) + 0x800547F0);
        func_80024260(0x871900, 0x8020C0D0, 0x873F20 - 0x871900);
        func_80024260(0xA725D0, 0x802A0000, 0xA7A190 - 0xA725D0);
        temp_v0 = *(void *)0x8007BCB0;
        temp_a0 = temp_v0->unk0;
        func_80024260(temp_a0, 0x8020E6F0, temp_v0->unk4 - temp_a0);
        func_800080E8();
        temp_v0_2 = *(void *)0x8007B2E8;
        *(void *)0x8007BCB4 = (u16)0;
        if (temp_v0_2 == 1) {
            func_80008AD8(0, 0x80054828);
            func_8002E768(1);
            return;
        }
        if (temp_v0_2 == 4) {
            func_80008AD8(0, 0x80054C04);
            func_8002E768(1);
        }
    }
}

void func_80007B64(void) {
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f8;
    f64 temp_f28;
    f64 temp_f30;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_v0_3;
    u16 temp_a1;
    u16 temp_t8;
    u16 temp_t9;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *phi_s1;
    f32 phi_f8;
    s32 phi_s4;

    temp_s4 = *(void *)0x8007BCE4;
    if (temp_s4 != 0) {
        temp_f30 = *(void *)0x80071110;
        temp_f28 = *(void *)0x80071118;
        phi_s1 = (void *)0x8007BD30;
        phi_s4 = temp_s4;
loop_2:
        temp_v0 = phi_s1->unk0;
        if (temp_v0 != 0) {
            if (temp_v0 != 1) {
                if (temp_v0 != 2) {
                    if (temp_v0 != 3) {

                    } else {
                        temp_s0 = phi_s1 + 0x14;
                        phi_s1->unk2 = (u16) (phi_s1->unk2 - 1);
                        temp_s0->unk10 = (f32) (temp_s0->unk10 - (phi_s1->unk10 / 15.0f));
                        if (phi_s1->unk2 == 0) {
                            phi_s1->unk0 = (u16)0U;
                            phi_s1->unk2 = (u16) phi_s1->unk80->unk10->unk2;
                            temp_s0->unk10 = (f32) phi_s1->unkC;
                            func_8001D8B0(temp_s0, 0, 1, 0, 1, 1);
                        }
                    }
                } else {
                    temp_v0_2 = phi_s1->unk2;
                    if (temp_v0_2 != 0) {
                        phi_s1->unk2 = (u16) (temp_v0_2 - 1);
                        temp_s0_2 = phi_s1 + 0x14;
                        temp_s0_2->unk10 = (f32) (temp_s0_2->unk10 + (phi_s1->unk10 / 15.0f));
                        if (phi_s1->unk2 == 0) {
                            temp_a1 = phi_s1->unk80->unk18;
                            func_8001D8B0(temp_s0_2, temp_a1, 1, temp_a1, 1, 1);
                        }
                    }
                }
            } else {
                temp_s0_3 = phi_s1 + 0x14;
                (void *)0x8007BCB8->unk0 = 0.0f;
                (void *)0x8007BCB8->unk4 = (f32) *(void *)0x80071120;
                func_800232F4(temp_s0_3->unk10, (void *)0x8007BCB8);
                func_80008290((void *)0x8007BCB8->unk0, (void *)0x8007BCB8->unk4, temp_s0_3);
                temp_t8 = phi_s1->unk2 - 1;
                phi_s1->unk2 = temp_t8;
                if ((temp_t8 & 0xFFFF) == 0) {
                    phi_s1->unk0 = (u16)0U;
                    phi_s1->unk2 = (u16) phi_s1->unk80->unk10->unk2;
                    func_8001D8B0(temp_s0_3, 0, 1, 0, 1, 1);
                    *(void *)0x8007BCB4 = (u16) (*(void *)0x8007BCB4 - 1);
                }
            }
        } else {
            if (2 == phi_s1->unk80->unk4) {
                temp_t9 = phi_s1->unk2 - 1;
                phi_s1->unk2 = temp_t9;
                if ((temp_t9 & 0xFFFF) == 0) {
                    if ((s32) *(void *)0x8007BCB4 < 3) {
                        phi_s1->unk0 = (u16)1U;
                        temp_s0_4 = phi_s1 + 0x14;
                        phi_s1->unk2 = (u16) ((func_80022FD0(2) + 1) * phi_s1->unk80->unk10->unkE);
                        func_8001D8B0(temp_s0_4, 1, 1, 1, 1, 1);
                        temp_f20 = phi_s1->unk4 - temp_s0_4->unk0;
                        temp_f22 = phi_s1->unk8 - temp_s0_4->unk8;
                        if (50.0 < (f64) sqrtf((temp_f20 * temp_f20) + (temp_f22 * temp_f22))) {
                            temp_s0_4->unk10 = func_80023210(temp_f20, temp_f22);
                        } else {
                            temp_v0_3 = func_80022FD0(0x10);
                            temp_f8 = (f32) temp_v0_3;
                            phi_f8 = temp_f8;
                            if (temp_v0_3 < 0) {
                                phi_f8 = temp_f8 + 4294967296.0f;
                            }
                            temp_s0_4->unk10 = (f32) (((f64) phi_f8 * temp_f28) - temp_f30);
                        }
                        *(void *)0x8007BCB4 = (u16) (*(void *)0x8007BCB4 + 1);
                    } else {
                        phi_s1->unk2 = (u16) ((func_80022FD0(2) + 1) * phi_s1->unk80->unk10->unk2);
                    }
                }
            }
        }
        temp_s4_2 = phi_s4 - 1;
        phi_s1 = phi_s1 + 0x84;
        phi_s4 = temp_s4_2;
        if (temp_s4_2 != 0) {
            goto loop_2;
        }
    }
}

void func_80007F18(s32 arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    void *temp_s0;
    void *temp_v1;
    void *phi_s1;
    ?32 phi_t0;
    void *phi_s4;
    s32 phi_s3;

    *(void *)0x8007BCE8 = 0;
    temp_s3 = *(void *)0x8007BCE4;
    if (temp_s3 != 0) {
        phi_s1 = (void *)0x8007BD30;
        phi_s4 = (void *)0x8007BCF0;
        phi_s3 = temp_s3;
loop_2:
        temp_f0 = phi_s1->unk14 - (void *)0x8007BAB8->unk14;
        temp_s0 = phi_s1 + 0x14;
        temp_f2 = phi_s1->unk1C - (void *)0x8007BAB8->unk1C;
        temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
        if (temp_f12 < *(void *)0x80071128) {
            phi_t0 = 0;
            if (temp_f12 < *(void *)0x80071124) {
                phi_t0 = 0x2000;
            }
            temp_v1 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
            temp_v1->unk4 = phi_t0;
            temp_v1->unk0 = 0xBA000C02;
            temp_s2 = phi_s1->unk80->unk10;
            func_8001DB38(temp_f12, 0, temp_s0, (temp_s0->unk52 * 0xC) + temp_s2, arg0);
            func_8001E0AC(temp_s0->unk58, temp_s0, (temp_s0->unk52 * 0xC) + temp_s2);
            func_80011860(temp_s0->unk0, temp_s0->unk4, temp_s0->unk8, temp_s0->unk2C, temp_s0->unk30, temp_s0->unk34, 5.0f);
            *phi_s4 = temp_s0;
            *(void *)0x8007BCE8 = (s32) (*(void *)0x8007BCE8 + 1);
            phi_s4 = phi_s4 + 4;
        }
        temp_s3_2 = phi_s3 - 1;
        phi_s1 = phi_s1 + 0x84;
        phi_s3 = temp_s3_2;
        if (temp_s3_2 != 0) {
            goto loop_2;
        }
    }
}

void *func_800080E8(void) {
    ? sp58;
    u16 temp_s2;
    u16 temp_s2_2;
    void *temp_ret;
    void *temp_v0;
    void *phi_s1;
    void *phi_s0;
    u16 phi_s2;
    void *phi_return;
    void *phi_return_2;

    temp_v0 = (*(void *)0x80084F18)->unk38;
    phi_return = temp_v0;
    if (temp_v0 != 0) {
        temp_s2 = temp_v0->unk0;
        *(void *)0x8007BCE4 = 0;
        phi_return = temp_v0;
        if (temp_s2 != 0) {
            phi_s1 = temp_v0->unk4;
            phi_s0 = (void *)0x8007BD30;
            phi_s2 = temp_s2;
            phi_return_2 = temp_v0;
loop_3:
            if (*(void *)0x80084EE8 == phi_s1->unk0) {
                phi_s0->unk0 = (u16)0;
                phi_s0->unk2 = (u16)1;
                phi_s0->unk80 = phi_s1;
                phi_s0->unk14 = (f32) phi_s1->unk1C;
                phi_s0->unk1C = (f32) phi_s1->unk20;
                phi_s0->unk20 = 0.0f;
                phi_s0->unk28 = 0.0f;
                phi_s0->unk24 = (f32) phi_s1->unk24;
                phi_s0->unk3C = 50.0f;
                phi_s0->unk38 = (f32) phi_s1->unk28;
                func_8000EE60(phi_s0->unk14, phi_s0->unk18, (bitwise s32) phi_s0->unk1C, 0xA00, &sp58);
                phi_s0->unk18 = sp5C;
                phi_s0->unk40 = sp64;
                phi_s0->unk44 = sp68;
                phi_s0->unk48 = sp6C;
                temp_ret = func_8001D8B0(phi_s0 + 0x14, 0, 1, 0, 1, (?32) (u16)1);
                phi_s0->unk4 = (f32) phi_s1->unk1C;
                phi_s0->unk8 = (f32) phi_s1->unk20;
                phi_s0->unkC = (f32) phi_s1->unk24;
                if ((phi_s1->unk5 & 1) != 0) {
                    phi_s0->unk74 = (u16)0x1000;
                } else {
                    phi_s0->unk74 = (u16)0;
                }
                *(void *)0x8007BCE4 = (s32) (*(void *)0x8007BCE4 + 1);
                phi_s0 = phi_s0 + 0x84;
                phi_return_2 = temp_ret;
            }
            temp_s2_2 = phi_s2 - 1;
            phi_s1 = phi_s1 + 0x2C;
            phi_s2 = temp_s2_2;
            phi_return = phi_return_2;
            if (temp_s2_2 != 0) {
                goto loop_3;
            }
        }
    }
    return phi_return;
}

void *func_80008290(f32 arg0, f32 arg1, void *arg2) {
    func_8000835C(&arg0, &arg1, arg2);
    arg2->unk18 = arg0;
    arg2->unk20 = arg1;
    arg2->unk0 = (f32) (arg2->unk0 + arg0);
    arg2->unk8 = (f32) (arg2->unk8 + arg1);
    (void *)0x8007BCC8->unk0 = 4.0f;
    func_8000EE60(arg2->unk0, arg2->unk4, (bitwise s32) arg2->unk8, 0xA01, (void *)0x8007BCC8);
    arg2->unk0 = (f32) (void *)0x8007BCC8->unk0;
    arg2->unk4 = (f32) (void *)0x8007BCC8->unk4;
    arg2->unk8 = (f32) (void *)0x8007BCC8->unk8;
    arg2->unk2C = (f32) (void *)0x8007BCC8->unkC;
    arg2->unk30 = (f32) (void *)0x8007BCC8->unk10;
    arg2->unk34 = (f32) (void *)0x8007BCC8->unk14;
    return (void *)0x8007BCC8;
}

f32 func_8000835C(void *arg0, void *arg1, void *arg2) {
    f32 sp68;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;
    f32 temp_ret;
    f32 temp_ret_2;
    f32 temp_ret_3;
    f64 temp_f0_5;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    void *temp_s0;
    void *temp_s0_2;
    s32 phi_s4;
    void *phi_s2;
    f32 phi_f14;
    s32 phi_s4_2;
    s32 phi_s1;
    s32 phi_s4_3;
    void *phi_s2_2;
    f32 phi_f14_2;
    s32 phi_s4_4;
    s32 phi_s1_2;
    f32 phi_return;
    s32 phi_s4_5;
    s32 phi_s4_6;
    f32 phi_return_2;
    f32 phi_return_3;
    f32 phi_return_4;
    f32 phi_return_5;
    f32 phi_return_6;

    temp_f16 = arg2->unk28;
    temp_f18 = arg2->unk24;
    temp_f30 = *arg1 + arg2->unk8;
    temp_f14 = temp_f16 * temp_f18;
    temp_f28 = *arg0 + arg2->unk0;
    temp_f20 = temp_f28 - (void *)0x8007BAB8->unk14;
    temp_f24 = ((void *)0x8007BAB8->unk3C * (void *)0x8007BAB8->unk38) + temp_f14;
    temp_f22 = temp_f30 - (void *)0x8007BAB8->unk1C;
    phi_s4 = 0;
    phi_return_5 = (bitwise f32) (void *)0x8007BAB8;
    if (temp_f20 < temp_f24) {
        temp_f0 = -temp_f24;
        phi_s4 = 0;
        phi_return_5 = temp_f0;
        if (temp_f0 < temp_f20) {
            phi_s4 = 0;
            phi_return_5 = temp_f0;
            if (temp_f22 < temp_f24) {
                phi_s4 = 0;
                phi_return_5 = temp_f0;
                if (temp_f0 < temp_f22) {
                    sp68 = temp_f14;
                    temp_ret = sqrtf((temp_f20 * temp_f20) + (temp_f22 * temp_f22), temp_f14);
                    temp_f0_2 = temp_ret;
                    phi_s4 = 0;
                    phi_return_5 = temp_ret;
                    if (temp_f0_2 < temp_f24) {
                        temp_f2 = temp_f24 / temp_f0_2;
                        *arg0 = (f32) ((*(void *)0x8007BACC + (temp_f20 * temp_f2)) - arg2->unk0);
                        *arg1 = (f32) ((*(void *)0x8007BAD4 + (temp_f22 * temp_f2)) - arg2->unk8);
                        phi_s4 = 1;
                        phi_return_5 = temp_ret;
                    }
                }
            }
        }
    }
    temp_s1 = *(void *)0x8007BCE8;
    phi_s4_3 = phi_s4;
    phi_f14_2 = temp_f16 * temp_f18;
    phi_return_3 = phi_return_5;
    if (temp_s1 != 0) {
        phi_s4_3 = phi_s4;
        phi_f14_2 = temp_f16 * temp_f18;
        phi_return_3 = phi_return_5;
        if (phi_s4 == 0) {
            phi_s2 = (void *)0x8007BCF0;
            phi_f14 = temp_f16 * temp_f18;
            phi_s1 = temp_s1;
            phi_s4_3 = phi_s4;
            phi_f14_2 = temp_f16 * temp_f18;
            phi_s4_5 = phi_s4;
            phi_return_3 = phi_return_5;
            phi_return_6 = phi_return_5;
            if (temp_s1 != 0) {
loop_9:
                temp_s0 = *phi_s2;
                phi_s4_2 = phi_s4_5;
                phi_return_4 = phi_return_6;
                if (temp_s0 != arg2) {
                    temp_f20_2 = temp_f28 - temp_s0->unk0;
                    temp_f22_2 = temp_f30 - temp_s0->unk8;
                    temp_f24_2 = (temp_s0->unk28 * temp_s0->unk24) + phi_f14;
                    phi_s4_2 = phi_s4_5;
                    phi_return_4 = phi_return_6;
                    if (temp_f20_2 < temp_f24_2) {
                        temp_f0_3 = -temp_f24_2;
                        phi_s4_2 = phi_s4_5;
                        phi_return_4 = temp_f0_3;
                        if (temp_f0_3 < temp_f20_2) {
                            phi_s4_2 = phi_s4_5;
                            phi_return_4 = temp_f0_3;
                            if (temp_f22_2 < temp_f24_2) {
                                phi_s4_2 = phi_s4_5;
                                phi_return_4 = temp_f0_3;
                                if (temp_f0_3 < temp_f22_2) {
                                    sp68 = phi_f14;
                                    temp_ret_2 = sqrtf((temp_f20_2 * temp_f20_2) + (temp_f22_2 * temp_f22_2), phi_f14);
                                    temp_f0_4 = temp_ret_2;
                                    phi_s4_2 = phi_s4_5;
                                    phi_return_4 = temp_ret_2;
                                    if (temp_f0_4 < temp_f24_2) {
                                        temp_f2_2 = temp_f24_2 / temp_f0_4;
                                        *arg0 = (f32) ((temp_s0->unk0 + (temp_f20_2 * temp_f2_2)) - arg2->unk0);
                                        *arg1 = (f32) ((temp_s0->unk8 + (temp_f22_2 * temp_f2_2)) - arg2->unk8);
                                        phi_s4_2 = 1;
                                        phi_return_4 = temp_ret_2;
                                    }
                                }
                            }
                        }
                    }
                }
                temp_s1_2 = phi_s1 - 1;
                phi_s4_3 = phi_s4_2;
                phi_f14_2 = phi_f14;
                phi_return_3 = phi_return_4;
                if (phi_s4_2 == 0) {
                    phi_s2 = phi_s2 + 4;
                    phi_f14 = phi_f14;
                    phi_s1 = temp_s1_2;
                    phi_s4_3 = phi_s4_2;
                    phi_f14_2 = phi_f14;
                    phi_s4_5 = phi_s4_2;
                    phi_return_3 = phi_return_4;
                    phi_return_6 = phi_return_4;
                    if (temp_s1_2 != 0) {
                        goto loop_9;
                    }
                }
            }
        }
    }
    temp_s1_3 = *(void *)0x80084F38;
    phi_return = phi_return_3;
    if (temp_s1_3 != 0) {
        phi_return = phi_return_3;
        if (phi_s4_3 == 0) {
            phi_return = phi_return_3;
            if (temp_s1_3 != 0) {
                phi_s2_2 = (void *)0x80084F40;
                phi_s1_2 = temp_s1_3;
                phi_s4_6 = phi_s4_3;
loop_22:
                temp_s0_2 = *phi_s2_2;
                temp_f0_5 = (f64) temp_s0_2->unk10;
                temp_f20_3 = temp_f28 - temp_s0_2->unk0;
                temp_f22_3 = temp_f30 - temp_s0_2->unk8;
                temp_f24_3 = (f32) ((f64) phi_f14_2 + (temp_f0_5 + temp_f0_5));
                phi_s4_4 = phi_s4_6;
                phi_return_2 = (f32) temp_f0_5;
                if (temp_f20_3 < temp_f24_3) {
                    temp_f0_6 = -temp_f24_3;
                    phi_s4_4 = phi_s4_6;
                    phi_return_2 = temp_f0_6;
                    if (temp_f0_6 < temp_f20_3) {
                        phi_s4_4 = phi_s4_6;
                        phi_return_2 = temp_f0_6;
                        if (temp_f22_3 < temp_f24_3) {
                            phi_s4_4 = phi_s4_6;
                            phi_return_2 = temp_f0_6;
                            if (temp_f0_6 < temp_f22_3) {
                                temp_ret_3 = sqrtf((temp_f20_3 * temp_f20_3) + (temp_f22_3 * temp_f22_3));
                                temp_f0_7 = temp_ret_3;
                                phi_s4_4 = phi_s4_6;
                                phi_return_2 = temp_ret_3;
                                if (temp_f0_7 < temp_f24_3) {
                                    temp_f2_3 = temp_f24_3 / temp_f0_7;
                                    *arg0 = (f32) ((temp_s0_2->unk0 + (temp_f20_3 * temp_f2_3)) - arg2->unk0);
                                    *arg1 = (f32) ((temp_s0_2->unk8 + (temp_f22_3 * temp_f2_3)) - arg2->unk8);
                                    phi_s4_4 = 1;
                                    phi_return_2 = temp_ret_3;
                                }
                            }
                        }
                    }
                }
                temp_s1_4 = phi_s1_2 - 1;
                phi_return = phi_return_2;
                if (phi_s4_4 == 0) {
                    phi_s2_2 = phi_s2_2 + 4;
                    phi_s1_2 = temp_s1_4;
                    phi_return = phi_return_2;
                    phi_s4_6 = phi_s4_4;
                    if (temp_s1_4 != 0) {
                        goto loop_22;
                    }
                }
            }
        }
    }
    return phi_return;
}

void *func_800086E4(s32 arg0) {
    void *sp28;
    f32 temp_f12;
    f32 temp_f12_2;
    f64 temp_f2;
    u16 temp_a1;
    u16 temp_v1;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    f64 phi_f2;
    f32 phi_f12;
    u16 phi_a1;
    void *phi_v0;
    u16 phi_a1_2;
    void *phi_return;

    temp_s0 = (arg0 * 0x84) + 0x8007BD30;
    temp_s0->unk0 = (u16)2;
    if ((temp_s0->unk80->unk5 & 2) != 0) {
        temp_s0->unk2 = (u16)0;
    } else {
        temp_s0->unk2 = (u16)0xF;
        temp_f12 = func_80023210(*(void *)0x8007BACC - temp_s0->unk14, *(void *)0x8007BAD4 - temp_s0->unk1C) - temp_s0->unk24;
        temp_f2 = (f64) temp_f12;
        phi_f2 = temp_f2;
        phi_f12 = temp_f12;
        if (temp_f2 < *(void *)0x80071130) {
            temp_f12_2 = (f32) (temp_f2 + *(void *)0x80071138);
            phi_f2 = (f64) temp_f12_2;
            phi_f12 = temp_f12_2;
        }
        if (*(void *)0x80071140 < phi_f2) {
            phi_f12 = (f32) (phi_f2 - *(void *)0x80071148);
        }
        temp_s0->unk10 = phi_f12;
        temp_s0->unk2 = (u16)0xF;
        func_8001D8B0(phi_f12, temp_s0 + 0x14, 1, 1, 1, 1, 1);
    }
    temp_v0 = temp_s0->unk80;
    temp_v1 = temp_v0->unk2;
    if (temp_v1 != 2) {
        if (temp_v1 == 5) {
            if (func_8000B9D8(temp_v0->unk6) == 0) {
                phi_a1 = temp_s0->unk80->unk8;
            } else {
                temp_v0_2 = temp_s0->unk80;
                temp_a1 = temp_v0_2->unkA;
                phi_a1 = temp_a1;
                if (temp_v0_2->unk6 == 7) {
                    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x8080);
                    *(void *)0x8007B2EC = 0x16;
                    phi_a1 = temp_a1;
                }
            }
            return func_80008A00(temp_s0, phi_a1);
        }
        if (temp_v1 == 6) {
            func_80008A00(temp_s0, temp_v0->unk8);
            (void *)0x800905C8->unk0 = 2;
            (void *)0x800905C8->unk8 = 0x8004C280;
            (void *)0x800905C8->unkC = 0x8004C288;
            *(void *)0x800905C4 = -1;
            *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x10);
            return (void *)0x800905C8;
        }
        phi_return = func_80008A00(temp_s0, temp_v0->unk8);
    } else {
        if (func_80021240(temp_v0->unk7) == 0) {
            phi_v0 = NULL;
            phi_a1_2 = temp_s0->unk80->unk8;
        } else {
            phi_v0 = (void *)1;
            phi_a1_2 = temp_s0->unk80->unkA;
        }
        sp28 = phi_v0;
        func_80008A00(temp_s0, phi_a1_2);
        temp_v0_3 = phi_v0;
        phi_return = temp_v0_3;
        if (temp_v0_3 == 0) {
            func_800212A0(temp_s0->unk80->unk7);
            (void *)0x8007BAB8->unk8 = (u16) ((void *)0x8007BAB8->unk8 | 0x40);
            return (void *)0x8007BAB8;
        }
    }
    return phi_return;
}

void *func_80008948(s32 arg0) {
    void *sp20;
    void *temp_ret;
    void *temp_v0;
    void *temp_v1;

    temp_v1 = (arg0 * 0x84) + 0x8007BD30;
    temp_v0 = temp_v1->unk80;
    if (temp_v0->unk4 == 2) {
        temp_v1->unk0 = (u16)0;
        sp20 = temp_v1;
        temp_ret = func_80022FD0(0x1E);
        temp_v1->unk2 = (s16) (temp_ret + 0x1E);
        return temp_ret;
    }
    if ((temp_v0->unk5 & 2) != 0) {
        temp_v1->unk0 = (u16)0;
        temp_v1->unk2 = (s16) temp_v0->unk10->unk2;
        return temp_v0;
    }
    temp_v1->unk0 = (u16)3;
    temp_v1->unk2 = (u16)0xF;
    return func_8001D8B0(temp_v1 + 0x14, 1, 1, 1, 1, 1);
}

s32 func_80008A00(void *arg0, s32 arg1) {
    s32 temp_v0;
    void *temp_a3;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;

    temp_a3 = arg0;
    arg0 = temp_a3;
    func_80024260(arg1 + 0xD305E0, 0x8007C570, 0x400, temp_a3);
    phi_v0 = 0;
    phi_v1 = (void *)0x8007C970;
    if (arg0->unk80->unk14 != 0) {
loop_1:
        temp_v1 = phi_v1 + 4;
        temp_v1->unk-4 = (u8) *(arg0->unk80->unk14 + phi_v0);
        temp_v1->unk-3 = (u8) (arg0->unk80->unk14 + phi_v0)->unk1;
        temp_v1->unk-2 = (u8) (arg0->unk80->unk14 + phi_v0)->unk2;
        temp_v0 = phi_v0 + 4;
        temp_v1->unk-1 = (u8) (arg0->unk80->unk14 + phi_v0)->unk3;
        phi_v0 = temp_v0;
        phi_v1 = temp_v1;
        if (temp_v0 != 0x20) {
            goto loop_1;
        }
        return temp_v0;
    }
    *(void *)0x8007C970 = (u8)0xFF;
    return 0;
}

void *func_80008AD8(s32 arg0, void *arg1) {
    s32 temp_v1;
    s32 temp_v1_2;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a1;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    void *phi_a0;

    phi_a1 = arg1;
    phi_v0 = (void *)0x8007C570;
    phi_v1 = 0x400;
loop_1:
    temp_v1 = phi_v1 - 1;
    temp_v0_2 = phi_v0 + 1;
    temp_v0_2->unk-1 = (u8) *phi_a1;
    phi_a1 = phi_a1 + 1;
    phi_v0 = temp_v0_2;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    temp_v0 = (arg0 * 0x84) + 0x8007BD30;
    if (temp_v0->unk80->unk14 != 0) {
        phi_v1_2 = 0;
        phi_a0 = (void *)0x8007C970;
loop_4:
        temp_a0 = phi_a0 + 4;
        temp_a0->unk-4 = (u8) *(temp_v0->unk80->unk14 + phi_v1_2);
        temp_a0->unk-3 = (u8) (temp_v0->unk80->unk14 + phi_v1_2)->unk1;
        temp_a0->unk-2 = (u8) (temp_v0->unk80->unk14 + phi_v1_2)->unk2;
        temp_v1_2 = phi_v1_2 + 4;
        temp_a0->unk-1 = (u8) (temp_v0->unk80->unk14 + phi_v1_2)->unk3;
        phi_v1_2 = temp_v1_2;
        phi_a0 = temp_a0;
        if (temp_v1_2 != 0x20) {
            goto loop_4;
        }
        return temp_v0;
    }
    *(void *)0x8007C970 = (u8)0xFF;
    return temp_v0;
}
