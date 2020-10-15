void func_8003FD50(void *arg0, s32 arg1) {
    s32 sp2C;
    void *temp_s0;
    void *temp_s1;
    void *phi_s0;

    sp2C = func_80034160(1);
    temp_s0 = arg0->unk8;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        temp_s1 = phi_s0->unk0;
        if (((s32) (arg1 << 0x10) >> 0x10) == phi_s0->unkC) {
            if (temp_s1 != 0) {
                temp_s1->unk8 = (s32) (temp_s1->unk8 + phi_s0->unk8);
            }
            func_80036820(phi_s0);
            func_80036850(phi_s0, arg0);
        }
        phi_s0 = temp_s1;
        if (temp_s1 != 0) {
            goto loop_1;
        }
    }
    func_80034160(sp2C);
}

void func_8003FDFC(void *arg0) {
    s32 sp2C;
    void *temp_s0;
    void *temp_s1;
    void *phi_s0;

    sp2C = func_80034160(1);
    temp_s0 = arg0->unk8;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        temp_s1 = *phi_s0;
        func_80036820(phi_s0);
        func_80036850(phi_s0, arg0);
        phi_s0 = temp_s1;
        if (temp_s1 != 0) {
            goto loop_1;
        }
    }
    func_80034160(sp2C);
}

void func_8003FE6C(void *arg0, s32 arg1, s32 arg2) {
    void *sp2C;
    s32 sp20;
    s32 sp1C;
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_t0;
    void *temp_v0_2;
    void *phi_a1;
    s32 phi_a3;

    sp20 = 0;
    temp_v0 = func_80034160(1);
    temp_a3 = arg2;
    temp_t0 = *arg0;
    if (temp_t0 == 0) {
        func_80034160(temp_v0, temp_v0, temp_a3);
        return;
    }
    sp1C = temp_v0;
    arg2 = temp_a3;
    sp2C = temp_t0;
    func_80036820(temp_t0, temp_v0, temp_a3);
    func_80048A40(arg1, temp_t0 + 0xC, 0x10);
    if (arg2 == 0x7FFFFFFF) {
        sp20 = -1;
    }
    phi_a1 = arg0 + 8;
    phi_a3 = arg2;
    if (arg0 != -8) {
loop_5:
        temp_v0_2 = *phi_a1;
        if (temp_v0_2 == 0) {
            if (sp20 != 0) {
                temp_t0->unk8 = 0;
            } else {
                temp_t0->unk8 = phi_a3;
            }
            func_80036850(temp_t0, phi_a1, phi_a3);
        } else {
            temp_v1 = temp_v0_2->unk8;
            if (phi_a3 < temp_v1) {
                temp_t0->unk8 = phi_a3;
                temp_v0_2->unk8 = (s32) (temp_v0_2->unk8 - phi_a3);
                func_80036850(temp_t0, phi_a1, temp_v0_2, phi_a3);
            } else {
                phi_a1 = temp_v0_2;
                phi_a3 = phi_a3 - temp_v1;
                if (temp_v0_2 != 0) {
                    goto loop_5;
                }
            }
        }
    }
    func_80034160(sp1C);
}

s32 func_8003FF90(void *arg0, void *arg1) {
    s32 sp28;
    s32 sp24;
    void *temp_s0;
    s32 phi_v1;

    sp24 = func_80034160(1);
    temp_s0 = arg0->unk8;
    if (temp_s0 != 0) {
        func_80036820(temp_s0);
        func_80048A40(temp_s0 + 0xC, arg1, 0x10);
        func_80036850(temp_s0, arg0);
        phi_v1 = temp_s0->unk8;
    } else {
        *arg1 = (u16)-1;
        phi_v1 = 0;
    }
    sp28 = phi_v1;
    func_80034160(sp24);
    return sp28;
}

void func_8004001C(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_s0;
    s32 phi_s1;
    s32 phi_s0;

    arg0->unk10 = 0;
    arg0->unk8 = 0;
    arg0->unkC = 0;
    arg0->unk0 = 0;
    arg0->unk4 = 0;
    if (arg2 > 0) {
        phi_s1 = arg1;
        phi_s0 = 0;
loop_2:
        func_80036850(phi_s1, arg0);
        temp_s0 = phi_s0 + 1;
        phi_s1 = phi_s1 + 0x1C;
        phi_s0 = temp_s0;
        if (temp_s0 != arg2) {
            goto loop_2;
        }
    }
}

void func_80040090(void *arg0) {
    func_80048AC0(0x80042614, 0x800425E0, 3);
    arg0->unk14 = 0;
    arg0->unk18 = 1;
}

void func_800400D4(void *arg0, s32 arg1, s32 arg2) {
    func_80048AC0(0x80040900, 0x800408D0, 7);
    arg0->unk14 = 0;
    arg0->unk18 = arg2;
    arg0->unk1C = arg1;
}

