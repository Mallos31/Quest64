void *func_3518(void) {
    ?32 sp34;
    s32 sp24;
    void *sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f8;
    f64 temp_f2;
    s32 temp_t6;
    s32 temp_v0_3;
    u16 temp_v0;
    u16 temp_v0_2;
    void *temp_t9;
    void *temp_v0_4;
    s32 phi_a1;

    (void *)0x8007BAB8->unk0 = (u16)0;
    (void *)0x8007BAB8->unk124 = (u16)0;
    temp_f12 = *(void *)0x8007BA40;
    (void *)0x8007BAB8->unk18 = 0.0f;
    (void *)0x8007BAB8->unk14 = temp_f12;
    temp_f0 = *(void *)0x8007BA44;
    (void *)0x8007BAB8->unk20 = 0.0f;
    (void *)0x8007BAB8->unk28 = 0.0f;
    (void *)0x8007BAB8->unk1C = temp_f0;
    (void *)0x8007BAB8->unk2C = 0.0f;
    (void *)0x8007BAB8->unk30 = 0.0f;
    (void *)0x8007BAB8->unk34 = 0.0f;
    sp24 = (((void *)0x8007BAB8->unk64 * 4) + 0x80050000)->unk3D00;
    (void *)0x8007BAB8->unk24 = (f32) *(void *)0x8007BA48;
    func_0000EE60(temp_f12, 0.0f, temp_f0, 0xA00, 0x8007BC40);
    *(void *)0x8007BAD0 = (f32) (void *)0x8007BC40->unk4;
    *(void *)0x8007BAF8 = (f32) (void *)0x8007BC40->unkC;
    *(void *)0x8007BAFC = (f32) (void *)0x8007BC40->unk10;
    *(void *)0x8007BB00 = (f32) (void *)0x8007BC40->unk14;
    temp_v0 = (void *)0x8007BC40->unk18;
    if ((temp_v0 & 0x8000) != 0) {
        *(void *)0x8007BB2E = (u16)0U;
    } else {
        *(void *)0x8007BB2E = temp_v0;
    }
    temp_v0_2 = *(void *)0x8007BABE;
    if (temp_v0_2 != 0) {
        phi_a1 = (s32) temp_v0_2;
    } else {
        phi_a1 = *(void *)0x8007BC2C;
    }
    func_0001D8B0(0x8007BACC, phi_a1, 1, *(void *)0x8007BC2C, 1, 1);
    temp_v0_3 = *(void *)0x8007BA4C;
    if ((temp_v0_3 & 8) != 0) {
        (void *)0x8007BAB8->unk0 = (u16)3;
        *(void *)0x8007BABC = (u16)0xF;
        *(void *)0x8007BB2C = (u16)1;
    } else {
        temp_t6 = (temp_v0_3 >> 8) & 7;
        if ((temp_t6 != 1) && (temp_t6 != 2)) {
            if (temp_t6 != 3) {
                if (temp_t6 == 4) {
block_12:
                    (void *)0x8007BAB8->unk0 = (u16)8;
                    *(void *)0x8007BABC = (u16)0xF;
                    (void *)0x8007BC30->unk0 = 0.0f;
                    (void *)0x8007BC30->unk4 = 20.0f;
                    func_000232F4(*(void *)0x8007BADC, (void *)0x8007BC30, 0x80080000);
                    *(void *)0x8007BBE0 = (f32) (void *)0x8007BC30->unk0;
                    *(void *)0x8007BBE4 = (f32) (void *)0x8007BC30->unk4;
                    *(void *)0x8007BB2C = (u16)1;
                    func_000268D4(5, 0x21, 0xFF, (void *)0x8007BC30);
                    func_000268D4(0xF, 0x21, 0xFF);
                }
            } else {
                (void *)0x8007BAB8->unk0 = (u16)8;
                *(void *)0x8007BABC = (u16)0xF;
                (void *)0x8007BC30->unk0 = 0.0f;
                (void *)0x8007BC30->unk4 = 20.0f;
                func_000232F4(*(void *)0x8007BADC, (void *)0x8007BC30, 0x80080000);
                *(void *)0x8007BBE0 = (f32) (void *)0x8007BC30->unk0;
                *(void *)0x8007BBE4 = (f32) (void *)0x8007BC30->unk4;
                *(void *)0x8007BB2C = (u16)1;
                func_00006720(0x8007BACC, (void *)0x8007BC30);
                func_0001D924(0x8007BACC, (*(void *)0x8007BB1E * 0xC) + sp24, *(void *)0x8007BAF0);
                func_0000DB7C(1, *(void *)0x8007BB20, *(void *)0x8007BA4C, sp20);
                func_000268D4(5, 0x21, 0xFF);
                func_000268D4(0xF, 0x21, 0xFF);
            }
        } else {
            goto block_12;
        }
    }
    *(void *)0x8007BAC0 = (u16)0;
    if (*(void *)0x80085370 == -1) {
        *(void *)0x8007BAC0 = (u16)0x10;
    }
    if ((*(void *)0x8007B2E4 & 0x800) != 0) {
        (*(void *)0x8007BB30)->unk4 = (u16)1;
        temp_t9 = *(void *)0x8007BB30;
        temp_t9->unk8 = (u16) temp_t9->unkA;
        **(void *)0x8007BB34 = (u16)0;
    }
    **(void *)0x8007BB34 = (u16)0;
    *(void *)0x8007BC0C = 0.0f;
    *(void *)0x8007BA5C = (f32) *(void *)0x8007BC0C;
    *(void *)0x8007BC28 = (u16)0;
    *(void *)0x8007BA70 = 0xFF;
    return (void *)0x8007BC0C;
}
