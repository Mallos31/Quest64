? func_800425E0(void *arg0, s32 arg1, ?32 arg2) {
    if (arg1 == 1) {
        arg0->unk0 = arg2;
        return 0;
    }
    if (arg1 != 6) {
        return 0;
    }
    arg0->unk14 = arg2;
    return 0;
}

void *func_80042614(void *arg0, s32 arg2, s32 arg4) {
    void *temp_a0;
    void *temp_v0;

    temp_a0 = arg0->unk0;
    temp_v0 = temp_a0->unk4(temp_a0, arg4);
    temp_v0->unk4 = (s32) ((arg2 * 2) & 0xFFFF);
    temp_v0->unk0 = 0x8000000;
    temp_v0->unk8 = 0xD000000;
    temp_v0->unkC = 0x4400580;
    temp_v0->unk14 = (s32) ((arg2 * 4) & 0xFFFF);
    temp_v0->unk10 = 0x8000000;
    temp_v0->unk18 = 0x6000000;
    temp_v0 = temp_v0 + 0x20;
    temp_v0->unk-4 = (s32) arg0->unk14;
    return temp_v0;
}

? func_800426A0(void) {
    if ((*(void *)0xA450000C & 0x80000000) != 0) {
        return 1;
    }
    return 0;
}

s32 func_800426D0(void *arg0, void *arg1, s32 arg2) {
    s32 temp_v0;

    temp_v0 = arg2 * 0x10;
    *(arg0->unk60 + temp_v0) = arg1;
    (arg0->unk60 + temp_v0)->unk7 = (u8) arg1->unk1;
    (arg0->unk60 + temp_v0)->unk9 = (u8) arg1->unk0;
    (arg0->unk60 + temp_v0)->unk8 = (u8) arg1->unk2;
    (arg0->unk60 + temp_v0)->unk4 = (s16) arg1->unkC;
    return temp_v0;
}

s32 func_80042724(void *arg0, s32 arg1) {
    s32 temp_v0;

    temp_v0 = arg1 * 0x10;
    (arg0->unk60 + temp_v0)->unk6 = (u8)0;
    (arg0->unk60 + temp_v0)->unkA = (u8)0;
    (arg0->unk60 + temp_v0)->unk7 = (u8)0x40;
    (arg0->unk60 + temp_v0)->unk9 = (u8)0x7F;
    (arg0->unk60 + temp_v0)->unk8 = (u8)5;
    (arg0->unk60 + temp_v0)->unkB = (u8)0;
    (arg0->unk60 + temp_v0)->unk4 = (u16)0xC8;
    (arg0->unk60 + temp_v0)->unkC = 1.0f;
    return temp_v0;
}

void *func_800427A4(void *arg0, void *arg1) {
    s32 temp_s0;
    s32 temp_s1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_s0;
    s32 phi_s0_2;
    void *phi_return;

    phi_v0 = arg1;
loop_1:
    temp_s1 = phi_v0->unkC;
    temp_v0 = phi_v0 + 4;
    phi_v0 = temp_v0;
    if (temp_s1 == 0) {
        goto loop_1;
    }
    phi_s0 = 0;
    phi_s0_2 = 0;
    phi_return = temp_v0;
    if ((s32) arg0->unk34 > 0) {
loop_3:
        func_80042724(arg0, phi_s0);
        temp_s0 = phi_s0 + 1;
        phi_s0 = temp_s0;
        phi_s0_2 = temp_s0;
        phi_return = func_800426D0(arg0, temp_s1, phi_s0);
        if (temp_s0 < (s32) arg0->unk34) {
            goto loop_3;
        }
    }
    if (arg1->unk8 != 0) {
        func_80042724(arg0, phi_s0_2);
        phi_return = func_800426D0(arg0, arg1->unk8, 9);
    }
    return phi_return;
}

void func_80042858(void) {

}

s32 func_80042860(void *arg0, s32 arg1) {
    s32 temp_v1;

    temp_v1 = arg0->unk24 - arg1;
    if (temp_v1 >= 0) {
        return temp_v1;
    }
    return 0x3E8;
}

s32 func_80042884(void *arg0, void *arg1) {
    return (s32) (((u32) (((s32) ((arg0->unk36 * arg0->unk33) * arg0->unk30) >> 6) * ((s32) (((arg1->unk60 + (arg0->unk31 * 0x10))->unk9 * arg0->unk20->unkD) * arg1->unk32) >> 0xE)) >> 0xF) << 0x10) >> 0x10;
}

