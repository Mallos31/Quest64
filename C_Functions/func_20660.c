void func_20660(s32 arg0) {
    s32 sp44;
    s32 sp40;
    s32 temp_t6;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    f32 phi_f14;
    void *phi_a0;

    temp_t6 = arg0 & 0xFFFF;
    temp_v1 = (temp_t6 * 0x128) + 0x8007C998;
    temp_v0 = temp_v1 + 0x24;
    if (*temp_v1->unk88 == 1) {
        temp_v0_2 = temp_v1 + 0x24;
        phi_v0 = temp_v0_2;
        phi_f14 = temp_v0_2->unk68->unk94;
        phi_a0 = (void *) temp_t6;
    } else {
        temp_a0 = temp_v0->unk64;
        if (temp_a0->unk0 == 2) {
            phi_v0 = temp_v0;
            phi_f14 = (f32) ((f64) temp_v0->unk4 + (*(void *)0x800716C0 * (f64) temp_v0->unk24));
            phi_a0 = temp_a0;
        } else {
            phi_v0 = temp_v0;
            phi_f14 = temp_v0->unk4 + (temp_a0->unk1C * temp_v0->unk24);
            phi_a0 = temp_a0;
        }
    }
    if (func_0002413C(phi_v0->unk0, phi_f14, phi_a0, phi_v0->unk8, &sp44, &sp40) != 0) {
        temp_v1_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1_2 + 8);
        temp_v1_2->unk0 = 0x6000000;
        temp_v1_2->unk4 = 0x803A8CF8;
        func_00020F8C(sp44 - 4, sp40 - 0x2A, 0x18, 0x2A, 0, 0, 0x400, 0x400);
    }
    ERROR(unknown instruction: no );
}
