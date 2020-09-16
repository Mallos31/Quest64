void *func_1e074(f32 arg0, f32 arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    s32 phi_v0;
    s32 phi_v0_2;
    void *phi_v1_2;

    phi_v1_2 = NULL;
    if (arg2 != 0) {
        temp_v0 = arg2->unk4;
        temp_v1 = arg2->unk0;
        phi_v1 = temp_v1;
        phi_v0 = temp_v0;
        phi_v0_2 = temp_v0;
        phi_v1_2 = temp_v1;
        if (temp_v0 != 0) {
loop_2:
            temp_f0 = (f32) phi_v1->unk0;
            if (((!(temp_f0 <= arg0) || (temp_f2 = (f32) phi_v1->unk2, !(temp_f2 <= arg1))) || !((arg0 - temp_f0) <= (f32) phi_v1->unk4)) || (phi_v0_2 = phi_v0, phi_v1_2 = phi_v1, !((arg1 - temp_f2) <= (f32) phi_v1->unk6))) {
                temp_v0_2 = phi_v0 - 1;
                temp_v1_2 = phi_v1 + 0x18;
                phi_v1 = temp_v1_2;
                phi_v0 = temp_v0_2;
                phi_v0_2 = temp_v0_2;
                phi_v1_2 = temp_v1_2;
                if (temp_v0_2 != 0) {
                    goto loop_2;
                }
            } else {

            }
        }
        if (phi_v0_2 == 0) {
            phi_v1_2 = NULL;
        }
    }
    return phi_v1_2;
}
