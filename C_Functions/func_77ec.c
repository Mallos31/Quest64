s32 func_77ec(s32 arg0, u16 arg1, void *arg2) {
    void *sp38;
    s32 sp2C;
    f32 temp_f12;
    f32 temp_f18;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_t4;
    s32 temp_t6;
    u16 temp_t8;
    u16 temp_v0;
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_t0;
    void *temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    f32 phi_f18;
    f32 phi_f12;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_s0_3;

    temp_s0 = arg0 & 0xFFFF;
    phi_s0_3 = temp_s0;
    if (*(void *)0x8007BAB8 != 6) {
        sp38 = ((*(void *)0x8007BB1C * 4) + 0x80050000)->unk3D00;
        phi_s0_2 = temp_s0;
        if (temp_s0 != 0) {
            temp_v0 = arg2->unk68->unk84;
            temp_f18 = (f32) temp_s0;
            phi_f18 = temp_f18;
            if (temp_s0 < 0) {
                phi_f18 = temp_f18 + 4294967296.0f;
            }
            temp_t4 = (u32) (phi_f18 * ((f32) (u32) temp_v0 / (f32) (temp_v0 + *(void *)0x8007BBC0))) & 0xFFFF;
            temp_s0_2 = temp_t4;
            temp_f12 = (f32) temp_s0_2;
            phi_f12 = temp_f12;
            if (temp_t4 < 0) {
                phi_f12 = temp_f12 + 4294967296.0f;
            }
            temp_t6 = (temp_s0_2 + func_00022FD0((u32) (func_00034F60(phi_f12) + 1.0f))) & 0xFFFF;
            phi_s0 = temp_t6;
            if (temp_t6 == 0) {
                phi_s0 = (temp_t6 + 1) & 0xFFFF;
            }
            temp_v0_2 = (void *)0x8007BACC->unk64;
            temp_v1 = temp_v0_2->unk4;
            sp2C = phi_s0;
            if ((s32) temp_v1 < phi_s0) {
                temp_v0_2->unk4 = (u16)0U;
            } else {
                temp_v0_2->unk4 = (u16) (temp_v1 - sp2C);
            }
            if ((*(void *)0x8007BB38 & 0x200) != 0) {
                temp_v0_3 = (void *)0x8007BACC->unk64;
                temp_v0_3->unk8 = (u16) (temp_v0_3->unk8 + sp2C);
                temp_v0_4 = (void *)0x8007BACC->unk64;
                temp_v1_2 = temp_v0_4->unkA;
                if ((s32) temp_v1_2 < (s32) temp_v0_4->unk8) {
                    temp_v0_4->unk8 = temp_v1_2;
                }
                func_0001FCF8((void *)0x8007BACC, 0x200, 2, 0x1E);
            }
            temp_t7 = *(void *)0x8007BAC8;
            temp_t7->unk28 = (u16) (temp_t7->unk28 + 1);
            temp_t0 = *(void *)0x8007BAC8;
            temp_t0->unk2E = (u16) (temp_t0->unk2E + 1);
            func_00018DF4((void *)0x8007BACC, 0, sp2C);
            phi_s0_2 = phi_s0;
        }
        *(void *)0x8007BAB8 = (u16)5U;
        *(void *)0x8007BABC = (s16) sp38->unk62;
        temp_t8 = (void *)0x8007BACC->unk60 | 1;
        (void *)0x8007BACC->unk60 = temp_t8;
        if ((arg1 & 4) != 0) {
            (void *)0x8007BACC->unk60 = (u16) (temp_t8 | 2);
        }
        sp2C = (s32) arg1;
        func_0001D8B0((void *)0x8007BACC, 8, 1, *(void *)0x8007BC2C, 1, 1);
        if (phi_s0_2 != 0) {
            sp2C = (s32) arg1;
            func_00013F20(2);
        }
        phi_s0_3 = phi_s0_2;
        if ((arg1 & 0x8000) != 0) {
            func_000268D4(0, 0x18, 0xFF);
            phi_s0_3 = phi_s0_2;
        }
    }
    return phi_s0_3;
}
