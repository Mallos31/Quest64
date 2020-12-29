void alFilterNew(void *arg0, ?32 arg1, ?32 arg2, ?32 arg3) {
    arg0->unk0 = 0;
    arg0->unk4 = arg1;
    arg0->unk8 = arg2;
    arg0->unkC = (u16)0;
    arg0->unkE = (u16)0;
    arg0->unk10 = arg3;
}

f32 _doModFunc(void *arg0, s32 arg1) {
    f32 temp_f2;
    f64 temp_f0;
    f32 phi_f2;

    arg0->unk14 = (f32) (arg0->unk14 + (arg0->unk10 * (f32) arg1));
    temp_f0 = (f64) arg0->unk14;
    if (2.0 < temp_f0) {
        arg0->unk14 = (f32) (temp_f0 - 4.0);
    } else {
        arg0->unk14 = (f32) temp_f0;
    }
    temp_f2 = arg0->unk14;
    phi_f2 = temp_f2;
    if (temp_f2 < 0.0f) {
        phi_f2 = -temp_f2;
    }
    return arg0->unk1C * (f32) ((f64) phi_f2 - 1.0);
}

void *_filterBuffer(void *arg0, s32 arg1, s32 arg2, void *arg3) {
    void *sp24;
    void *sp18;
    s32 temp_v0;
    void *temp_v1;

    temp_v0 = arg1 & 0xFFFF;
    arg3->unk4 = (s32) ((temp_v0 << 0x10) | ((arg2 * 2) & 0xFFFF));
    arg3->unk0 = (s32) (temp_v0 | 0x8000000);
    arg3->unk8 = 0xB000020;
    arg0 = arg0;
    temp_v1 = arg3 + 0x10;
    arg3->unkC = func_80034DD0(arg0 + 8);
    sp24 = temp_v1 + 8;
    *temp_v1 = (s32) ((((arg0->unk2C & 0xFF) << 0x10) | 0xE000000) | (arg0->unk2 & 0xFFFF));
    sp18 = temp_v1;
    sp18->unk4 = func_80034DD0(arg0->unk28, arg3);
    arg0->unk2C = 0;
    return sp24;
}

void *_saveBuffer(void *arg0, u32 arg1, s32 arg2, s32 arg3, void *arg4) {
    u32 sp4C;
    void *sp44;
    void *sp3C;
    void *sp30;
    s32 sp2C;
    u32 sp28;
    s32 sp24;
    s32 temp_a2;
    s32 temp_t3;
    s32 temp_t6;
    u32 temp_a3;
    u32 temp_t1;
    u32 temp_v0;
    void *temp_a1;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v1;
    u32 phi_a1;
    void *phi_s0;

    temp_v0 = arg0->unk14;
    temp_t6 = arg0->unk1C * 2;
    temp_t1 = temp_v0 + temp_t6;
    phi_a1 = arg1;
    if (arg1 < temp_v0) {
        phi_a1 = arg1 + temp_t6;
    }
    temp_a2 = arg3 * 2;
    temp_a3 = temp_a2 + phi_a1;
    temp_s0 = arg4 + 8;
    if (temp_t1 < temp_a3) {
        arg4->unk0 = 0x8000000;
        temp_t3 = ((s32) (temp_t1 - phi_a1) >> 1) * 2;
        temp_s0_2 = arg4 + 8;
        arg4->unk4 = (s32) ((arg2 << 0x10) | (temp_t3 & 0xFFFF));
        temp_s0_2->unk0 = 0x6000000;
        arg2 = arg2;
        sp44 = temp_s0_2;
        sp24 = temp_t3;
        arg0 = arg0;
        sp4C = temp_t1;
        sp28 = temp_a3;
        sp2C = temp_a2;
        temp_s0_2 = temp_s0_2 + 8;
        temp_v1 = temp_s0_2;
        temp_s0_2->unk4 = func_80034DD0(phi_a1, phi_a1, temp_a2, temp_a3);
        temp_v1->unk0 = 0x8000000;
        temp_s0_2 = temp_s0_2 + 8;
        temp_v1->unk4 = (s32) (((temp_t3 + arg2) << 0x10) | ((((s32) (temp_a3 - temp_t1) >> 1) * 2) & 0xFFFF));
        temp_a1 = temp_s0_2;
        temp_a1->unk0 = 0x6000000;
        sp3C = temp_a1;
        temp_s0_2 = temp_s0_2 + 8;
        temp_a1->unk4 = func_80034DD0(arg0->unk14, temp_a1, temp_a3);
        temp_s0_2->unk4 = (s32) (temp_a2 & 0xFFFF);
        temp_s0_2->unk0 = 0x8000000;
        phi_s0 = temp_s0_2 + 8;
    } else {
        arg4->unk0 = 0x8000000;
        arg4->unk4 = (s32) ((arg2 << 0x10) | (temp_a2 & 0xFFFF));
        temp_s0->unk0 = 0x6000000;
        sp30 = temp_s0;
        temp_s0->unk4 = func_80034DD0(phi_a1, phi_a1, temp_a2, temp_a3);
        phi_s0 = temp_s0 + 8;
    }
    return phi_s0;
}

