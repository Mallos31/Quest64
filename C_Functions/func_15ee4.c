void *func_15ee4(void *arg0, void *arg1) {
    u16 temp_v1;
    void *temp_v0;
    void *temp_v0_2;
    void *phi_a1;

    temp_v0_2 = arg0->unk28;
    phi_a1 = arg1;
    if (temp_v0_2 != 0) {
        phi_a1 = temp_v0_2;
    }
    arg0->unkC = (f32) phi_a1->unk0;
    arg0->unk14 = (f32) phi_a1->unk8;
    temp_v0 = phi_a1->unk64;
    temp_v1 = temp_v0->unk0;
    if (temp_v1 == 1) {
        arg0->unk10 = (f32) (phi_a1->unk68->unk94 - (temp_v0->unk18 * phi_a1->unk24));
        return temp_v0;
    }
    if (temp_v1 == 2) {
        arg0->unk10 = (f32) (phi_a1->unk4 + (100.0f * phi_a1->unk24));
        return temp_v0;
    }
    arg0->unk10 = (f32) phi_a1->unk4;
    return temp_v0;
}
