void *func_8002B510(s32 arg0) {
    *(void *)0x8007B2E0 = (u16)2;
    *(void *)0x8008FD0C = (u16) ((*(void *)0x8008FD0C | arg0) | 0x4000);
    *(void *)0x8008FD20 = (u16)0x1000;
    *(void *)0x8008FD28 = (u8)0xFF;
    *(void *)0x8008FD2A = (u8)0;
    *(void *)0x8008FD29 = (u8)0;
    *(void *)0x8008FD22 = (u8)0;
    *(void *)0x8008FD2B = (u8)0;
    *(void *)0x8008FD2C = (u8)0;
    return (void *)0x8008FD0C;
}

Failed to decompile function func_8002B57C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_8002B6F0(void) {
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    ?32 sp10;
    s16 temp_s0;
    s16 temp_s1;
    s16 temp_s2;
    s16 temp_s3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    void *temp_v0;

    temp_v0 = (*(void *)0x8008FD23 * 8) + 0x8006A014;
    temp_s2 = temp_v0->unk0;
    temp_s0 = temp_v0->unk2;
    temp_s3 = temp_v0->unk4;
    temp_s1 = temp_v0->unk6;
    sp10 = (?32) temp_s1;
    func_80029B58(0, temp_s2, temp_s0, temp_s3);
    temp_a2 = temp_s0 + temp_s1;
    sp10 = 3;
    sp44 = temp_a2;
    func_80029B58(0x37, temp_s2 + 3, temp_a2, temp_s3);
    temp_a1 = temp_s2 + temp_s3;
    temp_a2_2 = temp_s0 + 6;
    sp10 = temp_s1 - 5;
    sp3C = temp_a2_2;
    sp40 = temp_a1;
    func_80029B58(0x37, temp_a1, temp_a2_2, 2);
    temp_a1_2 = temp_s2 - 1;
    temp_a3 = temp_s3 + 2;
    sp10 = 1;
    sp34 = temp_a3;
    sp38 = temp_a1_2;
    func_80029B58(0x37, temp_a1_2, temp_s0 - 1, temp_a3);
    sp10 = 1;
    func_80029B58(0x37, temp_a1_2, temp_a2, temp_a3);
    sp10 = (?32) temp_s1;
    func_80029B58(0x37, temp_a1_2, temp_s0, 1);
    sp10 = (?32) temp_s1;
    func_80029B58(0x37, temp_a1, temp_s0, 1);
    temp_a1_3 = temp_s2 + 1;
    temp_a2_3 = temp_s0 + 1;
    sp10 = 1;
    sp34 = temp_a2_3;
    sp38 = temp_a1_3;
    func_80029B58(0x38, temp_a1_3, temp_a2_3, temp_s3 - 3);
    sp10 = temp_s1 - 4;
    func_80029B58(0x38, temp_a1_3, temp_s0 + 2, 1);
    sp10 = 1;
    func_80029B58(0x39, temp_a1_3, temp_a2 - 2, temp_s3 - 2);
    sp10 = temp_s1 - 3;
    func_80029B58(0x39, temp_a1 - 2, temp_a2_3, 1);
    func_80030EA0(temp_s2 + 6, sp3C, ((*(void *)0x8008FD23 * 4) + 0x80070000)->unk-6000);
    func_8002DF6C();
}