void func_8004290C(void *arg0, void *arg1, s32 arg2) {
    void *sp54;
    s16 sp50;
    void *temp_s0;
    void *temp_s1;
    void *temp_s6;
    void *phi_s0;

    temp_s6 = arg1->unk10;
    if (temp_s6->unk34 == 0) {
        temp_s0 = arg0->unk50;
        phi_s0 = temp_s0;
        if (temp_s0 != 0) {
loop_2:
            temp_s1 = phi_s0->unk0;
            if (6 == phi_s0->unkC) {
                if (arg1 == phi_s0->unk10) {
                    if (temp_s1 != 0) {
                        temp_s1->unk8 = (s32) (temp_s1->unk8 + phi_s0->unk8);
                    }
                    func_80036820(phi_s0);
                    func_80036850(phi_s0, arg0 + 0x48);
                }
            }
            phi_s0 = temp_s1;
            if (temp_s1 != 0) {
                goto loop_2;
            }
        }
    }
    temp_s6->unk33 = (u8)0;
    temp_s6->unk34 = (u8)3U;
    temp_s6->unk30 = (u8)0;
    temp_s6->unk24 = (s32) (arg0->unk1C + arg2);
    func_80049D50(arg0->unk14, arg1, 0);
    func_80044190(arg0->unk14, arg1, 0, arg2);
    sp50 = (u16)5;
    sp54 = arg1;
    func_8003FE6C(arg0 + 0x48, &sp50, arg2);
}

u8 func_80042A38(void *arg0, s32 arg1, s32 arg2) {
    void *sp2C;
    u8 sp1F;
    s32 temp_t0;
    s32 temp_v1;
    void *temp_a3;
    void *temp_v0;
    void *phi_a3;
    s32 phi_t0;
    u8 phi_t1;

    temp_a3 = arg0->unk50;
    phi_t1 = (u8)1U;
    if (temp_a3 != 0) {
        phi_a3 = temp_a3;
        phi_t0 = 0;
loop_2:
        temp_v1 = phi_a3->unk8;
        temp_v0 = phi_a3->unk0;
        temp_t0 = phi_t0 + temp_v1;
        if ((5 == phi_a3->unkC) && (arg1 == phi_a3->unk10)) {
            if (arg2 < temp_t0) {
                if (temp_v0 != 0) {
                    temp_v0->unk8 = (s32) (temp_v0->unk8 + temp_v1);
                }
                sp2C = phi_a3;
                sp1F = (u8)1U;
                arg0 = arg0;
                func_80036820(phi_a3, phi_a3);
                func_80036850(sp2C, arg0 + 0x48);
                phi_t1 = (u8)1U;
            } else {
                phi_t1 = (u8)0U;
            }
        } else {
            phi_a3 = temp_v0;
            phi_t0 = temp_t0;
            phi_t1 = (u8)1U;
            if (temp_v0 != 0) {
                goto loop_2;
            }
        }
    }
    return phi_t1;
}

void *func_80042AE0(void *arg0, s32 arg1) {
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_v0;
    void *phi_return;
    void *phi_return_2;

    temp_v1 = arg0->unk64;
    phi_v1 = temp_v1;
    phi_v0 = NULL;
    phi_return = NULL;
    phi_return_2 = NULL;
    if (temp_v1 != 0) {
loop_1:
        if (phi_v1 == (arg1 - 4)) {
            if (phi_v0 != 0) {
                *phi_v0 = (void *) *phi_v1;
            } else {
                arg0->unk64 = (void *) *phi_v1;
            }
            if (phi_v1 == arg0->unk68) {
                arg0->unk68 = phi_v0;
            }
            *phi_v1 = (void *) arg0->unk6C;
            arg0->unk6C = phi_v1;
            return phi_return;
        }
        temp_v0 = phi_v1;
        temp_v1_2 = *phi_v1;
        phi_v1 = temp_v1_2;
        phi_v0 = temp_v0;
        phi_return = temp_v0;
        phi_return_2 = temp_v0;
        if (temp_v1_2 != 0) {
            goto loop_1;
        }
    }
    return phi_return_2;
}

void func_80042B50(void *arg0) {
    s16 sp28;
    s32 sp24;
    s32 sp20;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *phi_a3;

    temp_a3 = arg0;
    temp_a2 = arg0->unk18;
    if (arg0->unk2C == 1) {
        if (temp_a2 != 0) {
            sp20 = temp_a2;
            arg0 = temp_a3;
            temp_a3_2 = arg0;
            if (func_80049BA0(temp_a2, &sp24, temp_a2, temp_a3) != 0) {
                phi_a3 = temp_a3_2;
                if (temp_a3_2->unk84 != 0) {
                    sp20 = temp_a2;
                    arg0 = temp_a3_2;
                    temp_a3_3 = arg0;
                    phi_a3 = temp_a3_3;
                    if ((func_80049768(temp_a2, temp_a2, temp_a3_2) + sp24) >= temp_a3_3->unk80->unk8) {
                        temp_a1 = temp_a3_3->unk7C;
                        arg0 = temp_a3_3;
                        func_8004974C(temp_a2, temp_a1, temp_a2, temp_a3_3);
                        temp_v0 = arg0->unk84;
                        phi_a3 = arg0;
                        if (temp_v0 != -1) {
                            arg0->unk84 = (s32) (temp_v0 - 1);
                            phi_a3 = arg0;
                        }
                    }
                }
                sp28 = (u16)0;
                func_8003FE6C(phi_a3 + 0x48, &sp28, phi_a3->unk24 * sp24, phi_a3);
            }
        }
    }
}

