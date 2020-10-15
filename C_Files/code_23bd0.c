u32 func_80022FD0(u32 arg0) {
    u32 temp_t8;
    u32 temp_v0;

    if (arg0 != 0) {
        temp_t8 = (*(void *)0x8004D748 * 0x41C64E6D) + 0x3039;
        temp_v0 = (u32) (temp_t8 >> 0x10) % arg0;
        *(void *)0x8004D748 = temp_t8;
        return temp_v0;
    }
    return 0U;
}

Failed to decompile function func_80023028:

Label L80023080_before refers to a delay slot; this is currently not supported.
Please modify the assembly to work around it (e.g. copy the instruction
to all jump sources and move the label, or add a nop to the delay slot).

This label was auto-generated as the target for a branch-likely
instruction (e.g. beql); you can also try to turn that into a non-likely
branch if that's equivalent in this context, i.e., if it's okay to
execute its delay slot unconditionally.

void func_800231B0(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f0 = *arg1;
    temp_f2 = *arg0;
    temp_f2_2 = 1.0f / func_80034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    *arg0 = (f32) (*arg0 * temp_f2_2);
    *arg1 = (f32) (*arg1 * temp_f2_2);
}

f32 func_80023210(f32 arg0, f32 arg1) {
    f32 phi_f2;
    f64 phi_f6;

    if (arg1 == 0.0f) {
        if (0.0f <= arg0) {
            phi_f2 = (f32) *(void *)0x800716E0;
        } else {
            phi_f6 = *(void *)0x800716E8;
block_10:
            phi_f2 = (f32) phi_f6;
        }
    } else {
        if (0.0f < arg1) {
            phi_f2 = func_80023028(arg0 / arg1);
        } else {
            if ((arg1 < 0.0f) && (arg0 <= 0.0f)) {
                phi_f2 = (f32) ((f64) func_80023028(arg0 / arg1) - *(void *)0x800716F0);
            } else {
                phi_f6 = (f64) func_80023028(arg0 / arg1) + *(void *)0x800716F8;
                goto block_10;
            }
        }
    }
    return phi_f2;
}

void func_800232F4(f32 arg0, void *arg1) {
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;

    sp1C = func_80035680(arg0);
    temp_f0 = func_800361F0(arg0);
    temp_f12 = arg1->unk4;
    temp_f2 = arg1->unk0;
    temp_f10 = temp_f12 * temp_f0;
    temp_f16 = temp_f2 * sp1C;
    arg1->unk0 = (f32) ((temp_f12 * sp1C) - (temp_f2 * temp_f0));
    arg1->unk4 = (f32) (temp_f10 + temp_f16);
}

void func_80023360(void *arg0, ? arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f4;

    sp4C = func_80035680(arg1);
    temp_f20 = func_800361F0(arg1);
    sp48 = func_80035680(arg2);
    sp3C = func_800361F0(arg2);
    sp44 = func_80035680(arg3);
    temp_f0 = func_800361F0(arg3);
    temp_f12 = sp44 * sp4C;
    temp_f10 = -sp48;
    arg0->unk0 = (f32) (((temp_f0 * sp3C) + (temp_f12 * sp48)) * arg4);
    arg0->unk4 = (f32) ((sp44 * temp_f20) * arg4);
    sp34 = temp_f10;
    arg0->unkC = 0.0f;
    arg0->unk8 = (f32) (((sp34 * temp_f0) + (temp_f12 * sp3C)) * arg4);
    sp30 = -sp44;
    temp_f4 = temp_f0 * sp4C;
    sp2C = temp_f4;
    arg0->unk10 = (f32) (((sp30 * sp3C) + (sp2C * sp48)) * arg4);
    arg0->unk14 = (f32) ((temp_f0 * temp_f20) * arg4);
    arg0->unk1C = 0.0f;
    arg0->unk18 = (f32) (((sp30 * temp_f10) + (temp_f4 * sp3C)) * arg4);
    arg0->unk20 = (f32) ((temp_f20 * sp48) * arg4);
    arg0->unk2C = 0.0f;
    arg0->unk24 = (f32) (-sp4C * arg4);
    arg0->unk28 = (f32) ((temp_f20 * sp3C) * arg4);
    arg0->unk30 = arg5;
    arg0->unk34 = arg6;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg7;
}