void func_8002B8C4(void) {
    s32 sp1C;
    s32 sp18;
    s16 temp_a1;
    s32 temp_v0;
    s8 temp_a2;
    s8 temp_a2_2;
    u16 temp_a0;
    u16 temp_t0;
    u16 temp_t1;
    u16 temp_t3;
    u16 temp_t3_2;
    u16 temp_t5;
    u16 temp_t5_2;
    u16 temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_a0;
    s32 phi_a0_2;
    void *phi_v1;
    u16 phi_a0_3;

    sp1C = *(void *)0x8008FD0C & 0xC;
    phi_v1 = (void *)0x8008FD20;
    if ((*(void *)0x8008FD20 & 0x1000) != 0) {
        temp_a2 = *(void *)0x80092870;
        temp_v0 = func_80039D90(0x80092880, (temp_a2 * 0x68) + 0x80092898, temp_a2);
        if (temp_v0 == 2) {
            phi_a0 = 0;
        } else {
            phi_a0 = temp_v0;
            if (temp_v0 == 0xA) {
                temp_a2_2 = *(void *)0x80092870;
                if (func_8003A4BC(0x80092880, (temp_a2_2 * 0x68) + 0x80092898, temp_a2_2, 0xA) == 0) {
                    phi_a0 = 1;
                } else {
                    phi_a0 = 0xA;
                }
            }
        }
        sp18 = phi_a0;
        *(void *)0x8008FD20 = (u16) (*(void *)0x8008FD20 & 0xEFFF);
        phi_v1 = (void *)0x8008FD20;
    }
    phi_a0_2 = sp18;
    if (sp18 == 0) {
        phi_a0_2 = func_80031574(*(void *)0x80092870, (u8)0xA);
        phi_v1 = (void *)0x8008FD20;
    }
    if (phi_a0_2 != 0) {
        *(void *)0x8008FD24 = phi_a0_2;
        if (-func_80031BB0(phi_a0_2, (u8)0xA) == 1) {
            if (sp1C == 4) {
                *(void *)0x8008FD22 = (u8)0xD;
            } else {
                *(void *)0x8008FD22 = (u8)8;
            }
        } else {
            *(void *)0x8008FD22 = (u8)0x11;
        }
        (void *)0x80090000->unk-2D7 = (u8)0xA;
        temp_t3 = *(void *)0x8008FD20 & 0xFFF8;
        *(void *)0x8008FD20 = temp_t3;
        *(void *)0x8008FD20 = (u16) (temp_t3 | 5);
        return;
    }
    if (sp1C == 4) {
        temp_v0_2 = (*(void *)0x80092870 * 0x14) + 0x80092A38;
        if ((s32) temp_v0_2->unk13 < 2) {
            temp_t5 = *phi_v1 & 0xFFF8;
            if ((temp_v0_2->unk0 & 0x4000) != 0) {
                *(void *)0x8008FD22 = (u8)0x15;
            } else {
                *(void *)0x8008FD22 = (u8)0x14;
            }
            *(void *)0x8008FD29 = (u8)0xA;
            *phi_v1 = temp_t5;
            *phi_v1 = (u16) (temp_t5 | 5);
            return;
        }
        temp_a1 = temp_v0_2->unk0;
        if ((temp_a1 & 0x2000) != 0) {
            temp_a0 = *phi_v1;
            if ((temp_a1 & 0x4000) != 0) {
                *(void *)0x8008FD22 = (u8)0x15;
                *(void *)0x8008FD2A = (u8)0;
                temp_t0 = temp_a0 & 0xFFDF;
                *phi_v1 = temp_t0;
                phi_a0_3 = temp_t0 & 0xFFFF;
            } else {
                *(void *)0x8008FD22 = (u8)0x14;
                phi_a0_3 = temp_a0;
            }
            temp_t3_2 = phi_a0_3 & 0xFFF8;
            *(void *)0x8008FD29 = (u8)0xA;
            *phi_v1 = temp_t3_2;
            *phi_v1 = (u16) (temp_t3_2 | 5);
            return;
        }
    } else {
        if (*(void *)0x8008FD2C != 0) {
            temp_v0_3 = (*(void *)0x80092870 * 0x14) + 0x80092A38;
            if ((s32) temp_v0_3->unk13 < 2) {
block_31:
                *(void *)0x8008FD22 = (u8)0x18;
                *(void *)0x8008FD29 = (u8)0xA;
                func_8002DD18(phi_a0_2, (u8)0xA);
                temp_t5_2 = *(void *)0x8008FD20 & 0xFFF8;
                *(void *)0x8008FD20 = temp_t5_2;
                *(void *)0x8008FD20 = (u16) (temp_t5_2 | 5);
                *(void *)0x8008FD2A = (u8)0;
                *(void *)0x8008FD20 = (u16) (*(void *)0x8008FD20 & 0xFFDF);
                return;
            }
            if ((temp_v0_3->unk0 & 0x2000) != 0) {
                goto block_31;
            }
        }
        if ((((*(void *)0x80092870 * 0x14) + 0x80090000)->unk2A38 & 0x4000) == 0) {
            if (sp1C == 0) {
                *(void *)0x8008FD22 = (u8)9;
            } else {
                *(void *)0x8008FD22 = (u8)0xA;
            }
            (void *)0x80090000->unk-2D7 = (u8)0xA;
            temp_t7 = *phi_v1 & 0xFFF8;
            *phi_v1 = temp_t7;
            *phi_v1 = (u16) (temp_t7 | 5);
            return;
        }
    }
    func_8002DD18(phi_a0_2, (u8)0xA);
    temp_t1 = *(void *)0x8008FD20 & 0xFFF8;
    *(void *)0x8008FD20 = temp_t1;
    *(void *)0x8008FD20 = temp_t1;
    *(void *)0x8008FD2A = (u8)0;
    *(void *)0x8008FD20 = (u16) (*(void *)0x8008FD20 & 0xFFDF);
}