void func_80042C2C(void *arg0, void *arg1) {
    void *temp_a2;
    void *temp_v0;

    if (arg0->unk8 == 0xFF) {
        temp_v0 = arg0 + 4;
        if (arg0->unk9 == 0x51) {
            temp_a2 = arg1->unk18;
            if (temp_a2 != 0) {
                arg1->unk24 = (s32) ((f32) (((temp_v0->unk7 << 0x10) | (temp_v0->unk8 << 8)) | temp_v0->unk9) * temp_a2->unk14);
                return;
            }
            arg1->unk24 = 0x1E8;
        }
    }
}

s32 func_80042CA4(void *arg0, void *arg1) {
    s32 temp_v1;
    s32 phi_v1;
    s32 phi_v1_2;

    temp_v1 = ((arg1->unk60 + (arg0->unk31 * 0x10))->unk7 + arg0->unk20->unkC) - 0x40;
    phi_v1 = temp_v1;
    if (temp_v1 <= 0) {
        phi_v1 = 0;
    }
    phi_v1_2 = phi_v1;
    if (phi_v1 >= 0x7F) {
        phi_v1_2 = 0x7F;
    }
    return phi_v1_2 & 0xFF;
}

void *func_80042CEC(void *arg0, s32 arg1, s32 arg2) {
    u8 temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;

    temp_v1 = arg0->unk64;
    if (temp_v1 != 0) {
        phi_v1 = temp_v1;
loop_2:
        if ((arg1 & 0xFF) == phi_v1->unk32) {
            if ((arg2 & 0xFF) == phi_v1->unk31) {
                temp_a0 = phi_v1->unk35;
                if (3 != temp_a0) {
                    if (4 != temp_a0) {
                        return phi_v1;
                    }
                }
            }
        }
        temp_v1_2 = phi_v1->unk0;
        phi_v1 = temp_v1_2;
        if (temp_v1_2 != 0) {
            goto loop_2;
        }
    }
    return NULL;
}

void *func_80042D60(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_v1;

    temp_v1 = arg0->unk6C;
    if (temp_v1 != 0) {
        arg0->unk6C = (void *) temp_v1->unk0;
        temp_v1->unk0 = NULL;
        if (arg0->unk64 == 0) {
            arg0->unk64 = temp_v1;
        } else {
            *arg0->unk68 = temp_v1;
        }
        arg0->unk68 = temp_v1;
        temp_v1->unk31 = (s8) (arg3 & 0xFF);
        temp_v1->unk32 = (s8) (arg1 & 0xFF);
        temp_v1->unk33 = (s8) (arg2 & 0xFF);
        temp_v1->unk14 = temp_v1;
    }
    return temp_v1;
}

void *func_80042DD0(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 temp_t0;
    s32 temp_t3;
    s32 temp_t5;
    s32 temp_t6;
    u8 temp_t2;
    void *temp_a2;
    void *temp_a3;
    void *temp_v0;
    s32 phi_v1;
    s32 phi_t0;
    s32 phi_t0_2;
    s32 phi_v1_2;

    temp_v0 = *(arg0->unk60 + ((arg3 & 0xFF) * 0x10));
    temp_t6 = arg1 & 0xFF;
    temp_t3 = arg2 & 0xFF;
    temp_t0 = temp_v0->unkE;
    phi_v1 = 1;
    phi_t0 = (s32) temp_t0;
    if ((s32) temp_t0 > 0) {
loop_1:
        temp_t5 = (s32) (phi_v1 + phi_t0) / 2;
        temp_a3 = (temp_v0 + (temp_t5 * 4))->unkC;
        temp_a2 = temp_a3->unk4;
        temp_t2 = temp_a2->unk2;
        if (temp_t6 >= (s32) temp_t2) {
            if ((s32) temp_a2->unk3 >= temp_t6) {
                if (temp_t3 >= (s32) temp_a2->unk0) {
                    if ((s32) temp_a2->unk1 >= temp_t3) {
                        return temp_a3;
                    }
                }
            }
        }
        if (temp_t6 >= (s32) temp_t2) {
            if (temp_t3 < (s32) temp_a2->unk0) {
                if ((s32) temp_a2->unk3 >= temp_t6) {
block_9:
                    phi_t0_2 = temp_t5 - 1;
                    phi_v1_2 = phi_v1;
                } else {
block_10:
                    phi_t0_2 = phi_t0;
                    phi_v1_2 = temp_t5 + 1;
                }
            } else {
                goto block_10;
            }
        } else {
            goto block_9;
        }
        phi_v1 = phi_v1_2;
        phi_t0 = phi_t0_2;
        if (phi_t0_2 >= phi_v1_2) {
            goto loop_1;
        }
    }
    return NULL;
}



