void *func_17120(void *arg0, void *arg1) {
    u16 sp2E;
    u32 temp_v0_2;
    void *temp_a2;
    void *temp_v0;
    void *temp_v1;
    u16 phi_a3;
    void *phi_return;

    temp_v0_2 = func_000175D4(arg0->unk2C, arg0->unk24);
    temp_a2 = arg0->unk24;
    phi_a3 = temp_v0_2 & 0xFFFF;
    if ((*temp_a2->unk68 & 1) != 0) {
        phi_a3 = (temp_v0_2 >> 1) & 0xFFFF;
    }
    if ((arg1->unk5E & 1) != 0) {
        sp2E = phi_a3;
        temp_v1 = arg0->unk2C;
        phi_return = (void *)0x80080000;
        if (func_0000ACC0(func_0000B140(arg1, temp_a2, phi_a3), sp2E, temp_v1->unk6, temp_v1->unk2, arg0->unk24) != 0) {
            temp_v0 = *(void *)0x8007BAC8;
            temp_v0->unk2A = (u16) (temp_v0->unk2A + 1);
            return temp_v0;
        }
    } else {
        phi_return = func_00006BEC(phi_a3 & 0xFFFF, arg0->unk2C->unk2, temp_a2, phi_a3);
    }
    return phi_return;
}
