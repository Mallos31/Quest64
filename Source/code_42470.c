f64 _ldexpf(f32 arg0, s32 arg2) {
    f64 phi_f12;

    phi_f12 = (f64) arg0;
    if (arg2 != 0) {
        phi_f12 = (f64) arg0 * (f64) (1 << arg2);
    }
    return phi_f12;
}

f64 _frexpf(f32 arg0, void *arg2) {
    f64 temp_f0;
    f64 temp_f0_2;
    f64 phi_f0;
    f64 phi_f0_2;
    f64 phi_f0_3;
    f64 phi_f0_4;
    f64 phi_f2;
    f64 phi_f0_5;

    *arg2 = 0;
    if ((f64) arg0 == 0.0) {
        return (f64) arg0;
    }
    if (0.0 < (f64) arg0) {
        phi_f0 = (f64) arg0;
    } else {
        phi_f0 = -(f64) arg0;
    }
    phi_f0_3 = phi_f0;
    if (1.0 <= phi_f0) {
        phi_f0_2 = phi_f0;
loop_7:
        temp_f0 = phi_f0_2 * 0.5;
        *arg2 = (s32) (*arg2 + 1);
        phi_f0_2 = temp_f0;
        phi_f0_3 = temp_f0;
        if (1.0 <= temp_f0) {
            goto loop_7;
        }
    }
    phi_f0_4 = phi_f0_3;
    phi_f0_5 = phi_f0_3;
    if (phi_f0_3 < 0.5) {
loop_9:
        temp_f0_2 = phi_f0_4 + phi_f0_4;
        *arg2 = (s32) (*arg2 - 1);
        phi_f0_4 = temp_f0_2;
        phi_f0_5 = temp_f0_2;
        if (temp_f0_2 < 0.5) {
            goto loop_9;
        }
    }
    if (0.0 < (f64) arg0) {
        phi_f2 = phi_f0_5;
    } else {
        phi_f2 = -phi_f0_5;
    }
    return phi_f2;
}

? func_80041984(void *arg0, s32 arg1, void *arg2) {
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_v0;

    if (arg1 != 1) {
        if (arg1 != 3) {
            if (arg1 != 4) {
                if (arg1 != 9) {
                    temp_a0 = arg0->unk0;
                    if (temp_a0 != 0) {
                        temp_a0->unk8(temp_a0, arg0);
                    }
                } else {
                    temp_a0_2 = arg0->unk0;
                    arg0->unk48 = 1;
                    if (temp_a0_2 != 0) {
                        temp_a0_2->unk8(temp_a0_2, 9, arg0);
                    }
                }
            } else {
                temp_a0_3 = arg0->unk0;
                arg0->unk38 = 1;
                arg0->unk48 = 0;
                arg0->unk1A = (s16) 1;
                if (temp_a0_3 != 0) {
                    temp_a0_3->unk8(temp_a0_3, 4, arg0);
                }
            }
        } else {
            temp_v0 = arg0->unk40;
            if (temp_v0 != 0) {
                *temp_v0 = arg2;
            } else {
                arg0->unk3C = arg2;
            }
            arg0->unk40 = arg2;
        }
    } else {
        arg0->unk0 = arg2;
    }
    return 0;
}

