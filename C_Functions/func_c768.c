void *func_c768(s32 arg0) {
    s16 temp_v0_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_2;
    u16 temp_t7;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a0_2;
    s16 phi_v0_3;
    void *phi_return;

    if (arg0 == 7) {
        phi_v0 = ((arg0 * 4) + 0x803B0000)->unk-5428;
        phi_v1 = (void *)0x8007C970;
        phi_a0 = 0x20;
loop_2:
        temp_a0 = phi_a0 - 1;
        temp_v1 = phi_v1 + 1;
        temp_v1->unk-1 = (u8) *phi_v0;
        phi_v0 = phi_v0 + 1;
        phi_v1 = temp_v1;
        phi_a0 = temp_a0;
        if (temp_a0 != 0) {
            goto loop_2;
        }
        phi_v0_2 = (void *)0x803AAAB4;
        phi_v1_2 = (void *)0x8007C570;
        phi_a0_2 = 0x400;
loop_4:
        temp_a0_2 = phi_a0_2 - 4;
        temp_v1_2 = phi_v1_2 + 4;
        temp_v1_2->unk-4 = (u8) phi_v0_2->unk0;
        temp_v0 = phi_v0_2 + 4;
        temp_v1_2->unk-3 = (u8) phi_v0_2->unk1;
        temp_v1_2->unk-2 = (u8) temp_v0->unk-2;
        temp_v1_2->unk-1 = (u8) temp_v0->unk-1;
        phi_v0_2 = temp_v0;
        phi_v1_2 = temp_v1_2;
        phi_a0_2 = temp_a0_2;
        if (temp_a0_2 != 0) {
            goto loop_4;
        }
        func_0002E768(1, arg0);
        (void *)0x8007BAB8->unk8 = (u16) ((void *)0x8007BAB8->unk8 | 0x10);
        *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
        *(void *)0x8007B2EC = 0x31;
        *(void *)0x8007B2F0 = (u16)3;
        *(void *)0x8007B2F2 = (u16)0x2F;
        *(void *)0x8007B2E8 = (u16)4;
        (void *)0x80085368->unk0 = 0x22;
        (void *)0x80085368->unk4 = 1;
        (void *)0x80085368->unk8 = -1;
        *(void *)0x8007BA40 = 0.0f;
        *(void *)0x8007BA44 = 14.0f;
        *(void *)0x8007BA48 = (f32) *(void *)0x800711E0;
        *(void *)0x8007BA4C = 0x108;
        (void *)0x8007BAB8->unk6 = (u16)0;
        return (void *)0x8007BAB8;
    }
    temp_t7 = (void *)0x8007BA80->unk6 + ((arg0 * 2) + 0x80050000)->unk-3D40;
    temp_v0_2 = temp_t7 & 0xFFFF;
    (void *)0x8007BA80->unk6 = temp_t7;
    phi_v0_3 = (s16) temp_v0_2;
    phi_return = (void *) temp_v0_2;
    if (temp_v0_2 >= 0x1F5) {
        (void *)0x8007BA80->unk6 = (u16)0x1F4U;
        temp_v0_3 = (u16)0x1F4U & 0xFFFF;
        phi_v0_3 = temp_v0_3;
        phi_return = (void *) temp_v0_3;
    }
    (void *)0x8007BA80->unk4 = phi_v0_3;
    return phi_return;
}