void *_loadBuffer(void *arg0, u32 arg1, s32 arg2, s32 arg3, void *arg4) {
    u32 sp4C;
    void *sp44;
    void *sp3C;
    void *sp34;
    s32 sp2C;
    u32 sp28;
    s32 sp24;
    s32 temp_a2;
    s32 temp_t6;
    s32 temp_t6_2;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 temp_t1;
    u32 temp_v0;
    void *temp_a1;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v1;
    void *temp_v1_2;
    u32 phi_a1;
    void *phi_s0;
    u32 phi_a3;

    temp_v0 = arg0->unk14;
    temp_t6 = arg0->unk1C * 2;
    temp_t1 = temp_v0 + temp_t6;
    phi_a1 = arg1;
    if (arg1 < temp_v0) {
        phi_a1 = arg1 + temp_t6;
    }
    temp_a2 = arg3 * 2;
    temp_a3 = temp_a2 + phi_a1;
    temp_s0 = arg4 + 8;
    if (temp_t1 < temp_a3) {
        temp_t6_2 = ((s32) (temp_t1 - phi_a1) >> 1) * 2;
        arg4->unk0 = (s32) ((arg2 & 0xFFFF) | 0x8000000);
        temp_s0_2 = arg4 + 8;
        arg4->unk4 = (u32) (temp_t6_2 & 0xFFFF);
        temp_s0_2->unk0 = 0x4000000;
        arg2 = arg2;
        sp44 = temp_s0_2;
        sp24 = temp_t6_2;
        arg0 = arg0;
        sp4C = temp_t1;
        sp28 = temp_a3;
        sp2C = temp_a2;
        temp_s0_2 = temp_s0_2 + 8;
        temp_v1 = temp_s0_2;
        temp_s0_2->unk4 = func_80034DD0(phi_a1, phi_a1, temp_a2, temp_a3);
        temp_v1->unk0 = (s32) (((sp24 + arg2) & 0xFFFF) | 0x8000000);
        temp_s0_2 = temp_s0_2 + 8;
        temp_v1->unk4 = (s32) ((((s32) (temp_a3 - temp_t1) >> 1) * 2) & 0xFFFF);
        temp_a1 = temp_s0_2;
        temp_a1->unk0 = 0x4000000;
        sp3C = temp_a1;
        temp_a1->unk4 = func_80034DD0(arg0->unk14, temp_a1, temp_a3);
        phi_s0 = temp_s0_2 + 8;
        phi_a3 = temp_a2 & 0xFFFF;
    } else {
        temp_a3_2 = temp_a2 & 0xFFFF;
        arg4->unk4 = temp_a3_2;
        arg4->unk0 = (s32) ((arg2 & 0xFFFF) | 0x8000000);
        temp_s0->unk0 = 0x4000000;
        sp28 = temp_a3_2;
        sp34 = temp_s0;
        temp_s0->unk4 = func_80034DD0(phi_a1, phi_a1, temp_a2, temp_a3_2);
        phi_s0 = temp_s0 + 8;
        phi_a3 = temp_a3_2;
    }
    temp_v1_2 = phi_s0;
    temp_v1_2->unk0 = 0x8000000;
    temp_v1_2->unk4 = phi_a3;
    return phi_s0 + 8;
}