void func_80023500(s32 arg0, ? arg1, ? arg2, s32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    func_80023360(arg1, arg2, 0x8008D030, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    func_80035200(0x8008D030, arg0);
}

void func_80023570(void *arg0, ? arg1, f32 arg2, f32 arg3) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f8;

    sp4C = func_80035680(arg1);
    temp_f20 = func_800361F0(arg1);
    sp48 = func_80035680(arg2);
    sp3C = func_800361F0(arg2);
    sp44 = func_80035680(arg3);
    temp_f0 = func_800361F0(arg3);
    temp_f12 = sp44 * sp4C;
    arg0->unk0 = (f32) ((temp_f0 * sp3C) + (temp_f12 * sp48));
    arg0->unk4 = (f32) (sp44 * temp_f20);
    sp34 = -sp48;
    arg0->unkC = 0.0f;
    temp_f8 = -sp44;
    arg0->unk8 = (f32) ((sp34 * temp_f0) + (temp_f12 * sp3C));
    sp30 = temp_f8;
    sp2C = temp_f0 * sp4C;
    arg0->unk10 = (f32) ((sp30 * sp3C) + (sp2C * sp48));
    arg0->unk14 = (f32) (temp_f0 * temp_f20);
    arg0->unk1C = 0.0f;
    arg0->unk18 = (f32) ((temp_f8 * sp34) + (sp2C * sp3C));
    arg0->unk20 = (f32) (temp_f20 * sp48);
    arg0->unk2C = 0.0f;
    arg0->unk28 = (f32) (temp_f20 * sp3C);
    arg0->unk24 = (f32) -sp4C;
    arg0->unk30 = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unk3C = 1.0f;
}

void func_800236CC(s32 arg0, ? arg1, ? arg2, s32 arg3) {
    func_80023570(arg1, arg2, 0x8008D030, arg1, arg2, arg3);
    func_80035200(0x8008D030, arg0);
}

void func_8002371C(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 sp40;
    f32 sp34;
    f32 sp28;
    f32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    s32 temp_cond;
    void *temp_a0;
    f32 phi_f18;
    f32 phi_f20;
    f32 phi_f2;
    f32 phi_f12;

    temp_f2 = arg4 - arg1;
    temp_f16 = arg6 - arg3;
    sp28 = temp_f2;
    sp24 = temp_f16;
    temp_f0 = func_80034F60((temp_f2 * temp_f2) + (temp_f16 * temp_f16));
    temp_a0 = arg0;
    temp_cond = temp_f0 == 0.0f;
    sp40 = temp_f0;
    if (temp_cond) {
        phi_f18 = 0.0f;
        phi_f20 = 1.0f;
    } else {
        phi_f18 = temp_f2 / temp_f0;
        phi_f20 = temp_f16 / temp_f0;
    }
    temp_f16_2 = arg5 - arg2;
    arg0 = temp_a0;
    sp34 = phi_f18;
    sp28 = temp_f16_2;
    temp_f0_2 = func_80034F60((sp40 * sp40) + (temp_f16_2 * temp_f16_2), 0.0f, temp_a0);
    temp_f18 = phi_f18;
    if (temp_f0_2 == 0.0f) {
        phi_f2 = 0.0f;
        phi_f12 = 1.0f;
    } else {
        phi_f2 = -temp_f16_2 / temp_f0_2;
        phi_f12 = sp40 / temp_f0_2;
    }
    arg0->unk8 = (f32) -temp_f18;
    arg0->unk0 = phi_f20;
    arg0->unk4 = 0.0f;
    arg0->unk10 = (f32) (phi_f2 * temp_f18);
    arg0->unkC = 0.0f;
    arg0->unk14 = phi_f12;
    arg0->unk18 = (f32) (phi_f2 * phi_f20);
    arg0->unk1C = 0.0f;
    arg0->unk20 = (f32) (phi_f12 * temp_f18);
    arg0->unk24 = (f32) -phi_f2;
    arg0->unk2C = 0.0f;
    arg0->unk28 = (f32) (phi_f12 * phi_f20);
    arg0->unk30 = arg1;
    arg0->unk34 = arg2;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg3;
}

