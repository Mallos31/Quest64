void func_c64c(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    void *temp_t1;
    void *temp_t4;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a1;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a1_2;
    void *phi_t1;
    void *phi_t4;

    temp_a2 = arg0 * 4;
    phi_v0 = (temp_a2 + 0x803B0000)->unk-5428;
    phi_v1 = (void *)0x8007C970;
    phi_a1 = 0x20;
loop_1:
    temp_a1 = phi_a1 - 1;
    temp_v1 = phi_v1 + 1;
    temp_v1->unk-1 = (u8) *phi_v0;
    phi_v0 = phi_v0 + 1;
    phi_v1 = temp_v1;
    phi_a1 = temp_a1;
    if (temp_a1 != 0) {
        goto loop_1;
    }
    phi_v0_2 = (temp_a2 + 0x803B0000)->unk-5408;
    phi_v1_2 = (void *)0x8007C570;
    phi_a1_2 = 0x400;
loop_3:
    temp_a1_2 = phi_a1_2 - 4;
    temp_v1_2 = phi_v1_2 + 4;
    temp_v1_2->unk-4 = (u8) phi_v0_2->unk0;
    temp_v0 = phi_v0_2 + 4;
    temp_v1_2->unk-3 = (u8) phi_v0_2->unk1;
    temp_v1_2->unk-2 = (u8) temp_v0->unk-2;
    temp_v1_2->unk-1 = (u8) temp_v0->unk-1;
    phi_v0_2 = temp_v0;
    phi_v1_2 = temp_v1_2;
    phi_a1_2 = temp_a1_2;
    if (temp_a1_2 != 0) {
        goto loop_3;
    }
    phi_t1 = (void *)0x8007D1CC;
    phi_t4 = (void *)0x8007D130;
loop_5:
    temp_t1 = phi_t1 + 0xC;
    temp_t4 = phi_t4 + 0xC;
    temp_t4->unk-C = (s32) *phi_t1;
    temp_t4->unk-8 = (s32) temp_t1->unk-8;
    temp_t4->unk-4 = (s32) temp_t1->unk-4;
    phi_t1 = temp_t1;
    phi_t4 = temp_t4;
    if (temp_t1 != 0x8007D238) {
        goto loop_5;
    }
    if (arg0 == 7) {
        (void *)0x8007D130->unk0 = -31.0f;
        (void *)0x8007D130->unk4 = 139.0f;
        (void *)0x8007D130->unk8 = -328.0f;
    }
    func_00014434((arg0 * 0x38) + 0x803A9BB0, (void *)0x8007D130, temp_a2, arg0);
}