void *_loadOutputBuffer(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *sp5C;
    f32 sp44;
    s32 sp38;
    void *sp30;
    s32 sp2C;
    s32 sp28;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f4;
    s32 temp_f16;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t8;
    void *temp_t6;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_v1;

    if (arg1->unk24 != 0) {
        sp38 = arg1->unk4 - arg1->unk0;
        arg0 = arg0;
        temp_f2 = (f32) (1.0 - (f64) ((f32) (s32) ((func_80048AE0(arg1, arg3) / (f32) sp38) * 32768.0f) / 32768.0f));
        temp_f4 = temp_f2 * (f32) arg3;
        sp44 = temp_f2;
        temp_v0 = arg1->unk24;
        temp_f12 = temp_v0->unk20 + temp_f4;
        temp_f16 = (s32) temp_f12;
        temp_v0->unk20 = (f32) (temp_f12 - (f32) temp_f16);
        sp2C = temp_f16;
        temp_t0 = arg0->unk18 + (-(s32) (arg1->unk4 - arg1->unk18) * 2);
        temp_t8 = (s32) (temp_t0 & 7) >> 1;
        temp_t3 = temp_t8 * 2;
        sp28 = temp_t3;
        temp_v0_2 = func_80048DC8(temp_f12, 32768.0f, arg0, temp_t0 - temp_t3, 0x280, temp_f16 + temp_t8, arg4);
        temp_t6 = temp_v0_2 + 8;
        temp_v0_2->unk0 = (s32) (((temp_t3 + 0x280) & 0xFFFF) | 0x8000000);
        temp_v0_2->unk4 = (s32) ((arg2 << 0x10) | ((arg3 * 2) & 0xFFFF));
        sp30 = temp_t6;
        temp_v1 = temp_v0_2 + 0x10;
        temp_v0_2->unk8 = (s32) ((((arg1->unk24->unk24 & 0xFF) << 0x10) | 0x5000000) | ((s32) (sp44 * 32768.0f) & 0xFFFF));
        sp5C = temp_v1;
        temp_t6->unk4 = func_80034DD0(arg1->unk24->unk14);
        arg1->unk24->unk24 = 0;
        arg1->unk18 = (s32) ((arg1->unk18 + temp_f16) - arg3);
        phi_v1 = temp_v1;
    } else {
        phi_v1 = func_80048DC8(arg0, arg0->unk18 + (-(s32) arg1->unk4 * 2), arg2, arg3, arg4);
    }
    return phi_v1;
}

Failed to decompile function func_80049178:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

? func_800493D4(void *arg0, s32 arg1, ?32 arg2) {
    if (arg1 == 1) {
        *arg0 = arg2;
    }
    return 0;
}