Failed to decompile function func_8002BCA0:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

Failed to decompile function func_8002C818:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void *func_8002D5D4(void) {
    u16 temp_t1;

    *(void *)0x8008FD29 = (s8) (*(void *)0x8008FD29 - 1);
    if ((s32) *(void *)0x8008FD29 < 0) {
        temp_t1 = *(void *)0x8008FD20 & 0xFFF8;
        *(void *)0x8008FD20 = temp_t1;
        *(void *)0x8008FD20 = temp_t1;
    }
    return (void *)0x8008FD20;
}

void *func_8002D614(void) {
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t2;
    u16 temp_t4;
    u16 temp_t6;
    u16 temp_t8;

    temp_v0 = func_8003195C(*(void *)0x80092870, ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2CF);
    if (temp_v0 != 0) {
        *(void *)0x8008FD24 = temp_v0;
        temp_v1 = -func_80031BB0(temp_v0);
        if (temp_v1 != 1) {
            if (temp_v1 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xC;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)8;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t6 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t8 = temp_t6 | 5;
        *(void *)0x8008FD20 = temp_t6;
        *(void *)0x8008FD20 = temp_t8;
        *(void *)0x8008FD20 = (u16) (temp_t8 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    temp_t2 = *(void *)0x8008FD20 & 0xFFF8;
    temp_t4 = temp_t2 | 5;
    *(void *)0x8008FD20 = temp_t2;
    *(void *)0x8008FD20 = temp_t4;
    *(void *)0x8008FD20 = (u16) (temp_t4 & 0xDFFF);
    *(void *)0x8008FD22 = (u8)0x16;
    *(void *)0x8008FD29 = (u8)0xA;
    ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2CF = (u8)-1;
    return (void *)0x8008FD20;
}

void *func_8002D748(void) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t0_2;
    u16 temp_t4;
    u16 temp_t8;
    void *temp_t0;
    void *temp_t9;
    void *phi_t0;
    void *phi_t9;

    temp_v0 = func_800319E0(*(void *)0x80092870, ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0, 0x80, 0xE0, 0x800904E0);
    temp_a0 = temp_v0;
    phi_t0 = (void *)0x800904E0;
    phi_t9 = (void *)0x80090398;
loop_1:
    temp_t0 = phi_t0 + 0xC;
    temp_t9 = phi_t9 + 0xC;
    temp_t9->unk-C = (?32) (unaligned s32) *phi_t0;
    temp_t9->unk-8 = (?32) (unaligned s32) temp_t0->unk-8;
    temp_t9->unk-4 = (?32) (unaligned s32) temp_t0->unk-4;
    phi_t0 = temp_t0;
    phi_t9 = temp_t9;
    if (temp_t0 != 0x800905A0) {
        goto loop_1;
    }
    temp_t9->unk0 = (?32) (unaligned s32) temp_t0->unk0;
    temp_t9->unk4 = (?32) (unaligned s32) temp_t0->unk4;
    if (temp_v0 != 0) {
        *(void *)0x8008FD24 = temp_a0;
        temp_v1 = -func_80031BB0(temp_a0);
        if (temp_v1 != 1) {
            if (temp_v1 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xB;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)8;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t0_2 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t4 = temp_t0_2 | 5;
        *(void *)0x8008FD20 = temp_t0_2;
        *(void *)0x8008FD20 = temp_t4;
        *(void *)0x8008FD20 = (u16) (temp_t4 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    func_8002E404(*(void *)0x8008FD2A);
    temp_t8 = *(void *)0x8008FD20 | 0x80;
    *(void *)0x8008FD20 = temp_t8;
    *(void *)0x8008FD20 = (u16) (temp_t8 | 0x8000);
    return (void *)0x8008FD20;
}

void *func_8002D8BC(void) {
    s32 sp20;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s8 temp_t0;
    s8 temp_t0_2;
    s8 temp_t9;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t3;
    u16 temp_t4;
    u16 temp_t5;
    u16 temp_t8;
    void *temp_a3;
    s32 phi_a0;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_a2;
    s32 phi_v1_2;
    s32 phi_a0_2;
    s8 phi_a2_2;

    temp_t0 = *(void *)0x8008FD2A;
    temp_a3 = (temp_t0 * 2) + 0x8008FD30;
    if ((u8)-2 == temp_a3->unk0) {
        temp_t9 = *(void *)0x80092870;
        sp20 = (s32) temp_t9;
        phi_a0 = 0xF;
        phi_a2 = ((temp_t9 * 0x14) + 0x80090000)->unk2A38 & 0xF;
loop_2:
        temp_a0 = phi_a0 + 1;
        phi_v0 = (void *)0x8008FD30;
        phi_v1 = 0;
loop_3:
        temp_v1 = phi_v1 + 1;
        if (temp_a0 == phi_v0->unk1) {
            phi_v1_2 = 0x7F;
        } else {
            phi_v0 = phi_v0 + 2;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            if (temp_v1 < phi_a2) {
                goto loop_3;
            }
        }
        phi_a0_2 = temp_a0;
        phi_a2_2 = (s8) phi_a2;
        if (phi_v1_2 != 0x7F) {
            phi_a0_2 = -1;
            phi_a2_2 = (s8) temp_a0;
        }
        phi_a0 = phi_a0_2;
        phi_a2 = (s32) phi_a2_2;
        if (phi_a0_2 >= 0) {
            goto loop_2;
        }
        temp_a3->unk1 = phi_a2_2;
        if ((temp_t0 + 1) < 0x10) {
            temp_a3->unk3 = (u8)-2;
        }
        temp_v0 = func_80031890(sp20, phi_a2_2 & 0xFF, phi_a2_2, temp_a3);
        if (temp_v0 >= 0) {
            ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0 = (s8) temp_v0;
        } else {

        }
        func_8002E234(*(void *)0x8008FD2A);
    } else {
        func_8002E234(temp_t0, temp_a3);
    }
    temp_t0_2 = *(void *)0x8008FD2A;
    temp_v0_2 = func_80031A44(*(void *)0x80092870, ((temp_t0_2 * 2) + 0x80090000)->unk-2D0, 0, 0x80, (temp_t0_2 * 0x64) + 0x8008FD58);
    if (temp_v0_2 != 0) {
        *(void *)0x8008FD24 = temp_v0_2;
        temp_v1_2 = -func_80031BB0(temp_v0_2);
        if (temp_v1_2 != 1) {
            if (temp_v1_2 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xE;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)0xD;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t3 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t5 = temp_t3 | 5;
        *(void *)0x8008FD20 = temp_t3;
        *(void *)0x8008FD20 = temp_t5;
        *(void *)0x8008FD20 = (u16) (temp_t5 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    temp_v0_3 = func_80031A44(*(void *)0x80092870, ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0, 0x80, 0xE0, 0x80090398);
    if (temp_v0_3 != 0) {
        *(void *)0x8008FD24 = temp_v0_3;
        temp_v1_3 = -func_80031BB0(temp_v0_3);
        if (temp_v1_3 != 1) {
            if (temp_v1_3 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xE;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)0xD;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t2 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t4 = temp_t2 | 5;
        *(void *)0x8008FD20 = temp_t2;
        *(void *)0x8008FD20 = temp_t4;
        *(void *)0x8008FD20 = (u16) (temp_t4 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    temp_t8 = *(void *)0x8008FD20 & 0xFFF8;
    temp_t2_2 = temp_t8 | 5;
    *(void *)0x8008FD20 = temp_t8;
    *(void *)0x8008FD20 = temp_t2_2;
    *(void *)0x8008FD20 = (u16) (temp_t2_2 & 0xDFFF);
    *(void *)0x8008FD22 = (u8)0x17;
    *(void *)0x8008FD29 = (u8)0xA;
    return (void *)0x8008FD20;
}

void *func_8002DBE0(void) {
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_t2;
    u16 temp_t4;
    u16 temp_t6;
    u16 temp_t6_2;
    u16 temp_t8;

    func_8003A7BC(0x80071750, *(void *)0x8008FD2A, *(void *)0x8008FD24);
    temp_v0 = func_80031ACC(((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0, *(void *)0x8008FD24);
    if (temp_v0 != 0) {
        *(void *)0x8008FD24 = temp_v0;
        temp_v1 = -func_80031BB0(temp_v0);
        if (temp_v1 != 1) {
            if (temp_v1 != 3) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0x10;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)8;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t6 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t8 = temp_t6 & 0xBFFF;
        *(void *)0x8008FD20 = temp_t6;
        *(void *)0x8008FD20 = temp_t8;
        *(void *)0x8008FD20 = (u16) (temp_t8 | 0x1000);
        return (void *)0x8008FD20;
    }
    temp_t2 = *(void *)0x8008FD20 & 0xDFFF;
    temp_t4 = temp_t2 & 0xFFF8;
    *(void *)0x8008FD20 = temp_t2;
    temp_t6_2 = temp_t4 & 0xBFFF;
    *(void *)0x8008FD20 = temp_t4;
    *(void *)0x8008FD20 = temp_t6_2;
    *(void *)0x8008FD20 = (u16) (temp_t6_2 | 0x1000);
    *(void *)0x8008FD2C = (u8) (*(void *)0x8008FD2C + 1);
    return (void *)0x8008FD20;
}

s32 func_8002DD18(void) {
    s32 temp_fp;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_v0_3;
    s8 temp_a1;
    s8 temp_t0;
    s8 temp_v1;
    u16 temp_t2;
    u32 temp_s0;
    void *temp_t5;
    void *temp_t6;
    void *temp_v0;
    void *temp_v0_2;
    u32 phi_s0;
    void *phi_a0;
    s8 phi_s1;
    s32 phi_a1;
    s32 phi_a1_2;
    void *phi_s0_2;
    void *phi_t5;
    void *phi_t6;
    s32 phi_fp;
    s32 phi_s1_2;
    s32 phi_return;
    s32 phi_return_2;
    s32 phi_return_3;

    phi_s0 = 0x8008FD30U;
loop_1:
    temp_s0 = phi_s0 + 2;
    temp_s0->unk-2 = (u8)-1;
    temp_s0->unk-1 = (u8)-1;
    phi_s0 = temp_s0;
    if (temp_s0 < 0x8008FD52U) {
        goto loop_1;
    }
    temp_t0 = *(void *)0x80092870;
    phi_a0 = (temp_t0 * 0x14) + 0x80092A38;
    phi_s1 = (u8)0;
    phi_a1 = 0;
    phi_return_3 = (s32) (u8)-1;
loop_3:
    temp_v1 = phi_a0->unk2;
    phi_a1_2 = phi_a1;
    phi_return_2 = phi_return_3;
    if (0x7F != temp_v1) {
        phi_a1_2 = phi_a1;
        phi_return_2 = phi_return_3;
        if ((s32) temp_v1 >= 0) {
            temp_v0 = (phi_a1 * 2) + 0x8008FD30;
            temp_v0->unk0 = phi_s1;
            temp_v0->unk1 = temp_v1;
            phi_a1_2 = phi_a1 + 1;
            phi_return_2 = (s32) temp_v0;
        }
    }
    temp_s1 = phi_s1 + 1;
    phi_a0 = phi_a0 + 1;
    phi_s1 = (s8) temp_s1;
    phi_a1 = phi_a1_2;
    phi_return_3 = phi_return_2;
    if (temp_s1 < 0x10) {
        goto loop_3;
    }
    phi_return = phi_return_2;
    if ((*(void *)0x8008FD0C & 4) != 0) {
        temp_v0_2 = (temp_t0 * 0x14) + 0x80092A38;
        phi_return = (s32) temp_v0_2;
        if ((s32) temp_v0_2->unk13 >= 2) {
            phi_return = (s32) temp_v0_2;
            if ((temp_v0_2->unk0 & 0x2000) == 0) {
                *((phi_a1_2 * 2) + 0x8008FD30) = (u8)-2;
                phi_return = (s32) temp_v0_2;
            }
        }
    }
    *(void *)0x8008FD2A = (u8)0;
    phi_s0_2 = (void *)0x8008FD30;
    phi_fp = 0;
    phi_s1_2 = 0;
loop_12:
    temp_a1 = *phi_s0_2;
    if ((s32) temp_a1 >= 0) {
        temp_ret = func_800319E0(*(void *)0x80092870, temp_a1, 0, 0x80, (void *)0x80090460);
        temp_v0_3 = temp_ret;
        phi_t5 = (void *)0x80090460;
        phi_t6 = (((((phi_s1_2 * 4) - phi_s1_2) * 8) + phi_s1_2) * 4) + 0x8008FD58;
loop_14:
        temp_t5 = phi_t5 + 0xC;
        temp_t6 = phi_t6 + 0xC;
        temp_t6->unk-C = (s32) *phi_t5;
        temp_t6->unk-8 = (s32) temp_t5->unk-8;
        temp_t6->unk-4 = (s32) temp_t5->unk-4;
        phi_t5 = temp_t5;
        phi_t6 = temp_t6;
        if (temp_t5 != 0x800904C0) {
            goto loop_14;
        }
        temp_t6->unk0 = (s32) temp_t5->unk0;
        phi_return = temp_ret;
        if (temp_v0_3 != 0) {
            *(void *)0x8008FD24 = phi_fp;
            temp_ret_2 = func_80031BB0(phi_fp);
            temp_fp = -temp_ret_2;
            if (temp_fp == 1) {
                *(void *)0x8008FD22 = (u8)8;
            } else {
                *(void *)0x8008FD22 = (u8)0x11;
            }
            *(void *)0x8008FD29 = (u8)0xA;
            temp_t2 = *(void *)0x8008FD20 & 0xFFF8;
            *(void *)0x8008FD20 = temp_t2;
            *(void *)0x8008FD20 = (u16) (temp_t2 | 5);
            phi_return = temp_ret_2;
            phi_fp = temp_fp;
        }
    }
    temp_s1_2 = phi_s1_2 + 1;
    phi_s0_2 = phi_s0_2 + 2;
    phi_s1_2 = temp_s1_2;
    if (temp_s1_2 != 0x10) {
        goto loop_12;
    }
    return phi_return;
}

void func_8002DF6C(void) {
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0x6000000;
    temp_v1->unk4 = 0x8005FAA0;
    temp_v1_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
    temp_v1_2->unk4 = 0x8000;
    temp_v1_2->unk0 = 0xBA000E02;
    *(void *)0x8008FD0C = (u16) (*(void *)0x8008FD0C & 0xFFEF);
}

void func_8002DFD0(void) {
    func_80029B58(0, 0x3C, 0x22, 0xC8, 0xAB);
    func_80029B58(0x37, 0x3F, 0xCE, 0xC8, 3);
    func_80029B58(0x37, 0x105, 0x28, 2, 0xA9);
    func_80029B58(0x37, 0x3B, 0x21, 0xCA, 1);
    func_80029B58(0x37, 0x3B, 0xCD, 0xCA, 1);
    func_80029B58(0x37, 0x3B, 0x21, 1, 0xAD);
    func_80029B58(0x37, 0x104, 0x21, 1, 0xAD);
    func_80029B58(0x38, 0x3D, 0x23, 0xC5, 1);
    func_80029B58(0x38, 0x3D, 0x23, 1, 0xA8);
    func_80029B58(0x39, 0x3D, 0xCB, 0xC6, 1);
    func_80029B58(0x39, 0x102, 0x23, 1, 0xA9);
    func_80029B58(0x3F, 0x5A, 0x2E, 0x96, 2);
    func_80029B58(0x3F, 0x5A, 0x44, 0x96, 2);
    func_80029B58(0x3F, 0x5A, 0x7B, 0x96, 2);
    func_80029B58(0x3F, 0x5A, 0x91, 0x96, 2);
    func_80029B58(0x42, 0x5E, 0x67, 0x7C, 0xC);
    func_80029B58(0x42, 0x5E, 0xB5, 0x7C, 0xC);
    func_80029B58(0x46, 0x55, 0x58, 0x14, 0xE);
    func_80029B58(0x47, 0xA2, 0x58, 0x18, 0xE);
    func_80029B58(0x46, 0x55, 0xA6, 0x14, 0xE);
    func_80029B58(0x47, 0xA2, 0xA6, 0x18, 0xE);
}

void *func_8002E234(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    void *temp_a2;
    void *temp_t2;
    void *temp_t8;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *phi_t8;
    void *phi_t2;
    void *phi_v1;
    void *phi_v0;
    s32 phi_a1;
    void *phi_v1_2;
    void *phi_v0_2;
    s32 phi_a1_2;
    void *phi_v1_3;
    void *phi_v0_3;
    s32 phi_a1_3;
    void *phi_v1_4;
    void *phi_v0_4;
    s32 phi_a1_4;

    temp_a2 = (arg0 * 0x64) + 0x8008FD58;
    phi_t8 = (void *)0x8007BA80;
    phi_t2 = temp_a2;
loop_1:
    temp_t8 = phi_t8 + 0xC;
    temp_t2 = phi_t2 + 0xC;
    temp_t2->unk-C = (s32) *phi_t8;
    temp_t2->unk-8 = (s32) temp_t8->unk-8;
    temp_t2->unk-4 = (s32) temp_t8->unk-4;
    phi_t8 = temp_t8;
    phi_t2 = temp_t2;
    if (temp_t8 != 0x8007BAB0) {
        goto loop_1;
    }
    temp_t2->unk0 = (s32) temp_t8->unk0;
    temp_t2->unk4 = (s32) temp_t8->unk4;
    temp_a2->unk38 = (u16) *(void *)0x800859E2;
    temp_a2->unk3A = (u16) *(void *)0x800859E0;
    temp_a2->unk3C = (s32) *(void *)0x80084EE4;
    temp_a2->unk40 = (s32) *(void *)0x80084EE8;
    temp_a2->unk44 = (s32) *(void *)0x80084EF8;
    temp_a2->unk48 = (s32) *(void *)0x80084EFC;
    temp_a2->unk4C = (s32) *(void *)0x80084F00;
    temp_a2->unk50 = (s32) *(void *)0x80084F04;
    temp_a2->unk54 = (s32) *(void *)0x80084F08;
    temp_a2->unk58 = (s32) *(void *)0x80084F0C;
    temp_a2->unk5C = (u16) *(void *)0x8007BA60;
    temp_a2->unk5E = (u16) *(void *)0x8007BA62;
    temp_a2->unk60 = (u16) *(void *)0x8007BA64;
    temp_a2->unk62 = (s8) *(void *)0x8005FA00;
    temp_a2->unk63 = (s8) *(void *)0x8005F010;
    phi_v1 = (void *)0x800869D8;
    phi_v0 = (void *)0x80090398;
    phi_a1 = 0x20;
loop_3:
    temp_a1 = phi_a1 - 1;
    temp_v0_2 = phi_v0 + 1;
    temp_v0_2->unk-1 = (u8) *phi_v1;
    phi_v1 = phi_v1 + 1;
    phi_v0 = temp_v0_2;
    phi_a1 = temp_a1;
    if (temp_a1 != 0) {
        goto loop_3;
    }
    phi_v1_2 = (void *)0x80086AE8;
    phi_v0_2 = (void *)0x800903B8;
    phi_a1_2 = 0x10;
loop_5:
    temp_a1_2 = phi_a1_2 - 1;
    temp_v0_3 = phi_v0_2 + 1;
    temp_v0_3->unk-1 = (u8) *phi_v1_2;
    phi_v1_2 = phi_v1_2 + 1;
    phi_v0_2 = temp_v0_3;
    phi_a1_2 = temp_a1_2;
    if (temp_a1_2 != 0) {
        goto loop_5;
    }
    phi_v1_3 = (void *)0x8008CF78;
    phi_v0_3 = (void *)0x800903C8;
    phi_a1_3 = 0x97;
loop_7:
    temp_a1_3 = phi_a1_3 - 1;
    temp_v0_4 = phi_v0_3 + 1;
    temp_v0_4->unk-1 = (u8) *phi_v1_3;
    phi_v1_3 = phi_v1_3 + 1;
    phi_v0_3 = temp_v0_4;
    phi_a1_3 = temp_a1_3;
    if (temp_a1_3 != 0) {
        goto loop_7;
    }
    phi_v1_4 = (void *)0x8007D19C;
    phi_v0_4 = (void *)0x8009045F;
    phi_a1_4 = 1;
loop_9:
    temp_a1_4 = phi_a1_4 - 1;
    temp_v0 = phi_v0_4 + 1;
    temp_v0->unk-1 = (u8) *phi_v1_4;
    phi_v1_4 = phi_v1_4 + 1;
    phi_v0_4 = temp_v0;
    phi_a1_4 = temp_a1_4;
    if (temp_a1_4 != 0) {
        goto loop_9;
    }
    return temp_v0;
}

void *func_8002E404(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    void *temp_a2;
    void *temp_t2;
    void *temp_t8;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *phi_t2;
    void *phi_t8;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a1;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a1_2;
    void *phi_v0_3;
    void *phi_v1_3;
    s32 phi_a1_3;
    void *phi_v0_4;
    void *phi_v1_4;
    s32 phi_a1_4;

    temp_a2 = (arg0 * 0x64) + 0x8008FD58;
    phi_t2 = temp_a2;
    phi_t8 = (void *)0x8007BA80;
loop_1:
    temp_t2 = phi_t2 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (s32) *phi_t2;
    temp_t8->unk-8 = (s32) temp_t2->unk-8;
    temp_t8->unk-4 = (s32) temp_t2->unk-4;
    phi_t2 = temp_t2;
    phi_t8 = temp_t8;
    if (temp_t2 != (temp_a2 + 0x30)) {
        goto loop_1;
    }
    temp_t8->unk0 = (s32) temp_t2->unk0;
    temp_t8->unk4 = (s32) temp_t2->unk4;
    *(void *)0x800859E2 = (u16) temp_a2->unk38;
    *(void *)0x800859E0 = (u16) temp_a2->unk3A;
    *(void *)0x80084EE4 = (s32) temp_a2->unk3C;
    *(void *)0x80084EE8 = (s32) temp_a2->unk40;
    *(void *)0x80084EF8 = (s32) temp_a2->unk44;
    *(void *)0x80084EFC = (s32) temp_a2->unk48;
    *(void *)0x80084F00 = (s32) temp_a2->unk4C;
    *(void *)0x80084F04 = (s32) temp_a2->unk50;
    *(void *)0x80084F08 = (s32) temp_a2->unk54;
    *(void *)0x80084F0C = (s32) temp_a2->unk58;
    *(void *)0x8007BA60 = (u16) temp_a2->unk5C;
    *(void *)0x8007BA62 = (u16) temp_a2->unk5E;
    *(void *)0x8007BA64 = (u16) temp_a2->unk60;
    *(void *)0x8005FA00 = (s8) temp_a2->unk62;
    *(void *)0x8005F010 = (s8) temp_a2->unk63;
    phi_v0 = (void *)0x80090398;
    phi_v1 = (void *)0x800869D8;
    phi_a1 = 0x20;
loop_3:
    temp_a1 = phi_a1 - 1;
    temp_v1 = phi_v1 + 1;
    temp_v1->unk-1 = (u8) *phi_v0;
    phi_v0 = phi_v0 + 1;
    phi_v1 = temp_v1;
    phi_a1 = temp_a1;
    if (temp_a1 != 0) {
        goto loop_3;
    }
    phi_v0_2 = (void *)0x800903B8;
    phi_v1_2 = (void *)0x80086AE8;
    phi_a1_2 = 0x10;
loop_5:
    temp_a1_2 = phi_a1_2 - 1;
    temp_v1_2 = phi_v1_2 + 1;
    temp_v1_2->unk-1 = (u8) *phi_v0_2;
    phi_v0_2 = phi_v0_2 + 1;
    phi_v1_2 = temp_v1_2;
    phi_a1_2 = temp_a1_2;
    if (temp_a1_2 != 0) {
        goto loop_5;
    }
    phi_v0_3 = (void *)0x800903C8;
    phi_v1_3 = (void *)0x8008CF78;
    phi_a1_3 = 0x97;
loop_7:
    temp_a1_3 = phi_a1_3 - 1;
    temp_v1_3 = phi_v1_3 + 1;
    temp_v1_3->unk-1 = (u8) *phi_v0_3;
    phi_v0_3 = phi_v0_3 + 1;
    phi_v1_3 = temp_v1_3;
    phi_a1_3 = temp_a1_3;
    if (temp_a1_3 != 0) {
        goto loop_7;
    }
    phi_v0_4 = (void *)0x8009045F;
    phi_v1_4 = (void *)0x8007D19C;
    phi_a1_4 = 1;
loop_9:
    temp_a1_4 = phi_a1_4 - 1;
    temp_v1_4 = phi_v1_4 + 1;
    temp_v0 = phi_v0_4 + 1;
    temp_v1_4->unk-1 = (u8) *phi_v0_4;
    phi_v0_4 = temp_v0;
    phi_v1_4 = temp_v1_4;
    phi_a1_4 = temp_a1_4;
    if (temp_a1_4 != 0) {
        goto loop_9;
    }
    return temp_v0;
}
