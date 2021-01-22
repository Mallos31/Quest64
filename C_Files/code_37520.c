void func_80036920(void) {

}

s32 _timeToSamplesNoRound(void *arg0, s32 arg1) {
    return (s32) (f32) (((f64) ((f32) arg1 * (f32) arg0->unk44) / *(void *)0x80071C00) + 0.5) & -0x10;
}

void _freePVoice(s32 arg0, s32 arg1) {
    func_80036820(arg1);
    func_80036850(arg1, arg0 + 0x14);
}

void _collectPVoices(void *arg0) {
    s32 temp_s0;
    s32 temp_s0_2;
    s32 phi_s0;

    temp_s0 = arg0->unk14;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        func_80036820(phi_s0);
        func_80036850(phi_s0, arg0 + 4);
        temp_s0_2 = arg0->unk14;
        phi_s0 = temp_s0_2;
        if (temp_s0_2 != 0) {
            goto loop_1;
        }
    }
}

void *__freeParam(void *arg0) {
    void *temp_v0;

    temp_v0 = *(void *)0x80070990;
    *arg0 = (void *) temp_v0->unk2C;
    temp_v0->unk2C = arg0;
    return temp_v0;
}

void *__allocParam(void) {
    void *temp_a0;
    void *temp_v0;
    void *phi_v1;

    temp_v0 = *(void *)0x80070990;
    temp_a0 = temp_v0->unk2C;
    phi_v1 = NULL;
    if (temp_a0 != 0) {
        temp_v0->unk2C = (void *) *temp_a0;
        *temp_a0 = NULL;
        phi_v1 = temp_a0;
    }
    return phi_v1;
}

void func_80036A60(void) {

}

void *func_80036A68(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *spB4;
    s16 spAA;
    f64 temp_f20;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s3;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    void *temp_s1;
    void *temp_s2;
    void *temp_s4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    s32 phi_a0;
    s32 phi_v1;
    void *phi_v1_2;
    s32 phi_a0_2;
    s32 phi_s0;
    s32 phi_s3;
    void *phi_s4;
    s32 phi_s5;
    s32 phi_s0_2;
    void *phi_s4_2;

    temp_s1 = *(void *)0x80070990;
    spAA = (u16)0;
    if (temp_s1->unk0 == 0) {
        *arg1 = 0;
        return arg0;
    }
    spB4 = NULL;
    temp_v0 = temp_s1->unk0;
    if (temp_v0 != 0) {
        phi_v0 = temp_v0;
        phi_a0 = temp_s1->unk20;
        phi_v1 = 0x7FFFFFFF;
loop_4:
        if ((phi_v0->unk10 - phi_a0) < phi_v1) {
            spB4 = phi_v0;
            temp_a0 = temp_s1->unk20;
            phi_a0 = temp_a0;
            phi_v1 = phi_v0->unk10 - temp_a0;
        }
        temp_v0_2 = phi_v0->unk0;
        phi_v0 = temp_v0_2;
        if (temp_v0_2 != 0) {
            goto loop_4;
        }
    }
    temp_v0_3 = spB4->unk10;
    temp_s1->unk1C = temp_v0_3;
    if ((temp_v0_3 - temp_s1->unk20) < arg3) {
        temp_f20 = *(void *)0x80071C08;
loop_9:
        temp_s1->unk1C = (s32) (temp_s1->unk1C & -0x10);
        spB4->unk10 = (s32) (spB4->unk10 + (s32) (f32) (((f64) ((f32) spB4->unk8(spB4) * (f32) temp_s1->unk44) / temp_f20) + 0.5));
        spB4 = NULL;
        temp_v1 = temp_s1->unk0;
        if (temp_v1 != 0) {
            phi_v1_2 = temp_v1;
            phi_a0_2 = temp_s1->unk20;
            phi_s0 = 0x7FFFFFFF;
loop_11:
            if ((phi_v1_2->unk10 - phi_a0_2) < phi_s0) {
                spB4 = phi_v1_2;
                temp_a0_2 = temp_s1->unk20;
                phi_a0_2 = temp_a0_2;
                phi_s0 = phi_v1_2->unk10 - temp_a0_2;
            }
            temp_v1_2 = phi_v1_2->unk0;
            phi_v1_2 = temp_v1_2;
            if (temp_v1_2 != 0) {
                goto loop_11;
            }
        }
        temp_v0_4 = spB4->unk10;
        temp_s1->unk1C = temp_v0_4;
        if ((temp_v0_4 - temp_s1->unk20) < arg3) {
            goto loop_9;
        }
    }
    temp_s1->unk1C = (s32) (temp_s1->unk1C & -0x10);
    phi_s4_2 = arg0;
    if (arg3 > 0) {
        phi_s3 = arg3;
        phi_s4 = arg0;
        phi_s5 = arg2;
loop_17:
        temp_v0_5 = temp_s1->unk48;
        phi_s0_2 = phi_s3;
        if (temp_v0_5 < phi_s3) {
            phi_s0_2 = temp_v0_5;
        }
        phi_s4->unk0 = 0x7000000;
        phi_s4->unk4 = 0;
        temp_s2 = temp_s1->unk38;
        temp_s2->unk8(temp_s2, 6, phi_s5);
        temp_s3 = phi_s3 - phi_s0_2;
        temp_s4 = temp_s2->unk4(temp_s2, &spAA, phi_s0_2, temp_s1->unk20, phi_s4 + 8);
        temp_s1->unk20 = (s32) (temp_s1->unk20 + phi_s0_2);
        phi_s3 = temp_s3;
        phi_s4 = temp_s4;
        phi_s5 = phi_s5 + (phi_s0_2 * 4);
        phi_s4_2 = temp_s4;
        if (temp_s3 > 0) {
            goto loop_17;
        }
    }
    *arg1 = (s32) ((s32) (phi_s4_2 - arg0) >> 3);
    _collectPVoices(temp_s1);
    return phi_s4_2;
}