void *alFxPull(void *arg0, s32 arg2, s32 arg4) {
    s32 sp80;
    s32 sp50;
    s32 sp48;
    s16 temp_a0_2;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_a0_3;
    s32 temp_fp;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_t1;
    s32 temp_t2;
    u32 temp_t8;
    void *temp_a0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v1_3;
    s32 phi_s7;
    s32 phi_v1;
    s32 phi_s5;
    void *phi_s0;
    s32 phi_s2;
    void *phi_s0_2;
    s32 phi_s5_2;
    void *phi_s0_3;
    void *phi_s0_4;
    void *phi_s0_5;
    void *phi_s0_6;
    void *phi_s0_7;
    void *phi_s0_8;
    s32 phi_s2_2;

    temp_a0 = arg0->unk0;
    sp80 = 0;
    temp_v0 = temp_a0->unk4(temp_a0, arg4);
    temp_s1 = arg2 * 2;
    temp_t1 = temp_s1 & 0xFFFF;
    temp_v0->unk0 = 0x8000000;
    temp_v0->unk4 = temp_t1;
    temp_v0->unk8 = 0xC00DA83;
    temp_v0->unkC = 0x6C006C0;
    temp_v0->unk10 = 0xC005A82;
    temp_v0->unk14 = 0x80006C0;
    sp48 = temp_t1;
    sp50 = temp_s1;
    temp_v0_2 = func_80048C40(arg0, arg0->unk18, 0x6C0, arg2, temp_v0 + 0x18);
    temp_v0_2->unk0 = 0x2000800;
    temp_v0_2->unk4 = temp_s1;
    temp_s0 = temp_v0_2 + 8;
    phi_s0_7 = temp_s0;
    if ((s32) arg0->unk24 > 0) {
        phi_s7 = 0;
        phi_v1 = sp80;
        phi_s5 = 0;
        phi_s0 = temp_s0;
        phi_s2_2 = 0x140;
loop_2:
        temp_s1_2 = arg0->unk20 + (((phi_s7 * 4) + phi_s7) * 8);
        temp_s4 = arg0->unk18 + (-(s32) temp_s1_2->unk0 * 2);
        temp_fp = arg0->unk18 + (-(s32) temp_s1_2->unk4 * 2);
        if (temp_s4 == phi_v1) {
            phi_s2 = (s32) (phi_s5 << 0x10) >> 0x10;
            phi_s0_2 = phi_s0;
            phi_s5_2 = (s32) (phi_s2_2 << 0x10) >> 0x10;
        } else {
            phi_s2 = phi_s2_2;
            phi_s0_2 = func_80048DC8(arg0, temp_s4, phi_s5, arg2, phi_s0);
            phi_s5_2 = phi_s5;
        }
        temp_v0_3 = func_80048F54(arg0, temp_s1_2, phi_s2, arg2, phi_s0_2);
        temp_a0_2 = temp_s1_2->unk8;
        phi_s0_3 = temp_v0_3;
        if (temp_a0_2 != 0) {
            temp_v0_3->unk0 = (s32) ((temp_a0_2 & 0xFFFF) | 0xC000000);
            temp_v0_3->unk4 = (s32) ((phi_s5_2 << 0x10) | (phi_s2 & 0xFFFF));
            temp_s0_2 = temp_v0_3 + 8;
            phi_s0_3 = temp_s0_2;
            if (temp_s1_2->unk24 == 0) {
                phi_s0_3 = temp_s0_2;
                if (temp_s1_2->unk20 == 0) {
                    phi_s0_3 = func_80048C40(arg0, temp_fp, phi_s2, arg2, temp_s0_2);
                }
            }
        }
        temp_v1 = temp_s1_2->unkA;
        temp_v0_4 = phi_s0_3;
        phi_s0_4 = phi_s0_3;
        if (temp_v1 != 0) {
            temp_v0_4->unk0 = (s32) ((temp_v1 & 0xFFFF) | 0xC000000);
            temp_v0_4->unk4 = (s32) ((phi_s2 << 0x10) | (phi_s5_2 & 0xFFFF));
            phi_s0_4 = func_80048C40(arg0, temp_s4, phi_s5_2, arg2, phi_s0_3 + 8);
        }
        temp_a0_3 = temp_s1_2->unk20;
        phi_s0_5 = phi_s0_4;
        if (temp_a0_3 != 0) {
            phi_s0_5 = func_80048B88(temp_a0_3, phi_s2, arg2, phi_s0_4);
        }
        phi_s0_6 = phi_s0_5;
        if (temp_s1_2->unk24 == 0) {
            phi_s0_6 = func_80048C40(arg0, temp_fp, phi_s2, arg2, phi_s0_5);
        }
        temp_v1_2 = temp_s1_2->unkC;
        temp_s7 = (s32) ((phi_s7 + 1) << 0x10) >> 0x10;
        phi_s0_8 = phi_s0_6;
        if (temp_v1_2 != 0) {
            temp_v0_5 = phi_s0_6;
            temp_v0_5->unk0 = (s32) ((temp_v1_2 & 0xFFFF) | 0xC000000);
            temp_v0_5->unk4 = (s32) ((phi_s2 << 0x10) | 0x800);
            phi_s0_8 = phi_s0_6 + 8;
        }
        phi_s7 = temp_s7;
        phi_v1 = arg0->unk18 + (temp_s1_2->unk4 * 2);
        phi_s5 = phi_s5_2;
        phi_s0 = phi_s0_8;
        phi_s0_7 = phi_s0_8;
        phi_s2_2 = phi_s2;
        if (temp_s7 < (s32) arg0->unk24) {
            goto loop_2;
        }
    }
    temp_t2 = arg0->unk1C * 2;
    temp_t8 = arg0->unk18 + sp50;
    arg0->unk18 = temp_t8;
    if ((u32) (arg0->unk14 + temp_t2) < temp_t8) {
        arg0->unk18 = (u32) (temp_t8 - temp_t2);
    }
    temp_v1_3 = phi_s0_7;
    temp_v1_3->unk0 = 0xA000800;
    temp_v1_3->unk4 = (s32) (sp48 | 0x6C00000);
    return phi_s0_7 + 8;
}