void func_8002387C(s32 arg0, ? arg1, ? arg2, s32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    func_8002371C(arg1, arg2, 0x8008D030, arg1, arg2, arg3, arg4, arg5, arg6);
    func_80035200(0x8008D030, arg0);
}

void func_800238E4(void *arg0, f32 arg1, f32 arg2, f32 arg3, void *arg4, void *arg5, void *arg6) {
    *arg4 = (f32) ((arg0->unk8 * arg3) + ((arg0->unk0 * arg1) + (arg0->unk4 * arg2)));
    *arg5 = (f32) ((arg0->unk18 * arg3) + ((arg0->unk10 * arg1) + (arg0->unk14 * arg2)));
    *arg6 = (f32) ((arg0->unk28 * arg3) + ((arg0->unk20 * arg1) + (arg0->unk24 * arg2)));
}

void func_80023974(void *arg0, f32 arg1, f32 arg2, f32 arg3, void *arg4, void *arg5, void *arg6) {
    *arg4 = (f32) ((arg0->unk20 * arg3) + ((arg0->unk0 * arg1) + (arg0->unk10 * arg2)));
    *arg5 = (f32) ((arg0->unk24 * arg3) + ((arg0->unk4 * arg1) + (arg0->unk14 * arg2)));
    *arg6 = (f32) -((arg0->unk28 * arg3) + ((arg0->unk8 * arg1) + (arg0->unk18 * arg2)));
}

void func_80023A08(void *arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 sp3C;
    f32 sp34;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f4;
    f32 temp_f6;
    void *temp_a0;
    f32 phi_f18;
    f32 phi_f22;

    temp_f14 = arg3;
    arg3 = temp_f14;
    temp_f0 = func_80034F60((arg1 * arg1) + (temp_f14 * temp_f14), temp_f14);
    temp_f16 = temp_f0;
    temp_f6 = temp_f16 * temp_f16;
    temp_a0 = arg0;
    if (temp_f0 != 0.0f) {
        phi_f18 = arg3 / temp_f0;
        phi_f22 = arg1 / temp_f0;
    } else {
        if (0.0f <= arg2) {
            phi_f18 = (f32) 1.0;
            phi_f22 = 0.0f;
        } else {
            phi_f18 = (f32) -1.0;
            phi_f22 = 0.0f;
        }
    }
    arg0 = temp_a0;
    sp34 = temp_f16;
    sp3C = phi_f18;
    temp_f0_2 = func_80034F60(temp_f6 + (arg2 * arg2), arg3, temp_a0);
    temp_f4 = sp34 / temp_f0_2;
    temp_f18 = phi_f18;
    temp_f14_2 = -phi_f22;
    temp_f12 = 0.0f * temp_f4;
    sp2C = temp_f4;
    arg0->unk0 = (f32) ((1.0f * temp_f18) + (temp_f12 * phi_f22));
    arg0->unkC = 0.0f;
    temp_f20 = arg2 / temp_f0_2;
    arg0->unk4 = (f32) (0.0f * temp_f20);
    arg0->unk8 = (f32) ((temp_f14_2 * 1.0f) + (temp_f12 * temp_f18));
    arg0->unk1C = 0.0f;
    temp_f16_2 = 1.0f * temp_f4;
    arg0->unk10 = (f32) ((-0.0f * temp_f18) + (temp_f16_2 * phi_f22));
    arg0->unk14 = (f32) (1.0f * temp_f20);
    arg0->unk20 = (f32) (temp_f20 * phi_f22);
    arg0->unk18 = (f32) ((-0.0f * temp_f14_2) + (temp_f16_2 * temp_f18));
    arg0->unk2C = 0.0f;
    arg0->unk30 = 0.0f;
    arg0->unk24 = (f32) -temp_f4;
    arg0->unk34 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unk28 = (f32) (temp_f20 * temp_f18);
    arg0->unk3C = 1.0f;
}

