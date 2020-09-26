u16 func_20fd0(void) {
    u16 temp_v0_14;
    void *temp_t1;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    u16 phi_return;

    *(void *)0x8008C648 = 0xB5;
    *(void *)0x8008C64C = 0x1A;
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
    if (((*(void *)0x8007D088)->unk90 & 0x80) != 0) {
        func_000210FC(0x803A6F60, 0, 0, 0x6E, 0x10, 0x64, 0x1C, 0x400, 0x400);
        func_000210FC(0x803A6F60, 0, 0x10, 0x6E, 0x10, 0x64, 0x2C, 0x400, 0x400);
        func_000210FC(0x803A6F60, 0, 0x20, 0x6E, 0x10, 0x64, 0x3C, 0x400, 0x400);
        func_000210FC(0x803A6F60, 0, 0x30, 0x6E, 4, 0x64, 0x4C, 0x400, 0x400);
    } else {
        func_000210FC(0x803A6F60, 0, 0, 0x6E, 0x10, 0x64, 0x1C, 0x400, 0x400);
        func_000210FC(0x803A6F60, 0, 0x10, 0x6E, 0xA, 0x64, 0x2C, 0x400, 0x400);
        func_000210FC(0x803A6F60, 0, 0x1A, 0x6E, 2, 0x64, 0x4E, 0x400, 0x400);
    }
    func_00020B4C(4, 0x11, 0, *(*(void *)0x8007D0AC + ((*(void *)0x8007D088)->unk20->unk2 * 4)));
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
    temp_t1 = *(void *)0x8007D088;
    phi_return = (u16) temp_v0_13;
    if ((temp_t1->unk90 & 0x80) != 0) {
        func_00020D4C(3, 0x10, 0x1C, temp_t1->unk20->unk6);
        func_00020D4C(3, 0x10, 0x26, (*(void *)0x8007D088)->unk20->unkE);
        func_00020D4C(3, 0x46, 0x1C, (*(void *)0x8007D088)->unk20->unk2A);
        func_00020D4C(3, 0x46, 0x26, (*(void *)0x8007D088)->unk20->unkC);
        temp_v0_14 = (*(void *)0x8007D088)->unk20->unk26;
        phi_return = temp_v0_14;
        if (temp_v0_14 != 4) {
            phi_return = func_000210FC(0x803A6F40, 0x5B, 3, 0xC, 0xC, (temp_v0_14 * 0xC) + 0x20, 0x10, 0x400, 0x400);
        }
    }
    return phi_return;
}