void alSeqGetLoc(void *seq, void *marker) {
    marker->unk0 = (s32) seq->unk8;
    marker->unkC = (s16) seq->unk1A;
    marker->unk4 = (s32) seq->unkC;
}

void alSeqSetLoc(void *seq, void *marker) {
    seq->unk8 = (s32) marker->unk0;
    seq->unk1A = (s16) marker->unkC;
    seq->unkC = (s32) marker->unk4;
}

s32 alSeqGetTicks(void *seq) {
    return seq->unkC;
}

void func_80049770(void) {

}

u8 func_80049778(void *arg0) {
    u8 temp_a1;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    u8 phi_a1;
    u8 phi_a1_2;

    temp_v1 = arg0->unk8;
    temp_v0 = *temp_v1;
    arg0->unk8 = (void *) (temp_v1 + 1);
    phi_a1 = temp_v0;
    if ((temp_v0 & 0x80) != 0) {
        phi_a1_2 = temp_v0 & 0x7F;
loop_2:
        temp_v1_2 = arg0->unk8;
        temp_v0_2 = *temp_v1_2;
        arg0->unk8 = (void *) (temp_v1_2 + 1);
        temp_a1 = (phi_a1_2 << 7) + (temp_v0_2 & 0x7F);
        phi_a1 = temp_a1;
        phi_a1_2 = temp_a1;
        if ((temp_v0_2 & 0x80) != 0) {
            goto loop_2;
        }
    }
    return phi_a1;
}

u8 alSeqNextEvent(s32 arg0, ? arg1) {
    s32 temp_t1;
    s32 temp_t9;
    s32 temp_v0_2;
    s8 temp_a1;
    u8 temp_a0;
    u8 temp_v0;
    u8 temp_v0_3;
    u8 temp_v0_4;
    void *temp_t8;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    u8 phi_return;

    temp_v0_2 = func_80049778(arg0, arg1);
    temp_v1 = ERROR(Read from unset register $a2)->unk8;
    temp_t1 = temp_v0_2;
    ERROR(Read from unset register $a2)->unkC = (s32) (ERROR(Read from unset register $a2)->unkC + temp_v0_2);
    temp_a0 = *temp_v1;
    temp_t8 = temp_v1 + 1;
    ERROR(Read from unset register $a2)->unk8 = temp_t8;
    temp_a1 = temp_a0 & 0xFF;
    if (temp_a0 == 0xFF) {
        temp_v0_3 = *temp_t8;
        ERROR(Read from unset register $a2)->unk8 = (void *) (temp_t8 + 1);
        if (temp_v0_3 == 0x51) {
            *ERROR(Read from unset register $a3) = (u16)3;
            ERROR(Read from unset register $a3)->unk4 = temp_t1;
            ERROR(Read from unset register $a3)->unk8 = temp_a1;
            ERROR(Read from unset register $a3)->unk9 = temp_v0_3;
            temp_v1_2 = ERROR(Read from unset register $a2)->unk8;
            temp_v0_4 = *temp_v1_2;
            ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_2 + 1);
            ERROR(Read from unset register $a3)->unkA = temp_v0_4;
            temp_v1_3 = ERROR(Read from unset register $a2)->unk8;
            ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_3 + 1);
            ERROR(Read from unset register $a3)->unkB = (u8) *temp_v1_3;
            temp_v1_4 = ERROR(Read from unset register $a2)->unk8;
            ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_4 + 1);
            ERROR(Read from unset register $a3)->unkC = (u8) *temp_v1_4;
            temp_v1_5 = ERROR(Read from unset register $a2)->unk8;
            ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_5 + 1);
            ERROR(Read from unset register $a3)->unkD = (u8) *temp_v1_5;
            phi_return = temp_v0_4;
        } else {
            phi_return = temp_v0_3;
            if (temp_v0_3 == 0x2F) {
                *ERROR(Read from unset register $a3) = (u16)4;
                ERROR(Read from unset register $a3)->unk4 = temp_t1;
                ERROR(Read from unset register $a3)->unk8 = temp_a1;
                ERROR(Read from unset register $a3)->unk9 = temp_v0_3;
                temp_v1_6 = ERROR(Read from unset register $a2)->unk8;
                ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_6 + 1);
                ERROR(Read from unset register $a3)->unkA = (u8) *temp_v1_6;
                phi_return = temp_v0_3;
            }
        }
        ERROR(Read from unset register $a2)->unk1A = (u16)0;
        return phi_return;
    }
    *ERROR(Read from unset register $a3) = (u16)1;
    ERROR(Read from unset register $a3)->unk4 = temp_t1;
    if ((temp_a0 & 0x80) != 0) {
        ERROR(Read from unset register $a3)->unk8 = temp_a1;
        temp_v1_7 = ERROR(Read from unset register $a2)->unk8;
        ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_7 + 1);
        ERROR(Read from unset register $a3)->unk9 = (u8) *temp_v1_7;
        ERROR(Read from unset register $a2)->unk1A = (s16) temp_a1;
    } else {
        ERROR(Read from unset register $a3)->unk9 = temp_a0;
        ERROR(Read from unset register $a3)->unk8 = (s8) ERROR(Read from unset register $a2)->unk1A;
    }
    temp_v0 = ERROR(Read from unset register $a3)->unk8;
    temp_t9 = temp_v0 & 0xF0;
    if (temp_t9 != 0xC0) {
        if (temp_t9 != 0xD0) {
            temp_v1_8 = ERROR(Read from unset register $a2)->unk8;
            ERROR(Read from unset register $a2)->unk8 = (void *) (temp_v1_8 + 1);
            ERROR(Read from unset register $a3)->unkA = (u8) *temp_v1_8;
            return temp_v0;
        }
    }
    ERROR(Read from unset register $a3)->unkA = (u8)0;
    return temp_v0;
}