void func_80023BCC(s32 arg0, ? arg1, ? arg2, s32 arg3) {
    func_80023A08(arg1, arg2, 0x8008D030, arg1, arg2, arg3);
    func_80035200(0x8008D030, arg0);
}

void func_80023C1C(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f20_2;

    temp_f0 = *(void *)0x8004D74C;
    temp_f20 = arg4 * temp_f0;
    arg5 = arg5 * temp_f0;
    arg6 = arg6 * temp_f0;
    sp4C = func_80035680(temp_f20);
    temp_f20_2 = func_800361F0(temp_f20);
    sp48 = func_80035680(arg5);
    sp3C = func_800361F0(arg5);
    sp44 = func_80035680(arg6);
    temp_f0_2 = func_800361F0(arg6);
    temp_f12 = sp44 * sp4C;
    arg0->unk0 = (f32) (((temp_f0_2 * sp3C) + (temp_f12 * sp48)) * arg7);
    arg0->unk4 = (f32) ((sp44 * temp_f20_2) * arg7);
    sp34 = -sp48;
    arg0->unkC = 0.0f;
    arg0->unk8 = (f32) (((sp34 * temp_f0_2) + (temp_f12 * sp3C)) * arg7);
    sp30 = -sp44;
    sp2C = temp_f0_2 * sp4C;
    arg0->unk10 = (f32) (((sp30 * sp3C) + (sp2C * sp48)) * arg8);
    arg0->unk14 = (f32) ((temp_f0_2 * temp_f20_2) * arg8);
    arg0->unk1C = 0.0f;
    arg0->unk18 = (f32) (((sp30 * sp34) + (sp2C * sp3C)) * arg8);
    arg0->unk20 = (f32) ((temp_f20_2 * sp48) * arg9);
    arg0->unk2C = 0.0f;
    arg0->unk24 = (f32) (-sp4C * arg9);
    arg0->unk28 = (f32) ((temp_f20_2 * sp3C) * arg9);
    arg0->unk30 = arg1;
    arg0->unk34 = arg2;
    arg0->unk3C = 1.0f;
    arg0->unk38 = arg3;
}

void func_80023DF4(void *arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0->unk0 = (f32) (arg0->unk0 * arg1);
    arg0->unk4 = (f32) (arg0->unk4 * arg1);
    arg0->unk8 = (f32) (arg0->unk8 * arg1);
    arg0->unk10 = (f32) (arg0->unk10 * arg2);
    arg0->unk14 = (f32) (arg0->unk14 * arg2);
    arg0->unk18 = (f32) (arg0->unk18 * arg2);
    arg0->unk20 = (f32) (arg0->unk20 * arg3);
    arg0->unk24 = (f32) (arg0->unk24 * arg3);
    arg0->unk28 = (f32) (arg0->unk28 * arg3);
}