Failed to decompile function func_80042ECC:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_800436E4(void) {

}

Failed to decompile function func_800436EC:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_80043D10(void *arg0, void *arg1) {
    s16 temp_s3;
    void *temp_s0;
    void *temp_s1;
    void *phi_s0;

    temp_s0 = arg0->unk50;
    if (temp_s0 != 0) {
        phi_s0 = temp_s0;
loop_2:
        temp_s3 = phi_s0->unkC;
        temp_s1 = phi_s0->unk0;
        if (temp_s3 != 0x16) {
            if (temp_s3 == 0x17) {
block_4:
                if (arg1 == phi_s0->unk10) {
                    arg0->unk78(phi_s0->unk14);
                    func_80036820(phi_s0);
                    if (temp_s1 != 0) {
                        temp_s1->unk8 = (s32) (temp_s1->unk8 + phi_s0->unk8);
                    }
                    func_80036850(phi_s0, arg0 + 0x48);
                    if (temp_s3 == 0x16) {
                        arg1->unk37 = (u8) (arg1->unk37 & 0xFE);
                    } else {
                        arg1->unk37 = (u8) (arg1->unk37 & 0xFD);
                    }
                    if (arg1->unk37 != 0) {
block_11:
                        phi_s0 = temp_s1;
                        if (temp_s1 != 0) {
                            goto loop_2;
                        }
                    }
                } else {
                    goto block_11;
                }
            } else {
                goto block_11;
            }
        } else {
            goto block_4;
        }
    }
}


void func_80043E14(void *arg0) {
    s32 temp_s0;
    s32 phi_s2;
    s32 phi_s0;

    phi_s2 = 0;
    phi_s0 = 0;
    if ((s32) arg0->unk34 > 0) {
loop_1:
        *(arg0->unk60 + phi_s2) = 0;
        func_80042724(arg0, phi_s0);
        temp_s0 = phi_s0 + 1;
        phi_s2 = phi_s2 + 0x10;
        phi_s0 = temp_s0;
        if (temp_s0 < (s32) arg0->unk34) {
            goto loop_1;
        }
    }
}

void func_80043E84(void *arg0, void *arg1) {
    s32 sp2C;
    s32 temp_a0;
    s32 temp_a2;
    void *temp_v0;
    void *phi_v1;
    s32 phi_a0;

    temp_a2 = arg1->unkC;
    arg0->unk20 = 0;
    arg0->unk18 = 0;
    arg0->unk30 = (u16)0xFF;
    arg0->unk24 = 0x1E8;
    arg0->unk28 = 0;
    arg0->unk2C = 0;
    arg0->unk32 = (u16)0x7FFF;
    arg0->unk14 = (s32) *(void *)0x80070990;
    arg0->unk5C = 0x3E80;
    arg0->unk1C = 0;
    arg0->unk35 = (u8) arg1->unk9;
    arg0->unk70 = (s32) arg1->unk10;
    arg0->unk74 = (s32) arg1->unk14;
    arg0->unk7C = 0;
    arg0->unk80 = 0;
    arg0->unk84 = 0;
    arg0->unk38 = (u16)9;
    arg0->unk78 = (s32) arg1->unk18;
    arg0->unk34 = (u8) arg1->unk8;
    sp2C = temp_a2;
    arg0->unk60 = func_80036660(0, 0, temp_a2, arg1->unk8, 0x10);
    func_80043E14(arg0);
    temp_v0 = func_80036660(0, 0, temp_a2, arg1->unk0, 0x38);
    arg0->unk6C = NULL;
    if (arg1->unk0 > 0) {
        phi_v1 = temp_v0;
        phi_a0 = 0;
loop_2:
        temp_a0 = phi_a0 + 1;
        *phi_v1 = (void *) arg0->unk6C;
        arg0->unk6C = phi_v1;
        phi_v1 = phi_v1 + 0x38;
        phi_a0 = temp_a0;
        if (temp_a0 < arg1->unk0) {
            goto loop_2;
        }
    }
    arg0->unk64 = 0;
    arg0->unk68 = 0;
    func_8004001C(arg0 + 0x48, func_80036660(0, 0, sp2C, arg1->unk4, 0x1C), arg1->unk4);
    arg0->unk0 = 0;
    arg0->unk8 = 0x800436EC;
    arg0->unk4 = arg0;
    func_80044010(*(void *)0x80070990, arg0);
}