void func_80036D00(void *arg0, void *arg1) {
    s32 sp5C;
    void *sp48;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s7;
    s32 temp_v0;
    void *temp_s0;
    void *temp_s5;
    void *temp_v0_2;
    void *temp_v0_3;
    void *phi_s0;
    s32 phi_s3;
    s32 phi_s2;
    s32 phi_s1;
    s32 phi_s4;
    void *phi_v1;
    s32 phi_s4_2;

    temp_s7 = arg1->unk14;
    arg0->unk0 = 0;
    arg0->unk20 = 0;
    arg0->unk1C = 0;
    arg0->unk3C = (s32) arg1->unk4;
    arg0->unk48 = 0xA0;
    arg0->unk44 = (s32) arg1->unk18;
    arg0->unk24 = (s32) arg1->unk10;
    temp_v0 = func_80036660(0, 0, temp_s7, 1, 0x1C);
    sp5C = temp_v0;
    func_80040090(temp_v0);
    arg0->unk38 = sp5C;
    arg0->unk34 = func_80036660(0, 0, temp_s7, 1, 0x4C);
    arg0->unk40 = 1;
    func_80040128(arg0->unk34, func_80036660(0, 0, temp_s7, arg1->unk4, 4), arg1->unk4);
    arg0->unk30 = func_80036660(0, 0, temp_s7, 1, 0x20);
    func_800400D4(arg0->unk30, func_80036660(0, 0, temp_s7, arg1->unk4, 4), arg1->unk4);
    if (arg1->unk1C != 0) {
        func_80040830(arg0, 0, arg1, temp_s7);
    } else {
        func_800408D0(arg0->unk30, 2, arg0->unk34);
    }
    arg0->unk4 = 0;
    arg0->unk8 = 0;
    arg0->unk14 = 0;
    arg0->unk18 = 0;
    arg0->unkC = 0;
    arg0->unk10 = 0;
    temp_v0_2 = func_80036660(0, 0, temp_s7, arg1->unk4, 0xDC);
    temp_s0 = temp_v0_2;
    if (arg1->unk4 > 0) {
        temp_s1 = temp_v0_2 + 0x8C;
        temp_s2 = temp_v0_2 + 0x58;
        temp_s3 = temp_v0_2 + 0x10;
        sp48 = arg0 + 4;
        phi_s0 = temp_s0;
        phi_s3 = temp_s3;
        phi_s2 = temp_s2;
        phi_s1 = temp_s1;
        phi_s4 = 0;
loop_5:
        temp_s5 = phi_s0;
        func_80036850(phi_s0, sp48);
        phi_s0->unk8 = 0;
        func_80040204(phi_s3, arg0->unk24, temp_s7);
        func_80040A20(phi_s3, 1, 0);
        func_8004017C(phi_s2, temp_s7);
        func_80041570(phi_s2, 1, phi_s3);
        func_800402AC(phi_s1, temp_s7);
        func_80041984(phi_s1, 1, phi_s2);
        func_800424D0(arg0->unk34, 2, phi_s1);
        temp_s5->unkC = (void *) (temp_s5 + 0x8C);
        temp_s4 = phi_s4 + 1;
        phi_s0 = phi_s0 + 0xDC;
        phi_s3 = phi_s3 + 0xDC;
        phi_s2 = phi_s2 + 0xDC;
        phi_s1 = phi_s1 + 0xDC;
        phi_s4 = temp_s4;
        if (temp_s4 < arg1->unk4) {
            goto loop_5;
        }
    }
    func_800425E0(sp5C, 1, arg0->unk30);
    temp_v0_3 = func_80036660(0, 0, temp_s7, arg1->unk8, 0x1C);
    arg0->unk2C = NULL;
    phi_v1 = temp_v0_3;
    if (arg1->unk8 > 0) {
loop_8:
        temp_s4_2 = phi_s4_2 + 1;
        *phi_v1 = (void *) arg0->unk2C;
        arg0->unk2C = phi_v1;
        phi_v1 = phi_v1 + 0x1C;
        phi_s4_2 = temp_s4_2;
        if (temp_s4_2 < arg1->unk8) {
            goto loop_8;
        }
    }
    arg0->unk28 = temp_s7;
}

s32 func_80037000(void) {
    return *(void *)0xA4500004;
}

? func_80037010(s32 arg0, s32 arg1) {
    s32 sp1C;

    sp1C = arg0;
    if (*(void *)0x800709A0 != 0) {
        sp1C = arg0 - 0x2000;
    }
    if (((arg0 + arg1) & 0x3FFF) == 0x2000) {
        *(void *)0x800709A0 = (u8)1U;
    } else {
        *(void *)0x800709A0 = (u8)0U;
    }
    if (__osAiDeviceBusy() != 0) {
        return -1;
    }
    *(void *)0xA4500000 = func_80034DD0(sp1C);
    *(void *)0xA4500004 = arg1;
    return 0;
}