f32 func_80023E80(void *arg0, void *arg1, void *arg2) {
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;

    temp_f0 = arg0->unk0;
    temp_f2 = arg0->unk4;
    temp_f12 = arg0->unk8;
    temp_f14 = arg0->unk10;
    temp_f16 = arg0->unk14;
    temp_f18 = arg0->unk18;
    temp_f20 = arg0->unk20;
    temp_f22 = arg0->unk24;
    temp_f24 = arg0->unk28;
    sp58 = arg0->unk30;
    sp54 = arg0->unk34;
    sp50 = arg0->unk38;
    temp_f10 = arg1->unk0;
    sp4C = temp_f10;
    sp48 = arg1->unk4;
    temp_f6 = arg1->unk8;
    sp44 = temp_f6;
    temp_f8 = arg1->unk10;
    sp40 = temp_f8;
    sp3C = arg1->unk14;
    temp_f4 = arg1->unk18;
    sp38 = temp_f4;
    sp34 = arg1->unk20;
    sp30 = arg1->unk24;
    temp_f10_2 = arg1->unk28;
    sp2C = temp_f10_2;
    sp28 = arg1->unk30;
    temp_f6_2 = arg1->unk34;
    sp24 = temp_f6_2;
    sp20 = arg1->unk38;
    arg2->unk0 = (f32) (((temp_f0 * temp_f10) + (temp_f14 * sp48)) + (temp_f20 * temp_f6));
    arg2->unk10 = (f32) (((temp_f0 * sp40) + (temp_f14 * sp3C)) + (temp_f20 * temp_f4));
    arg2->unk20 = (f32) (((temp_f0 * sp34) + (temp_f14 * sp30)) + (temp_f20 * temp_f10_2));
    arg2->unk30 = (f32) ((((temp_f0 * sp28) + (temp_f14 * temp_f6_2)) + (temp_f20 * sp20)) + sp58);
    arg2->unk4 = (f32) (((temp_f2 * sp4C) + (temp_f16 * sp48)) + (temp_f22 * temp_f6));
    arg2->unk14 = (f32) (((temp_f2 * sp40) + (temp_f16 * sp3C)) + (temp_f22 * sp38));
    arg2->unk24 = (f32) (((temp_f2 * sp34) + (temp_f16 * sp30)) + (temp_f22 * sp2C));
    arg2->unk34 = (f32) ((((temp_f2 * sp28) + (temp_f16 * sp24)) + (temp_f22 * sp20)) + sp54);
    arg2->unk8 = (f32) (((temp_f12 * temp_f10) + (temp_f18 * sp48)) + (temp_f24 * sp44));
    arg2->unk18 = (f32) (((temp_f12 * temp_f8) + (temp_f18 * sp3C)) + (temp_f24 * temp_f4));
    arg2->unk28 = (f32) (((temp_f12 * sp34) + (temp_f18 * sp30)) + (temp_f24 * temp_f10_2));
    arg2->unkC = 0.0f;
    arg2->unk1C = 0.0f;
    arg2->unk2C = 0.0f;
    arg2->unk3C = 1.0f;
    arg2->unk38 = (f32) ((((temp_f12 * sp28) + (temp_f18 * sp24)) + (temp_f24 * sp20)) + sp50);
    return 0.0f;
}

s32 func_8002413C(f32 arg0, f32 arg1, s32 arg2, void *arg3, void *arg4) {
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 temp_f0;
    f32 temp_f6;
    s32 phi_v1;
    s32 phi_v1_2;

    func_80035470(0x80086E88, arg0, arg1, arg2, &sp38, &sp34, &sp30);
    temp_f6 = *(void *)0x80086ECC;
    phi_v1 = 0;
    if (sp30 < -temp_f6) {
        phi_v1 = 1;
    }
    phi_v1_2 = phi_v1;
    if (phi_v1 != 0) {
        temp_f0 = sp30 * *(void *)0x80086ED4;
        *arg3 = (s32) (0xA0 - (s32) ((((f64) sp38 * 160.0) / (f64) temp_f0) * 0.75));
        *arg4 = (s32) ((s32) ((120.0f * sp34) / temp_f0) + 0x78);
        phi_v1_2 = 0;
        if (sp30 < -temp_f6) {
            phi_v1_2 = 1;
        }
    }
    return phi_v1_2;
}
