u16 func_6c0c(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_t8;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    void *temp_a3;
    u16 phi_v0;
    void *phi_a3;
    u16 phi_return;
    u16 phi_return_2;

    temp_a3 = arg0;
    temp_v0 = arg1->unk62;
    temp_t8 = ((s32) temp_v0 >> 6) & 7;
    phi_return_2 = temp_v0;
    if (temp_t8 != 0) {
        if (temp_t8 == 1) {
            temp_v0_2 = temp_a3->unk124;
            phi_v0 = temp_v0_2;
            phi_a3 = temp_a3;
            phi_return = temp_v0_2;
            if (temp_v0_2 == 0) {
                arg0 = temp_a3;
                func_00006BEC(1, 4, arg1, temp_a3);
                temp_v0_3 = arg0->unk124;
                phi_v0 = temp_v0_3;
                phi_a3 = arg0;
                phi_return = temp_v0_3;
            }
            phi_a3->unk124 = (s16) (phi_v0 - 1);
            return phi_return;
        }
        if (temp_t8 != 2) {
            return temp_v0;
        }
        temp_f0 = arg1->unk2C * 2.0f;
        temp_f2 = arg1->unk34 * 2.0f;
        arg1->unk0 = (f32) (arg1->unk0 + temp_f0);
        arg1->unk8 = (f32) (arg1->unk8 + temp_f2);
        arg1->unk18 = (f32) (arg1->unk18 + temp_f0);
        arg1->unk20 = (f32) (arg1->unk20 + temp_f2);
        phi_return_2 = (bitwise u16) temp_f0;
    }
    return phi_return_2;
}
