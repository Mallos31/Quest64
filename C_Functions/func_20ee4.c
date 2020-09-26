void *func_20ee4(void *arg0) {
    u32 temp_v1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_v0;
    void *phi_a1;
    u32 phi_v1;

    temp_v0 = arg0->unk68;
    phi_a1 = temp_v0;
    phi_v1 = 0U;
loop_1:
    temp_v1 = phi_v1 + 1;
    if (phi_a1->unk12 != 0) {
        phi_a1->unk12 = (u8)0U;
    }
    phi_a1 = phi_a1 + 1;
    phi_v1 = temp_v1;
    if (temp_v1 < 7U) {
        goto loop_1;
    }
    temp_a0 = temp_v0->unk44;
    if (temp_a0 != 0) {
        temp_a0->unk0 = (u16)8;
        temp_a0->unk8 = (u16) (temp_a0->unk8 & 0xFFFE);
        temp_v0->unk44 = 0;
    }
    temp_a0_2 = temp_v0->unk48;
    if (temp_a0_2 != 0) {
        temp_a0_2->unk0 = (u16)8;
        temp_a0_2->unk8 = (u16) (temp_a0_2->unk8 & -2);
        temp_v0->unk48 = NULL;
    }
    temp_a0_3 = temp_v0->unk4C;
    if (temp_a0_3 != 0) {
        temp_a0_3->unk0 = (u16)8;
        temp_a0_3->unk8 = (u16) (temp_a0_3->unk8 & -2);
        temp_v0->unk4C = NULL;
    }
    temp_a0_4 = temp_v0->unk50;
    if (temp_a0_4 != 0) {
        temp_a0_4->unk0 = (u16)8;
        temp_a0_4->unk8 = (u16) (temp_a0_4->unk8 & -2);
        temp_v0->unk50 = NULL;
    }
    return temp_v0;
}
