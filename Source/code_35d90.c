s32 func_80035190(s32 arg0) {
    s32 temp_t8;
    s32 phi_v1;

    temp_t8 = ((u32) (arg0 & 0xFFFF) >> 4) & 0xFFFF;
    if ((temp_t8 & 0x400) != 0) {
        phi_v1 = (s32) (-(s32) ((temp_t8 & 0x3FF) * 2) + 0x80070000)->unk98E;
    } else {
        phi_v1 = (s32) (((temp_t8 & 0x3FF) * 2) + 0x80070000)->unk190;
    }
    if ((temp_t8 & 0x800) != 0) {
        return (s32) (-phi_v1 << 0x10) >> 0x10;
    }
    return phi_v1;
}

void *func_80035200(void *arg0, void *arg1) {
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_f12;
    s32 temp_f12_2;
    s32 temp_f14;
    s32 temp_f14_2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    f32 phi_f18;
    f32 phi_f16;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0;
    f32 phi_f18_2;
    f32 phi_f16_2;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a2;
    void *phi_t0;
    void *phi_a3;
    void *phi_v0_3;
    void *phi_v1_3;

    phi_a2 = 0;
    phi_a3 = arg0;
    phi_v0_3 = arg1;
    phi_v1_3 = arg1 + 0x20;
loop_1:
    temp_t0 = phi_a3;
    temp_f18 = temp_t0->unk0;
    temp_f16 = temp_t0->unk4 * 65536.0f;
    phi_f18 = temp_f18;
    phi_f16 = temp_f16;
    phi_v0 = phi_v0_3;
    phi_v1 = phi_v1_3;
    phi_a0 = 1;
    phi_f18_2 = temp_f18;
    phi_f16_2 = temp_f16;
    phi_v0_2 = phi_v0_3;
    phi_v1_2 = phi_v1_3;
    phi_t0 = temp_t0;
    if (1 != 2) {
loop_2:
        temp_a0 = phi_a0 + 1;
        temp_v0_2 = phi_v0 + 4;
        temp_v1 = phi_v1 + 4;
        temp_t0_2 = phi_t0 + 8;
        temp_f12 = (s32) phi_f16;
        temp_f14 = (s32) (phi_f18 * 65536.0f);
        temp_v0_2->unk-4 = (s32) ((temp_f14 & 0xFFFF0000) | ((temp_f12 >> 0x10) & 0xFFFF));
        temp_v1->unk-4 = (s32) (((temp_f14 << 0x10) & 0xFFFF0000) | (temp_f12 & 0xFFFF));
        temp_f18_2 = temp_t0_2->unk0;
        temp_f16_2 = temp_t0_2->unk4 * 65536.0f;
        phi_f18 = temp_f18_2;
        phi_f16 = temp_f16_2;
        phi_v0 = temp_v0_2;
        phi_v1 = temp_v1;
        phi_a0 = temp_a0;
        phi_f18_2 = temp_f18_2;
        phi_f16_2 = temp_f16_2;
        phi_v0_2 = temp_v0_2;
        phi_v1_2 = temp_v1;
        phi_t0 = temp_t0_2;
        if (temp_a0 != 2) {
            goto loop_2;
        }
    }
    temp_v0 = phi_v0_2 + 4;
    temp_v1_2 = phi_v1_2 + 4;
    temp_f12_2 = (s32) phi_f16_2;
    temp_f14_2 = (s32) (phi_f18_2 * 65536.0f);
    temp_v0->unk-4 = (s32) ((temp_f14_2 & 0xFFFF0000) | ((temp_f12_2 >> 0x10) & 0xFFFF));
    temp_v1_2->unk-4 = (s32) (((temp_f14_2 << 0x10) & 0xFFFF0000) | (temp_f12_2 & 0xFFFF));
    temp_a2 = phi_a2 + 1;
    phi_a2 = temp_a2;
    phi_a3 = phi_a3 + 0x10;
    phi_v0_3 = temp_v0;
    phi_v1_3 = temp_v1_2;
    if (temp_a2 != 4) {
        goto loop_1;
    }
    return temp_v0;
}

