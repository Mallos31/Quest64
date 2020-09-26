void func_1f95c(void *arg0) {
    u32 sp74;
    s32 sp6C;
    u8 sp6B;
    ? sp68;
    ? sp60;
    s32 sp38;
    ? *temp_s0;
    s32 temp_a3;
    s32 temp_t6;
    s32 temp_v0_10;
    s32 temp_v0_13;
    s32 temp_v0_15;
    s32 temp_v0_17;
    s32 temp_v0_19;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    u32 temp_a0_5;
    u32 temp_v0_11;
    u32 temp_v0_12;
    u32 temp_v0_14;
    u32 temp_v0_16;
    u32 temp_v0_18;
    u32 temp_v0_9;
    u8 temp_t0;
    u8 temp_t0_2;
    u8 temp_t0_3;
    u8 temp_t0_4;
    u8 temp_t0_5;
    void *temp_s0_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *phi_v1;
    ? *phi_s0;
    u32 phi_v0;
    u32 phi_v0_2;
    s32 phi_a3;
    s32 phi_a3_2;
    s32 phi_a3_3;
    s32 phi_a3_4;

    sp60.unk0 = (s32) (void *)0x8004D300->unk0;
    sp60.unk4 = (s32) (void *)0x8004D300->unk4;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0;
    temp_v0_2->unk0 = 0xBA000C02;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk0 = 0xFD100000;
    temp_v0_3->unk4 = 0x8039D990;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0xE8000000;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0x7000000;
    temp_v0_5->unk0 = 0xF5000100;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk0 = 0xE6000000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0x73FC000;
    temp_v0_7->unk0 = 0xF0000000;
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE7000000;
    *(void *)0x8008C648 = 0x18;
    *(void *)0x8008C64C = 0x3E;
    func_000210FC(0x803A6F60, 0, 0, 0x6E, 0xE, 0x64, 0xE, 0x400, 0x400);
    *(void *)0x8008C648 = 0x24;
    *(void *)0x8008C64C = 0x94;
    func_000210FC(0x803A6F60, 0x45, 0, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0, 0x18, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0x8C, 0x18, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0x45, 0x32, 0x6E, 0xE, 0x64, 0, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0x6A, 0xE, 0x24, 0x24, 0x40, 0, 0x400, 0x400);
    if (arg0->unk11C != 0) {
        *(void *)0x8008C648 = 0x18;
        *(void *)0x8008C64C = 0x3E;
        temp_v0_9 = func_00014890(arg0->unk11C, arg0 + 0x119);
        temp_a0 = temp_v0_9;
        sp74 = temp_v0_9;
        temp_v0_10 = func_000149D0(temp_a0, arg0->unk10->unk8);
        temp_t0 = temp_v0_10 & 0xFF;
        temp_a3 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_10 & 4) == 0) {
            sp6C = temp_a3;
            sp6B = temp_t0;
            func_00020B4C(0x37 - (func_00020D18(temp_a3, temp_a3) * 3), 3, (sp + temp_t0)->unk60, temp_a3);
        }
    }
    if ((s32) arg0->unk11C < 3) {
        *(void *)0x8008C648 = 0x24;
        *(void *)0x8008C64C = 0x94;
        phi_v0_2 = 0U;
        if (arg0->unk11C != 0) {
            phi_v1 = arg0;
            phi_s0 = &sp68;
            phi_v0 = 0U;
loop_6:
            temp_v0_11 = phi_v0 + 1;
            temp_s0 = phi_s0 + 1;
            temp_s0->unk-1 = (u8) phi_v1->unk119;
            phi_v1 = phi_v1 + 1;
            phi_s0 = temp_s0;
            phi_v0 = temp_v0_11;
            phi_v0_2 = temp_v0_11;
            if (temp_v0_11 < (u32) arg0->unk11C) {
                goto loop_6;
            }
        }
        temp_s0_2 = &sp68 + phi_v0_2;
        *temp_s0_2 = (u8)0;
        temp_t6 = (phi_v0_2 + 1) & 0xFFFF;
        sp38 = temp_t6;
        temp_v0_12 = func_00014890(temp_t6, &sp68);
        temp_a0_2 = temp_v0_12;
        sp74 = temp_v0_12;
        temp_v0_13 = func_000149D0(temp_a0_2, arg0->unk10->unk8);
        temp_t0_2 = temp_v0_13 & 0xFF;
        phi_a3 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_13 & 4) != 0) {
            phi_a3 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3;
        sp6B = temp_t0_2;
        func_00020B4C(0x7C - (func_00020D18(phi_a3, phi_a3) * 3), 3, (sp + temp_t0_2)->unk60, phi_a3);
        *temp_s0_2 = (u8)1;
        temp_v0_14 = func_00014890(sp3A, &sp68);
        temp_a0_3 = temp_v0_14;
        sp74 = temp_v0_14;
        temp_v0_15 = func_000149D0(temp_a0_3, arg0->unk10->unk8);
        temp_t0_3 = temp_v0_15 & 0xFF;
        phi_a3_2 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_15 & 4) != 0) {
            phi_a3_2 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3_2;
        sp6B = temp_t0_3;
        func_00020B4C(0x37 - (func_00020D18(phi_a3_2, phi_a3_2) * 3), 0x1B, (sp + temp_t0_3)->unk60, phi_a3_2);
        *temp_s0_2 = (u8)2;
        temp_v0_16 = func_00014890(sp3A, &sp68);
        temp_a0_4 = temp_v0_16;
        sp74 = temp_v0_16;
        temp_v0_17 = func_000149D0(temp_a0_4, arg0->unk10->unk8);
        temp_t0_4 = temp_v0_17 & 0xFF;
        phi_a3_3 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_17 & 4) != 0) {
            phi_a3_3 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3_3;
        sp6B = temp_t0_4;
        func_00020B4C(0x7C - (func_00020D18(phi_a3_3, phi_a3_3) * 3), 0x35, (sp + temp_t0_4)->unk60, phi_a3_3);
        *temp_s0_2 = (u8)3;
        temp_v0_18 = func_00014890(sp3A, &sp68);
        temp_a0_5 = temp_v0_18;
        sp74 = temp_v0_18;
        temp_v0_19 = func_000149D0(temp_a0_5, arg0->unk10->unk8);
        temp_t0_5 = temp_v0_19 & 0xFF;
        phi_a3_4 = *(((((sp74 >> 8) & 0xF) * 4) + 0x800C0000)->unk690 + ((sp74 & 0xFF) * 4));
        if ((temp_v0_19 & 4) != 0) {
            phi_a3_4 = ((arg0->unk11C * 4) + 0x80050000)->unk-2D40;
        }
        sp6C = phi_a3_4;
        sp6B = temp_t0_5;
        func_00020B4C(0xC3 - (func_00020D18(phi_a3_4, phi_a3_4) * 3), 0x1B, (sp + temp_t0_5)->unk60, phi_a3_4);
    }
}
