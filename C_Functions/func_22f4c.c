void func_22f4c(void *arg0, void *arg1) {
    void *sp38;
    s16 temp_a0;
    s16 temp_a3;
    s32 temp_a2;
    s32 temp_a2_2;
    u16 temp_a3_2;
    u16 temp_t0;
    void *temp_v1;
    s32 phi_a2;
    s32 phi_a2_2;

    temp_v1 = arg0->unk64;
    temp_a3 = arg1->unk4;
    if (temp_a3 != 0) {
        temp_t0 = temp_v1->unk4;
        temp_a2 = (temp_v1->unk6 - temp_t0) & 0xFFFF;
        phi_a2 = temp_a2;
        if ((s32) temp_a3 < temp_a2) {
            phi_a2 = temp_a3 & 0xFFFF;
        }
        temp_v1->unk4 = (u16) (temp_t0 + phi_a2);
        sp38 = temp_v1;
        func_00018DF4(arg0, 1, phi_a2, temp_a3);
    }
    temp_a0 = arg1->unk6;
    if (temp_a0 != 0) {
        temp_a3_2 = arg0->unk64->unk8;
        temp_a2_2 = (arg0->unk64->unkA - temp_a3_2) & 0xFFFF;
        phi_a2_2 = temp_a2_2;
        if ((s32) temp_a0 < temp_a2_2) {
            phi_a2_2 = temp_a0 & 0xFFFF;
        }
        arg0->unk64->unk8 = (u16) (temp_a3_2 + phi_a2_2);
        func_00018DF4(arg0, 2, phi_a2_2, temp_a3_2);
    }
    (void *)0x8008D010->unk0 = (f32) (void *)0x803A9A68->unk8;
    (void *)0x8008D010->unk4 = (f32) (void *)0x803A9A68->unkC;
    (void *)0x8008D010->unk8 = 1.0f;
    func_000177F8((void *)0x803A9A68->unk2, (void *)0x803A9A68->unk4, arg0->unk0, arg0->unk4, arg0->unk8, 0.0f, ((void *)0x803A9A68->unk0 * 0xA) + 0x803A9A54, (void *)0x8008D010, arg0);
    func_000268D4(0, 0xB, 0xFF);
}