s32 func_80041A64(s32 arg0, f32 arg1) {
    s32 spB0;
    ? sp68;
    ? *temp_t6;
    f64 temp_f0;
    f64 temp_f12;
    f64 temp_f20;
    f64 temp_f2;
    s32 temp_f6;
    s32 temp_t9;
    s32 temp_v0;
    void *temp_t7;
    void *phi_t7;
    ? *phi_t6;
    f64 phi_f14;
    s32 phi_s0;
    f64 phi_f2;
    f64 phi_f2_2;
    f64 phi_f2_3;
    f64 phi_f0;

    if (arg0 == 0) {
        if (!(ERROR(Read from unset register $f16) <= (f64) arg1)) {
            *saved_reg_s1 = (u16)0;
            return 0;
        }
        *saved_reg_s1 = (u16)0xFFFF;
        return 0x7FFF;
    }
    phi_f14 = (f64) arg1;
    if ((f64) arg1 < 1.0) {
        phi_f14 = 1.0;
    }
    phi_t7 = (void *)0x80070D80;
    phi_t6 = &sp68;
    if (ERROR(Read from unset register $f16) <= 0.0) {
        phi_t7 = (void *)0x80070D80;
        phi_t6 = &sp68;
    }
loop_8:
    temp_t7 = phi_t7 + 0xC;
    temp_t6 = phi_t6 + 0xC;
    temp_t6->unk-C = (s32) *phi_t7;
    temp_t6->unk-8 = (s32) temp_t7->unk-8;
    temp_t6->unk-4 = (s32) temp_t7->unk-4;
    phi_t7 = temp_t7;
    phi_t6 = temp_t6;
    if (temp_t7 != 0x80070DBC) {
        goto loop_8;
    }
    temp_f20 = (f64) 0x40000000;
    temp_t6->unk0 = (s32) temp_t7->unk0;
    temp_f6 = (s32) ((1.0 / (f64) arg0) * temp_f20);
    phi_s0 = temp_f6;
    phi_f2 = 1.0;
    phi_f2_3 = 1.0;
    phi_f0 = 1.0 + ((((&sp68 + ((s32) (_frexpf(phi_f14 / ERROR(Read from unset register $f16), phi_f14, &spB0) * (f64) 0x10) * 8))->unk-40 + (f64) spB0) * *(void *)0x80072080) / (1.0 * temp_f20));
    if (temp_f6 != 0) {
loop_10:
        temp_t9 = phi_s0 >> 1;
        phi_f2_2 = phi_f2_3;
        if ((phi_s0 & 1) != 0) {
            phi_f2_2 = phi_f2_3 * phi_f0;
        }
        phi_s0 = temp_t9;
        phi_f2 = phi_f2_2;
        phi_f2_3 = phi_f2_2;
        phi_f0 = phi_f0 * phi_f0;
        if (temp_t9 != 0) {
            goto loop_10;
        }
    }
    temp_f0 = phi_f2 * phi_f2;
    temp_f12 = temp_f0 * temp_f0;
    temp_f2 = temp_f12 * temp_f12;
    temp_v0 = (s32) ((s32) temp_f2 << 0x10) >> 0x10;
    *saved_reg_s1 = (s16) (s32) ((temp_f2 - (f64) (f32) temp_v0) * *(void *)0x80072088);
    return temp_v0;
}

