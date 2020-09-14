void *func_12cc0(s32 arg0) {
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    u8 phi_a1;
    void *phi_v1;
    void *phi_v0;
    u8 phi_a1_2;
    void *phi_v1_2;
    void *phi_v0_2;
    void *phi_v0_3;
    void *phi_v1_3;
    void *phi_return;
    void *phi_v1_4;

    temp_v0 = ((arg0 * 4) + 0x803B0000)->unk-66AC;
    (void *)0x8007C570->unk0 = (u8)0x7F;
    (void *)0x8007C570->unk1 = (u8)0xE0;
    (void *)0x8007C570->unk2 = (u8)0x7F;
    (void *)0x8007C570->unk3 = (u8)0x7F;
    temp_a1 = *temp_v0;
    phi_a1 = temp_a1;
    phi_v1 = (void *)0x8007C574;
    phi_v0 = temp_v0;
    phi_v1_4 = (void *)0x8007C574;
    if (0xFF != temp_a1) {
loop_1:
        *phi_v1 = phi_a1;
        temp_a1_2 = phi_v0->unk1;
        temp_v1 = phi_v1 + 1;
        phi_a1 = temp_a1_2;
        phi_v1 = temp_v1;
        phi_v0 = phi_v0 + 1;
        phi_v1_4 = temp_v1;
        if (0xFF != temp_a1_2) {
            goto loop_1;
        }
    }
    phi_v0_3 = (void *)0x8004C460;
    phi_v1_3 = phi_v1_4;
    phi_return = (void *)0x8004C460;
    if (0xFF != *(void *)0x8004C460) {
        phi_a1_2 = *(void *)0x8004C460;
        phi_v1_2 = phi_v1_4;
        phi_v0_2 = (void *)0x8004C460;
loop_4:
        *phi_v1_2 = phi_a1_2;
        temp_a1_3 = phi_v0_2->unk1;
        temp_v1_2 = phi_v1_2 + 1;
        temp_v0_2 = phi_v0_2 + 1;
        phi_a1_2 = temp_a1_3;
        phi_v1_2 = temp_v1_2;
        phi_v0_2 = temp_v0_2;
        phi_v0_3 = temp_v0_2;
        phi_v1_3 = temp_v1_2;
        phi_return = temp_v0_2;
        if (0xFF != temp_a1_3) {
            goto loop_4;
        }
    }
    *phi_v1_3 = (u8) *phi_v0_3;
    *(void *)0x8007C970 = (u8)0xFF;
    return phi_return;
}
