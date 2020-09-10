void *func_1be8(void) {
    s32 temp_a0;
    void *temp_v0;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a0;

    func_00024260(0x73A90, 0x80096850, 0x77560 - 0x73A90);
    *(void *)0x8007B350 = 0x80096850;
    func_00024260(0xD4B3C0, 0x800C0000, 0xD77380 - 0xD4B3C0);
    func_00024260(0xD77380, 0x80399AB0, 0xD884F0 - 0xD77380);
    (void *)0x80308FFF->unk5149 = (u16)2;
    (void *)0x80308FFF->unk514D = 0x803B5000;
    func_0000111C(0x80301000);
    (void *)0x80319000->unk2298 = (u16)2;
    (void *)0x80319000->unk229C = 0x803DA800;
    func_0000111C(0x8030E150);
    *(void *)0x8007B2F4 = 0;
    phi_v0 = (void *)0x803DA800;
    phi_v1 = (void *)0x803B5000;
    phi_a0 = 0x12C00;
loop_1:
    phi_v0->unk0 = (u16)0;
    phi_v1->unk0 = (u16)0;
    phi_v0->unk2 = (u16)0;
    phi_v1->unk2 = (u16)0;
    phi_v0->unk4 = (u16)0;
    phi_v1->unk4 = (u16)0;
    phi_v0->unk6 = (u16)0;
    temp_a0 = phi_a0 - 4;
    phi_v1->unk6 = (u16)0;
    temp_v0 = phi_v0 + 8;
    phi_v0 = temp_v0;
    phi_v1 = phi_v1 + 8;
    phi_a0 = temp_a0;
    if (temp_a0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}
