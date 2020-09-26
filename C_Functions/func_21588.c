void *func_21588(void) {
    s32 sp74;
    s32 sp70;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    s32 temp_s1;
    u16 temp_a3;
    u16 temp_v0_9;
    void *temp_ret;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *phi_s0;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f0;
    s32 phi_s1;
    void *phi_return;

    temp_v0 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xE7000000;
    temp_v0_2 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
    temp_v0_2->unk4 = 0x803A2960;
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
    phi_s0 = (void *)0x8008C668;
    phi_s1 = 8;
    phi_return = temp_v0_7;
loop_1:
    if (phi_s0->unk0 != 0) {
        temp_v0_8 = phi_s0->unk4;
        temp_f12 = phi_s0->unk8;
        temp_f14 = phi_s0->unkC;
        temp_f0 = phi_s0->unk10;
        phi_f12 = temp_f12;
        phi_f14 = temp_f14;
        phi_f0 = temp_f0;
        if (temp_v0_8 != 0) {
            phi_f12 = temp_f12 + temp_v0_8->unk0;
            phi_f14 = temp_f14 + temp_v0_8->unk4;
            phi_f0 = temp_f0 + temp_v0_8->unk8;
        }
        func_0002413C(phi_f12, phi_f14, phi_f0, &sp74, &sp70);
        temp_v0_9 = phi_s0->unk1A;
        temp_a3 = phi_s0->unk18;
        temp_ret = func_000210FC(0x803A6F70, sp74 - ((s32) temp_a3 >> 1), sp70 - temp_v0_9, temp_a3, (?32) temp_v0_9, (?32) phi_s0->unk14, (?32) phi_s0->unk16, 0x400, 0x400);
        phi_s0->unk0 = (u16) (phi_s0->unk0 - 1);
        phi_return = temp_ret;
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 0x1C;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_1;
    }
    return phi_return;
}