void func_80040128(void *arg0, s32 arg1, s32 arg2) {
    func_80048AC0(0x80042500, 0x800424D0, 6);
    arg0->unk14 = 0;
    arg0->unk18 = arg2;
    arg0->unk1C = arg1;
}

void func_8004017C(void *arg0, s32 arg1) {
    func_80048AC0(0x8004165C, 0x80041570, 1);
    arg0->unk14 = func_80036660(0, 0, arg1, 1, 0x20);
    arg0->unk24 = 1;
    arg0->unk30 = 0;
    arg0->unk1C = 0;
    arg0->unk28 = 0;
    arg0->unk2C = 0;
    arg0->unk20 = 0.0f;
    arg0->unk18 = 1.0f;
}

void func_80040204(void *arg0, void *arg1, s32 arg2) {
    func_80048AC0(0x800410CC, 0x80040A20, 0);
    arg0->unk14 = func_80036660(0, 0, arg2, 1, 0x20);
    arg0->unk18 = func_80036660(0, 0, arg2, 1, 0x20);
    arg0->unk30 = arg1(arg0 + 0x34);
    arg0->unk3C = 0;
    arg0->unk40 = 1;
    arg0->unk44 = 0;
}

void func_800402AC(void *arg0, s32 arg1) {
    func_80048AC0(0x80041F7C, 0x80041984, 4);
    arg0->unk14 = func_80036660(0, 0, arg1, 1, 0x50);
    arg0->unk38 = 1;
    arg0->unk48 = 0;
    arg0->unk1A = (s16) 1;
    arg0->unk28 = (s16) 1;
    arg0->unk2E = (s16) 1;
    arg0->unk1C = (s16) 1;
    arg0->unk1E = (s16) 1;
    arg0->unk20 = (u16)0;
    arg0->unk22 = (u16)0;
    arg0->unk26 = (s16) 1;
    arg0->unk24 = (u16)0;
    arg0->unk30 = 0;
    arg0->unk34 = 0;
    arg0->unk18 = (u16)0;
    arg0->unk3C = 0;
    arg0->unk40 = 0;
    arg0->unk44 = 0;
}

f64 func_80040350(void *arg0) {
    f64 temp_f0;
    f64 temp_f2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_v1;
    void *temp_a2;
    void *temp_a2_2;
    void *phi_a2;
    s32 phi_a1;
    f64 phi_f0;
    void *phi_a2_2;
    s32 phi_a1_2;
    f64 phi_return;

    temp_v1 = (s32) (((s32) (arg0->unk0 << 0xE) >> 0xF) << 0x10) >> 0x10;
    arg0->unk2 = (s16) (0x4000 - temp_v1);
    arg0->unk2C = 1;
    phi_a2 = arg0;
    phi_a1 = 0;
loop_1:
    temp_a1 = phi_a1 + 1;
    temp_a2 = phi_a2 + 2;
    temp_a2->unk6 = (u16)0;
    phi_a2 = temp_a2;
    phi_a1 = temp_a1;
    if (temp_a1 < 8) {
        goto loop_1;
    }
    temp_a1 = temp_a1 + 1;
    temp_a2->unk8 = (s16) temp_v1;
    temp_f2 = (f64) temp_v1 / 16384.0;
    phi_f0 = temp_f2;
    phi_a2_2 = temp_a2 + 2;
    phi_a1_2 = temp_a1;
    phi_return = temp_f2;
    if (temp_a1 < 0x10) {
loop_3:
        temp_f0 = phi_f0 * temp_f2;
        temp_a1_2 = phi_a1_2 + 1;
        temp_a2_2 = phi_a2_2 + 2;
        temp_a2_2->unk6 = (s16) (s32) (temp_f0 * 16384.0);
        phi_f0 = temp_f0;
        phi_a2_2 = temp_a2_2;
        phi_a1_2 = temp_a1_2;
        phi_return = temp_f0;
        if (temp_a1_2 < 0x10) {
            goto loop_3;
        }
    }
    return phi_return;
}

Failed to decompile function func_800403F0:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

s32 func_80040830(void *arg0, s32 arg1, ? arg2, ? arg3) {
    s32 temp_a2;
    s32 temp_s1;

    temp_s1 = ((s32) (arg1 << 0x10) >> 0x10) * 0x4C;
    func_800403F0((arg0->unk34 + temp_s1) + 0x20, arg2, arg3);
    temp_a2 = arg0->unk34 + temp_s1;
    func_800493D4(temp_a2 + 0x20, 1, temp_a2);
    func_800408D0(arg0->unk30, 2, (arg0->unk34 + temp_s1) + 0x20);
    return (arg0->unk34 + temp_s1) + 0x20;
}
