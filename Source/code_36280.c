f32 func_80035680(f32 arg0) {
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f12;
    f64 temp_f12_2;
    f64 temp_f14;
    f64 temp_f2;
    f64 temp_f2_2;
    s32 temp_t6;
    s32 phi_v0;

    temp_t6 = ((bitwise s32) arg0 >> 0x16) & 0x1FF;
    if (temp_t6 < 0xFF) {
        temp_f2 = (f64) arg0;
        if (temp_t6 >= 0xE6) {
            temp_f12 = temp_f2 * temp_f2;
            return (f32) (((temp_f2 * temp_f12) * ((void *)0x80071B40->unk8 + ((((((void *)0x80071B40->unk20 * temp_f12) + (void *)0x80071B40->unk18) * temp_f12) + (void *)0x80071B40->unk10) * temp_f12))) + temp_f2);
        }
        return arg0;
    }
    if (temp_t6 < 0x136) {
        temp_f2_2 = (f64) arg0;
        temp_f0 = temp_f2_2 * *(void *)0x80071B68;
        if (0.0 <= temp_f0) {
            phi_v0 = (s32) (temp_f0 + 0.5);
        } else {
            phi_v0 = (s32) (temp_f0 - 0.5);
        }
        temp_f0_2 = (f64) phi_v0;
        temp_f2_2 = (temp_f2_2 - (temp_f0_2 * *(void *)0x80071B70)) - (temp_f0_2 * *(void *)0x80071B78);
        temp_f12_2 = temp_f2_2 * temp_f2_2;
        temp_f14 = (void *)0x80071B40->unk8 + ((((((void *)0x80071B40->unk20 * temp_f12_2) + (void *)0x80071B40->unk18) * temp_f12_2) + (void *)0x80071B40->unk10) * temp_f12_2);
        if ((phi_v0 & 1) == 0) {
            return (f32) (((temp_f2_2 * temp_f12_2) * temp_f14) + temp_f2_2);
        }
        return -(f32) (((temp_f2_2 * temp_f12_2) * temp_f14) + temp_f2_2);
    }
    if (arg0 != arg0) {
        return *(void *)0x80071F10;
    }
    return *(void *)0x80071B80;
}

void *func_80035840(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    s32 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    f32 phi_f12;
    void *phi_v0;
    f32 phi_f18;
    f32 phi_f14;
    f32 phi_f16;
    s32 phi_v1;
    f32 phi_f12_2;
    void *phi_v0_2;
    f32 phi_f18_2;
    f32 phi_f14_2;
    f32 phi_f16_2;

    func_80035300();
    temp_f0 = arg2 - arg1;
    temp_f12 = arg6 - arg5;
    arg0->unk0 = (f32) (2.0f / temp_f0);
    temp_f2 = arg4 - arg3;
    arg0->unk28 = (f32) (-2.0f / temp_f12);
    arg0->unk14 = (f32) (2.0f / temp_f2);
    arg0->unk30 = (f32) (-(arg2 + arg1) / temp_f0);
    arg0->unk34 = (f32) (-(arg4 + arg3) / temp_f2);
    arg0->unk3C = 1.0f;
    arg0->unk38 = (f32) (-(arg6 + arg5) / temp_f12);
    temp_f18 = arg0->unk4;
    temp_f12_2 = arg0->unk0 * arg7;
    temp_f14 = arg0->unk8;
    temp_f16 = arg0->unkC;
    phi_f12 = temp_f12_2;
    phi_v0 = arg0;
    phi_f18 = temp_f18;
    phi_f14 = temp_f14;
    phi_f16 = temp_f16;
    phi_v1 = 1;
    phi_f12_2 = temp_f12_2;
    phi_v0_2 = arg0;
    phi_f18_2 = temp_f18;
    phi_f14_2 = temp_f14;
    phi_f16_2 = temp_f16;
    if (1 != 4) {
loop_1:
        temp_f18_2 = phi_v0->unk14;
        temp_f14_2 = phi_v0->unk18;
        temp_v1 = phi_v1 + 1;
        temp_f16_2 = phi_v0->unk1C;
        phi_v0->unk0 = phi_f12;
        temp_f12_3 = phi_v0->unk10 * arg7;
        phi_v0->unk4 = (f32) (phi_f18 * arg7);
        phi_v0->unk8 = (f32) (phi_f14 * arg7);
        temp_v0_2 = phi_v0 + 0x10;
        temp_v0_2->unk-4 = (f32) (phi_f16 * arg7);
        phi_f12 = temp_f12_3;
        phi_v0 = temp_v0_2;
        phi_f18 = temp_f18_2;
        phi_f14 = temp_f14_2;
        phi_f16 = temp_f16_2;
        phi_v1 = temp_v1;
        phi_f12_2 = temp_f12_3;
        phi_v0_2 = temp_v0_2;
        phi_f18_2 = temp_f18_2;
        phi_f14_2 = temp_f14_2;
        phi_f16_2 = temp_f16_2;
        if (temp_v1 != 4) {
            goto loop_1;
        }
    }
    temp_v0 = phi_v0_2 + 0x10;
    temp_v0->unk-10 = phi_f12_2;
    temp_v0->unk-C = (f32) (phi_f18_2 * arg7);
    temp_v0->unk-8 = (f32) (phi_f14_2 * arg7);
    temp_v0->unk-4 = (f32) (phi_f16_2 * arg7);
    return temp_v0;
}

void func_80035994(s32 arg0, ? arg1, ? arg2, ? arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    ? sp28;

    func_80035840(arg1, arg2, &sp28, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    func_80035200(&sp28, arg0);
}
