f32 func_13380(void) {
    void *sp28;
    f32 temp_f2;
    s32 temp_a0;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t9;
    s32 temp_v1_2;
    void *temp_v0;
    void *temp_v1;
    f32 phi_f0;
    void *phi_v0;
    f32 phi_return;

    func_00035994(0x80301098, 0xC31F0000, 0x431F0000, 0x42EE0000, -119.0f, 10.0f, 200.0f, 1.0f);
    func_00035994(0x8030E1E8, 0xC31F0000, 0x431F0000, 0x42EE0000, -119.0f, 10.0f, 200.0f, 1.0f);
    if (*(void *)0x80085370 < 0) {
        *(void *)0x80086E44 = (f32) *(void *)0x80071310;
    }
    *(void *)0x80086ED8 = (s32) (((s32) *(void *)0x8007BB2E >> 1) & 7);
    temp_v1 = *(void *)0x80084F18;
    temp_a0 = temp_v1->unk24;
    if (temp_a0 != 0) {
        temp_t0 = *(void *)0x80084EE8 * 8;
        *(void *)0x80086EDC = (s32) *(temp_a0 + temp_t0);
        *(void *)0x80086B88 = (?32) (temp_v1->unk24 + temp_t0)->unk4;
    } else {
        *(void *)0x80086EDC = 0x8004CBF0;
        *(void *)0x80086B88 = 1;
    }
    temp_t0_2 = *(void *)0x80086EDC;
    temp_t9 = *(void *)0x80086ED8 * 0x38;
    temp_v0 = temp_t9 + temp_t0_2;
    *(void *)0x80086DC0 = (s32) temp_v0->unk0;
    *(void *)0x80086DC8 = (u16)1;
    *(void *)0x80086DC4 = 0;
    *(void *)0x80086E40 = 0x8007BACC;
    *(void *)0x80086E20 = (f32) temp_v0->unk1C;
    *(void *)0x80086E24 = (f32) temp_v0->unk20;
    *(void *)0x80086E28 = (f32) temp_v0->unk24;
    *(void *)0x80086E2C = (f32) temp_v0->unk28;
    *(void *)0x80086E0C = (f32) temp_v0->unk18;
    *(void *)0x80086E10 = 0.0f;
    *(void *)0x80086E18 = (f32) temp_v0->unk14;
    *(void *)0x80086E1C = (f32) temp_v0->unk10;
    temp_v1_2 = *(void *)0x80086DC0;
    if ((temp_v1_2 != 0) && (temp_v1_2 != 1)) {
        phi_f0 = 0.0f;
        phi_v0 = temp_v0;
        phi_return = 0.0f;
        if (temp_v1_2 == 2) {
block_8:
            (void *)0x80086B90->unk0 = 0.0f;
            *(void *)0x80086B94 = (f32) ((f64) *(void *)0x80086E0C * *(void *)0x80071318);
            sp28 = temp_v0;
            *(void *)0x80086DD0 = (f32) (*(void *)0x8007BAD0 + temp_v0->unk14);
            func_000232F4(*(void *)0x80086E44 + *(void *)0x8007BA48, temp_a0, (void *)0x80086B90, (void *)0x80086EDC);
            *(void *)0x80086DCC = (f32) (*(void *)0x8007BACC - (void *)0x80086B90->unk0);
            *(void *)0x80086DD4 = (f32) (*(void *)0x8007BAD4 - (void *)0x80086B90->unk4);
            phi_return = (bitwise f32) temp_v0;
            (void *)0x80080000->unk6E14 = 0.0f;
            phi_f0 = 0.0f;
        }
    } else {
        goto block_8;
    }
    *(void *)0x80086DE4 = phi_f0;
    *(void *)0x80086DEC = phi_f0;
    *(void *)0x80086DE8 = phi_f0;
    *(void *)0x80086DD8 = (f32) *(void *)0x8007BACC;
    *(void *)0x80086DDC = (f32) (*(void *)0x8007BAD0 + *(void *)0x80086E1C);
    *(void *)0x80086DE0 = (f32) *(void *)0x8007BAD4;
    *(void *)0x80086DF0 = phi_f0;
    *(void *)0x80086DF4 = phi_f0;
    *(void *)0x80086DF8 = phi_f0;
    *(void *)0x80086E08 = phi_f0;
    *(void *)0x80086E04 = phi_f0;
    *(void *)0x80086E00 = phi_f0;
    *(void *)0x80086DFC = phi_f0;
    *(void *)0x80086E30 = (f32) *(void *)0x80071320;
    temp_f2 = *(void *)0x80071324;
    *(void *)0x80086E34 = temp_f2;
    *(void *)0x80086E3C = temp_f2;
    *(void *)0x80086E38 = (f32) *(void *)0x80071328;
    *(void *)0x80086C2C = 0;
    *(void *)0x80086BBC = (u16)0;
    *(void *)0x80086EC8 = (f32) phi_v0->unk2C;
    *(void *)0x80086ECC = (f32) phi_v0->unk30;
    *(void *)0x80086ED0 = (f32) phi_v0->unk34;
    if (*(void *)0x8007B2E8 == 4) {
        *(void *)0x80086DC0 = 3;
        *(void *)0x80086DCC = (f32) *(void *)0x8007132C;
        *(void *)0x80086DD0 = 36.0f;
        *(void *)0x80086DD4 = (f32) *(void *)0x80071330;
        *(void *)0x80086DD8 = (f32) *(void *)0x80071334;
        *(void *)0x80086DDC = 42.0f;
        *(void *)0x80086DE0 = (f32) *(void *)0x80071338;
        *(void *)0x80086EC8 = 40.0f;
    }
    *(void *)0x80086EFC = phi_f0;
    return phi_return;
}