s32 func_80035300(void *arg0) {
    s32 temp_v0;
    s32 phi_v0;
    void *phi_v1;

    phi_v0 = 0;
    phi_v1 = arg0;
loop_1:
    if (phi_v0 == 0) {
        phi_v1->unk0 = 1.0f;
    } else {
        phi_v1->unk0 = 0.0f;
    }
    if (phi_v0 == 1) {
        phi_v1->unk4 = 1.0f;
    } else {
        phi_v1->unk4 = 0.0f;
    }
    if (phi_v0 == 2) {
        phi_v1->unk8 = 1.0f;
    } else {
        phi_v1->unk8 = 0.0f;
    }
    if (phi_v0 == 3) {
        phi_v1->unkC = 1.0f;
    } else {
        phi_v1->unkC = 0.0f;
    }
    temp_v0 = phi_v0 + 1;
    phi_v0 = temp_v0;
    phi_v1 = phi_v1 + 0x10;
    if (temp_v0 != 4) {
        goto loop_1;
    }
    return temp_v0;
}

void func_80035388(s32 arg0) {
    ? sp18;

    func_80035300(&sp18);
    func_80035200(&sp18, arg0);
}

void *func_800353B8(void *arg0, void *arg1) {
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_t1;
    void *temp_v0;
    void *temp_v1;
    void *phi_v1;
    void *phi_v0;
    void *phi_t1;
    s32 phi_a0;
    s32 phi_a2;
    void *phi_t0;

    phi_a2 = 0;
    phi_v1 = arg1 + 0x20;
    phi_v0 = arg1;
    phi_t0 = arg0;
loop_1:
    phi_t1 = phi_t0;
    phi_a0 = 0;
loop_2:
    temp_a0 = phi_a0 + 1;
    sp4 = (((u32) *phi_v1 >> 0x10) & 0xFFFF) | (*phi_v0 & 0xFFFF0000);
    temp_a3 = (*phi_v1 & 0xFFFF) | ((*phi_v0 << 0x10) & 0xFFFF0000);
    sp0 = temp_a3;
    temp_v0 = phi_v0 + 4;
    temp_v1 = phi_v1 + 4;
    temp_t1 = phi_t1 + 8;
    temp_t1->unk-8 = (f32) ((f32) sp4 / 65536.0f);
    temp_t1->unk-4 = (f32) ((f32) temp_a3 / 65536.0f);
    phi_v1 = temp_v1;
    phi_v0 = temp_v0;
    phi_t1 = temp_t1;
    phi_a0 = temp_a0;
    if (temp_a0 != 2) {
        goto loop_2;
    }
    temp_a2 = phi_a2 + 1;
    phi_a2 = temp_a2;
    phi_v1 = temp_v1;
    phi_v0 = temp_v0;
    phi_t0 = phi_t0 + 0x10;
    if (temp_a2 != 4) {
        goto loop_1;
    }
    return temp_v0;
}

void func_80035470(void *arg0, f32 arg1, f32 arg2, f32 arg3, void *arg4, void *arg5, void *arg6) {
    *arg4 = (f32) (arg0->unk30 + (((arg0->unk0 * arg1) + (arg0->unk10 * arg2)) + (arg0->unk20 * arg3)));
    *arg5 = (f32) (arg0->unk34 + (((arg0->unk4 * arg1) + (arg0->unk14 * arg2)) + (arg0->unk24 * arg3)));
    *arg6 = (f32) (arg0->unk38 + (((arg0->unk8 * arg1) + (arg0->unk18 * arg2)) + (arg0->unk28 * arg3)));
}

