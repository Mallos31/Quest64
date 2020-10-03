void *func_25ed8(s32 arg0, s32 arg1) {
    void *sp1C;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_a2;

    temp_v0_2 = *(void *)0x800538F0 + (arg1 * 8);
    temp_a2 = temp_v0_2->unk8;
    temp_a3 = temp_v0_2->unk4;
    phi_a2 = temp_a2;
    if ((temp_a2 & 1) != 0) {
        phi_a2 = temp_a2 + 1;
    }
    temp_v0 = (arg0 * 0x19C) + 0x8008F978;
    sp1C = temp_v0;
    func_00024690(temp_a3, temp_v0->unk190, phi_a2, temp_a3);
    temp_v0->unk194 = arg1;
    return temp_v0;
}