void alSeqNewMarker(void *seq, void *m, u32 ticks) {
    s16 sp50;
    s32 sp4C;
    u32 sp44;
    s16 sp3E;
    s16 temp_s5;
    s32 temp_s4;
    u32 temp_v0;
    s32 phi_s4;
    s16 phi_s5;
    u32 phi_s6;
    u32 phi_v0;

    if (ticks == 0) {
        m->unkC = (u16)0;
        m->unk4 = 0;
        m->unk8 = 0;
        m->unk0 = (s32) seq->unk4;
        return;
    }
    sp4C = seq->unk8;
    sp3E = seq->unk1A;
    sp44 = seq->unkC;
    seq->unk1A = (u16)0;
    seq->unkC = 0U;
    seq->unk8 = (s32) seq->unk4;
    phi_v0 = 0U;
loop_3:
    temp_s4 = seq->unk8;
    temp_s5 = seq->unk1A;
    func_800497C4(seq, &sp50);
    if (sp50 == 4) {
        phi_s4 = seq->unk8;
        phi_s5 = seq->unk1A;
        phi_s6 = seq->unkC;
    } else {
        temp_v0 = seq->unkC;
        phi_s4 = temp_s4;
        phi_s5 = temp_s5;
        phi_s6 = phi_v0;
        phi_v0 = temp_v0;
        if (temp_v0 < ticks) {
            goto loop_3;
        }
    }
    m->unk0 = phi_s4;
    m->unkC = phi_s5;
    m->unk4 = phi_s6;
    m->unk8 = (u32) seq->unkC;
    seq->unk8 = sp4C;
    seq->unk1A = sp3E;
    seq->unkC = sp44;
}

s32 alSeqSecToTicks(void *seq, f32 sec, s32 tempo) {
    f64 temp_f6;
    f64 temp_f8;
    s32 temp_f16;
    f64 phi_f6;

    temp_f6 = (f64) tempo;
    phi_f6 = temp_f6;
    if (tempo < 0) {
        phi_f6 = temp_f6 + 4294967296.0;
    }
    temp_f8 = (((f64) sec * *(void *)0x800723C0) * (f64) seq->unk18) / phi_f6;
    temp_f16 = (s32) temp_f8;
    if ((ERROR(cfc1) & 0x78) != 0) {
        if ((ERROR(cfc1) & 0x78) == 0) {
            return (s32) (temp_f8 - 2147483648.0) | 0x80000000;
        }
loop_5:
        return -1;
    }
    if (temp_f16 < 0) {
        goto loop_5;
    }
    return temp_f16;
}