void *_pullSubFrame(void) {
    s16 temp_v1;
    s32 temp_s7;
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s4;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_v0;
    void *phi_s0;
    void *phi_s4;

    temp_a0 = saved_reg_s3->unk0;
    if (saved_reg_s3->unk48 != 1) {
block_2:
        return ERROR(Read from unset register $t0);
    }
    if (saved_reg_s5 == 0) {
        goto block_2;
    }
    temp_v0 = temp_a0->unk4(temp_a0, saved_reg_s6, saved_reg_s5, ERROR(Read from unset register $t0));
    temp_s7 = saved_reg_s5 * 2;
    temp_v0->unk0 = (s32) ((*saved_reg_s6 & 0xFFFF) | 0x8000000);
    temp_s4 = temp_v0 + 0x10;
    temp_v0->unk4 = (s32) (((*saved_reg_s0 + 0x440) << 0x10) | (temp_s7 & 0xFFFF));
    temp_v0->unk8 = (s32) (((*saved_reg_s0 + 0x580) & 0xFFFF) | 0x8080000);
    temp_v1 = *saved_reg_s0;
    temp_s0 = temp_s4;
    temp_v0->unkC = (s32) (((temp_v1 + 0x800) & 0xFFFF) | ((temp_v1 + 0x6C0) << 0x10));
    if (saved_reg_s3->unk38 != 0) {
        saved_reg_s3->unk38 = 0;
        saved_reg_s3->unk28 = (s16) ((s32) (((saved_reg_s3->unk18 * 2) + 0x80070000)->unkC80 * saved_reg_s3->unk1A) >> 0xF);
        saved_reg_s3->unk26 = func_80041A64((f64) saved_reg_s3->unk28, saved_reg_s3->unk34);
        saved_reg_s3->unk2E = (s16) ((s32) ((-(s32) (saved_reg_s3->unk18 * 2) + 0x80070000)->unkD7E * saved_reg_s3->unk1A) >> 0xF);
        saved_reg_s3->unk2C = func_80041A64((f64) saved_reg_s3->unk2E, saved_reg_s3->unk34);
        temp_s4->unk0 = (s32) ((saved_reg_s3->unk1C & 0xFFFF) | 0x9060000);
        temp_s4->unk4 = 0;
        temp_s4 = temp_s4 + 8;
        temp_s4->unk0 = (s32) ((saved_reg_s3->unk1E & 0xFFFF) | 0x9040000);
        temp_s4->unk4 = 0;
        temp_s4 = temp_s4 + 8;
        temp_a1 = temp_s4;
        temp_a1->unk0 = (s32) ((saved_reg_s3->unk28 & 0xFFFF) | 0x9020000);
        temp_s4 = temp_s4 + 8;
        temp_a1->unk4 = (s32) ((saved_reg_s3->unk26 << 0x10) | saved_reg_s3->unk24);
        temp_a2 = temp_s4;
        temp_a2->unk0 = (s32) ((saved_reg_s3->unk2E & 0xFFFF) | 0x9000000);
        temp_s4 = temp_s4 + 8;
        temp_a2->unk4 = (s32) ((saved_reg_s3->unk2C << 0x10) | saved_reg_s3->unk2A);
        temp_v0_2 = temp_s4;
        temp_v0_2->unk0 = (s32) ((saved_reg_s3->unk20 & 0xFFFF) | 0x9080000);
        temp_s4 = temp_s4 + 8;
        temp_s0_2 = temp_s4;
        temp_v0_2->unk4 = (s32) (saved_reg_s3->unk22 & 0xFFFF);
        *temp_s0_2 = 0x3090000;
        phi_v0 = func_80034DD0(saved_reg_s3->unk14, temp_a1, temp_a2);
        phi_s0 = temp_s0_2;
        phi_s4 = temp_s4 + 8;
    } else {
        temp_s0->unk0 = 0x3080000;
        phi_v0 = func_80034DD0(saved_reg_s3->unk14);
        phi_s0 = temp_s0;
        phi_s4 = temp_s4 + 8;
    }
    phi_s0->unk4 = phi_v0;
    *saved_reg_s6 = (s16) (*saved_reg_s6 + temp_s7);
    saved_reg_s3->unk30 = (s32) (saved_reg_s3->unk30 + saved_reg_s5);
    return phi_s4;
}

s32 _getVol(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 phi_a0;
    s32 phi_v0;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f0;

    arg2 = arg1;
    arg3 = arg2;
    temp_t9 = arg0 >> 3;
    if (temp_t9 == 0) {
        return arg0;
    }
    phi_a0 = temp_t9;
    phi_v0 = 0;
    phi_f2_2 = 1.0f;
    phi_f0 = ((f32) (((s32) (arg1 << 0x10) >> 0x10) << 0x10) + (f32) (u32) (arg2 & 0xFFFF)) / 65536.0f;
loop_3:
    temp_t8 = phi_a0 >> 1;
    phi_f2 = phi_f2_2;
    if ((phi_a0 & 1) != 0) {
        phi_f2 = phi_f2_2 * phi_f0;
    }
    if (temp_t8 != 0) {
        temp_v0 = phi_v0 + 1;
        phi_a0 = temp_t8;
        phi_v0 = temp_v0;
        phi_f2_2 = phi_f2;
        phi_f0 = phi_f0 * phi_f0;
        if (temp_v0 != 0x20) {
            goto loop_3;
        }
    }
    return (bitwise s32) ((bitwise f32) arg0 * phi_f2);
}

Failed to decompile function func_80041F7C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".
