void *func_1ffdc(void *arg0) {
    u16 temp_v1;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a0_4;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    s32 phi_t9;
    void *phi_return;

    *(void *)0x8008C648 = 0;
    *(void *)0x8008C64C = 0;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x8039D990;
    temp_v0_2->unk0 = 0xFD100000;
    temp_v0_3 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk0 = 0xE8000000;
    temp_v0_4 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
    temp_v0_4->unk4 = 0x7000000;
    temp_v0_4->unk0 = 0xF5000100;
    temp_v0_5 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
    temp_v0_5->unk4 = 0;
    temp_v0_5->unk0 = 0xE6000000;
    temp_v0_6 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
    temp_v0_6->unk4 = 0x73FC000;
    temp_v0_6->unk0 = 0xF0000000;
    temp_v0_7 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk0 = 0xE7000000;
    func_000210FC(0x803A6F60, 0x81, 0x48, 0x40, 0x14, 0, 0, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0x81, 0x5C, 0x40, 0x14, 0, 0x14, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0x81, 0x70, 0x40, 0x14, 0, 0x28, 0x400, 0x400);
    func_000210FC(0x803A6F60, 0x81, 0x84, 0x40, 0x14, 0, 0x3C, 0x400, 0x400);
    func_00020E2C(0x803A6F40, 0x20, 0x1D, 0x80, 0xA);
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk0 = 0xFD100000;
    temp_v0_8->unk4 = 0x80399AB0;
    temp_v0_9 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_9 + 8);
    temp_v0_9->unk4 = 0;
    temp_v0_9->unk0 = 0xE8000000;
    temp_v0_10 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_10 + 8);
    temp_v0_10->unk4 = 0x7000000;
    temp_v0_10->unk0 = 0xF5000100;
    temp_v0_11 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_11 + 8);
    temp_v0_11->unk4 = 0;
    temp_v0_11->unk0 = 0xE6000000;
    temp_v0_12 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_12 + 8);
    temp_v0_12->unk4 = 0x73FC000;
    temp_v0_12->unk0 = 0xF0000000;
    temp_v0_13 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_13 + 8);
    temp_v0_13->unk4 = 0;
    temp_v0_13->unk0 = 0xE7000000;
    func_00020D4C(5, 0x9D, 0x6C, *(void *)0x8007BAA4);
    func_00020D4C(5, 0x8B, 0x7C, *(void *)0x8007BAA5);
    func_00020D4C(5, 0x9D, 0x8B, *(void *)0x8007BAA6);
    temp_v1 = *(void *)0x80092876;
    phi_return = func_00020D4C(5, 0xAF, 0x7C, *(void *)0x8007BAA7);
    if (((temp_v1 & 8) != 0) && (temp_v0_14 = arg0->unk10, temp_a0 = temp_v0_14->unk24, phi_return = temp_v0_14, (((s32) temp_a0 < 0x32) != 0))) {
        temp_v0_14->unk24 = (u8) (temp_a0 + 1);
        phi_t9 = *(void *)0x8007B2E4 & -9;
        phi_return = temp_v0_14;
block_12:
        *(void *)0x8007B2E4 = phi_t9;
    } else {
        if (((temp_v1 & 4) != 0) && (temp_v0_15 = arg0->unk10, temp_a0_2 = temp_v0_15->unk26, phi_return = temp_v0_15, (((s32) temp_a0_2 < 0x32) != 0))) {
            temp_v0_15->unk26 = (u8) (temp_a0_2 + 1);
            phi_t9 = *(void *)0x8007B2E4 & -9;
            phi_return = temp_v0_15;
            goto block_12;
        } else {
            if (((temp_v1 & 1) != 0) && (temp_v0_16 = arg0->unk10, temp_a0_3 = temp_v0_16->unk27, phi_return = temp_v0_16, (((s32) temp_a0_3 < 0x32) != 0))) {
                temp_v0_16->unk27 = (u8) (temp_a0_3 + 1);
                phi_t9 = *(void *)0x8007B2E4 & -9;
                phi_return = temp_v0_16;
                goto block_12;
            } else {
                if ((temp_v1 & 2) != 0) {
                    temp_v0_17 = arg0->unk10;
                    temp_a0_4 = temp_v0_17->unk25;
                    phi_return = temp_v0_17;
                    if ((s32) temp_a0_4 < 0x32) {
                        temp_v0_17->unk25 = (u8) (temp_a0_4 + 1);
                        phi_t9 = *(void *)0x8007B2E4 & -9;
                        phi_return = temp_v0_17;
                        goto block_12;
                    }
                }
            }
        }
    }
    if ((*(void *)0x8007B2E4 & 8) == 0) {
        phi_return = func_000268D4(0, 4, 0xFF);
    }
    return phi_return;
}