f32 alSeqTicksToSec(void *seq, s32 ticks, s32 tempo) {
    f32 temp_f10;
    f32 phi_f10;

    temp_f10 = (f32) tempo;
    phi_f10 = temp_f10;
    if (tempo < 0) {
        phi_f10 = temp_f10 + 4294967296.0f;
    }
    return (f32) ((f64) ((f32) ticks * phi_f10) / ((f64) (f32) seq->unk18 * *(void *)0x800723C8));
}

? func_80049BA0(void *seq, ? ticks) {
    u32 temp_v0;

    temp_v0 = seq->unk8;
    if (temp_v0 >= (u32) (seq->unk0 + seq->unk10)) {
        return 0;
    }
    *ERROR(Read from unset register $t0) = func_80049778(seq, seq, temp_v0);
    ERROR(Read from unset register $a2)->unk8 = (?32) ERROR(Read from unset register $a3);
    return 1;
}

s32 func_80049BF8(void *arg0) {
    u8 temp_v1;
    void *temp_a1;
    void *temp_t6;
    void *temp_t7;
    void *temp_t9;

    temp_a1 = arg0->unk8;
    temp_v1 = *temp_a1;
    temp_t7 = temp_a1 + 1;
    arg0->unk8 = temp_t7;
    temp_t6 = temp_t7 + 1;
    arg0->unk8 = temp_t6;
    temp_t9 = temp_t6 + 1;
    arg0->unk8 = temp_t9;
    arg0->unk8 = (void *) (temp_t9 + 1);
    return (((temp_v1 << 0x18) | (*temp_t7 << 0x10)) | (*temp_t6 << 8)) | *temp_t9;
}

s32 func_80049C48(void *arg0) {
    u8 temp_t6;
    u8 temp_v1;
    void *temp_a1;
    void *temp_t9;

    temp_a1 = arg0->unk8;
    temp_v1 = *temp_a1;
    temp_t9 = temp_a1 + 1;
    arg0->unk8 = temp_t9;
    temp_t6 = *temp_t9;
    arg0->unk8 = (void *) (temp_t9 + 1);
    return (s32) (((temp_v1 << 8) | temp_t6) << 0x10) >> 0x10;
}

void alSeqNew(void *arg0, ?32 arg1, ?32 arg2) {
    s16 temp_v1;

    arg0->unk0 = arg1;
    arg0->unk10 = arg2;
    arg0->unk1A = (u16)0;
    arg0->unkC = 0;
    arg0->unk8 = arg1;
    if (func_80049BF8(arg0) == 0x4D546864) {
        func_80049BF8(ERROR(Read from unset register $a3));
        if (func_80049C48(ERROR(Read from unset register $a3)) == 0) {
            if (func_80049C48(ERROR(Read from unset register $a3)) == 1) {
                ERROR(Read from unset register $a3)->unk18 = func_80049C48(ERROR(Read from unset register $a3));
                temp_v1 = ERROR(Read from unset register $a3)->unk18;
                if ((temp_v1 & 0x8000) == 0) {
                    ERROR(Read from unset register $a3)->unk14 = (f32) (1.0 / (f64) (f32) temp_v1);
                    if (func_80049BF8(ERROR(Read from unset register $a3)) == 0x4D54726B) {
                        func_80049BF8(ERROR(Read from unset register $a3));
                        ERROR(Read from unset register $a3)->unk4 = (s32) ERROR(Read from unset register $a3)->unk8;
                    }
                }
            }
        }
    }
}

void alSynSetPriority(s32 arg0, void *voice, s16 priority) {
    arg1->unk16 = arg2;
}

lldiv_t lldiv(long long num, long long denom)
{
    lldiv_t ret;

    ret.quot = num / denom;
    ret.rem = num - denom * ret.quot;
    if (ret.quot < 0 && ret.rem > 0)
    {
        ret.quot++;
        ret.rem -= denom;
    }

    return ret;
}

ldiv_t ldiv(long num, long denom)
{
    ldiv_t ret;

    ret.quot = num / denom;
    ret.rem = num - denom * ret.quot;
    if (ret.quot < 0 && ret.rem > 0)
    {
        ret.quot++;
        ret.rem -= denom;
    }

    return ret;
}
