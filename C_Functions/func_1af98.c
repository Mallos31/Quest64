void *func_1af98(s32 arg0) {
    s32 temp_s2;
    u16 temp_t2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v1_2;
    void *phi_s0;
    u32 phi_a1;
    s32 phi_s2;
    u32 phi_a1_2;

    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk0 = 0x6000000;
    temp_v0_2->unk4 = 0x800EBE08;
    *(void *)0x800883E8 = (u16)0xFFFF;
    phi_s0 = (void *)0x800875A8;
    phi_s2 = 0x20;
loop_1:
    if (phi_s0->unk0 != 0) {
        func_0001A834(phi_s0);
        temp_v1 = phi_s0->unk8;
        phi_a1_2 = 0xFAU;
        if ((temp_v1 & 2) != 0) {
            if ((*(void *)0x80087204 & 1) != 0) {
                phi_a1_2 = 0xF0U;
            } else {
                phi_a1_2 = 0x96U;
            }
        }
        if (((temp_v1 & 1) == 0) && (temp_v0_3 = phi_s0->unk0, (((s32) temp_v0_3 < 8) != 0))) {
            phi_a1 = (u32) (temp_v0_3 * phi_a1_2) >> 3;
        } else {
            phi_a1 = phi_a1_2;
            if ((temp_v1 & 0x80) != 0) {
                temp_v0_4 = phi_s0->unk4;
                phi_a1 = phi_a1_2;
                if ((s32) temp_v0_4 < 8) {
                    phi_a1 = (u32) (temp_v0_4 * phi_a1_2) >> 3;
                }
            }
        }
        temp_v1_2 = ((phi_s0->unk6 & 0xFF) * 4) + 0x800EBD1C;
        temp_v0_5 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_5 + 8);
        temp_v0_5->unk0 = 0xFB000000;
        temp_v0_5->unk4 = (s32) ((((temp_v1_2->unk2 << 8) | (temp_v1_2->unk0 << 0x18)) | (temp_v1_2->unk1 << 0x10)) | (phi_a1 & 0xFF));
        if ((phi_s0->unk8 & 8) != 0) {
            temp_v0_6 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_6 + 8);
            temp_v0_6->unk4 = 0x2000;
            temp_v0_6->unk0 = 0xB7000000;
        } else {
            temp_v0_7 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_7 + 8);
            temp_v0_7->unk4 = 0x2000;
            temp_v0_7->unk0 = 0xB6000000;
        }
        func_0001A620(phi_s0, arg0);
        temp_t2 = phi_s0->unk0 - 1;
        phi_s0->unk34 = (s32) (phi_s0->unk34 + 1);
        phi_s0->unk0 = temp_t2;
        if ((temp_t2 & 0xFFFF) == 0) {
            if ((phi_s0->unk8 & 1) != 0) {
                phi_s0->unk0 = (u16) phi_s0->unk2;
            }
        }
        phi_s0->unk4 = (u16) (phi_s0->unk4 + 1);
    }
    temp_s2 = phi_s2 - 1;
    phi_s0 = phi_s0 + 0x58;
    phi_s2 = temp_s2;
    if (temp_s2 != 0) {
        goto loop_1;
    }
    temp_v0_8 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_8 + 8);
    temp_v0_8->unk4 = 0;
    temp_v0_8->unk0 = 0xE7000000;
    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xBA000E02;
    *(void *)0x80087204 = (u16) (*(void *)0x80087204 + 1);
    return temp_v0;
}
