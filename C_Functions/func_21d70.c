void *func_21d70(void) {
    s32 temp_v1;
    s32 temp_v1_2;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;
    void *phi_v0_2;
    s32 phi_v1_2;

    func_00024260(0xD3BE40, 0x803AAC20, 0x400);
    phi_v0 = (void *)0x8008C770;
    phi_v1 = 8;
loop_1:
    temp_v1 = phi_v1 - 1;
    *phi_v0 = (u8)0xFF;
    phi_v0 = phi_v0 + 1;
    phi_v1 = temp_v1;
    if (temp_v1 != 0) {
        goto loop_1;
    }
    *(void *)0x8008CF78 = (u8)0xFF;
    (void *)0x8008CF79->unk1 = (u8)0xFF;
    (void *)0x8008CF79->unk0 = (u8)0xFF;
    phi_v0_2 = (void *)0x8008CF79 + 2;
    phi_v1_2 = 0x94;
loop_3:
    temp_v1_2 = phi_v1_2 - 4;
    phi_v0_2->unk0 = (u8)0xFF;
    phi_v0_2->unk1 = (u8)0xFF;
    phi_v0_2->unk2 = (u8)0xFF;
    phi_v0_2->unk3 = (u8)0xFF;
    temp_v0 = phi_v0_2 + 4;
    phi_v0_2 = temp_v0;
    phi_v1_2 = temp_v1_2;
    if (temp_v1_2 != 0) {
        goto loop_3;
    }
    *(void *)0x8008C760 = 0;
    *(void *)0x8008C764 = 0;
    *(void *)0x8008C768 = 0;
    return temp_v0;
}