? *func_80035510(void *arg0, void *arg1, void *arg2) {
    ? sp5C;
    ? sp1C;
    ? *temp_a0_2;
    ? *temp_a1;
    ? *temp_a1_2;
    ? *temp_v1;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    s32 temp_a0;
    void *temp_a1_3;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_v1_2;
    ? *phi_v1;
    f32 phi_f16;
    f32 phi_f18;
    ? *phi_a1;
    void *phi_a3;
    void *phi_t1;
    s32 phi_a0;
    f32 phi_f16_2;
    f32 phi_f18_2;
    ? *phi_a1_2;
    void *phi_t1_2;
    ? *phi_a0_2;
    void *phi_v1_2;

    phi_v1 = &sp1C;
    phi_a3 = arg0;
loop_1:
    temp_a1 = phi_v1;
    *temp_a1 = 0.0f;
    temp_f16 = *temp_a1;
    temp_f18 = phi_a3->unk0 * *arg1;
    phi_f16 = temp_f16;
    phi_f18 = temp_f18;
    phi_a1 = temp_a1;
    phi_t1 = arg1;
    phi_a0 = 4;
    phi_f16_2 = temp_f16;
    phi_f18_2 = temp_f18;
    phi_a1_2 = temp_a1;
    phi_t1_2 = arg1;
    if (4 != 0x10) {
loop_2:
        temp_a0 = phi_a0 + 4;
        temp_a1_2 = phi_a1 + 4;
        temp_t1 = phi_t1 + 4;
        temp_a1_2->unk-4 = (f32) (phi_f16 + phi_f18);
        temp_a1_2->unk-4 = (f32) (temp_a1_2->unk-4 + (phi_a3->unk4 * temp_t1->unkC));
        temp_a1_2->unk-4 = (f32) (temp_a1_2->unk-4 + (phi_a3->unk8 * temp_t1->unk1C));
        temp_a1_2->unk0 = 0.0f;
        temp_f16_2 = temp_a1_2->unk0;
        temp_a1_2->unk-4 = (f32) (temp_a1_2->unk-4 + (phi_a3->unkC * temp_t1->unk2C));
        temp_f18_2 = phi_a3->unk0 * temp_t1->unk0;
        phi_f16 = temp_f16_2;
        phi_f18 = temp_f18_2;
        phi_a1 = temp_a1_2;
        phi_t1 = temp_t1;
        phi_a0 = temp_a0;
        phi_f16_2 = temp_f16_2;
        phi_f18_2 = temp_f18_2;
        phi_a1_2 = temp_a1_2;
        phi_t1_2 = temp_t1;
        if (temp_a0 != 0x10) {
            goto loop_2;
        }
    }
    temp_a1_3 = phi_a1_2 + 4;
    temp_t1_2 = phi_t1_2 + 4;
    temp_a1_3->unk-4 = (f32) (phi_f16_2 + phi_f18_2);
    temp_a1_3->unk-4 = (f32) (temp_a1_3->unk-4 + (phi_a3->unk4 * temp_t1_2->unkC));
    temp_a1_3->unk-4 = (f32) (temp_a1_3->unk-4 + (phi_a3->unk8 * temp_t1_2->unk1C));
    temp_a1_3->unk-4 = (f32) (temp_a1_3->unk-4 + (phi_a3->unkC * temp_t1_2->unk2C));
    temp_v1 = phi_v1 + 0x10;
    phi_v1 = temp_v1;
    phi_a3 = phi_a3 + 0x10;
    if ((u32) temp_v1 < (u32) &sp5C) {
        goto loop_1;
    }
    phi_a0_2 = &sp1C;
    phi_v1_2 = arg2;
loop_5:
    temp_a0_2 = phi_a0_2 + 0x10;
    temp_v1_2 = phi_v1_2 + 0x10;
    temp_v1_2->unk-10 = (f32) *phi_a0_2;
    temp_v1_2->unk-C = (f32) temp_a0_2->unk-C;
    temp_v1_2->unk-8 = (f32) temp_a0_2->unk-8;
    temp_v1_2->unk-4 = (f32) temp_a0_2->unk-4;
    phi_a0_2 = temp_a0_2;
    phi_v1_2 = temp_v1_2;
    if (temp_a0_2 != &sp5C) {
        goto loop_5;
    }
    return &sp5C;
}
