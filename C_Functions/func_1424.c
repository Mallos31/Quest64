void func_1424(void *arg0, void *arg1) {
    void *sp1C;
    void *sp18;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_a2;
    void *phi_a2_2;

    temp_v1 = arg0->unk668;
    sp18 = NULL;
    sp1C = temp_v1;
    phi_v1 = temp_v1;
    phi_a2 = sp18;
    phi_a2_2 = sp18;
    if (temp_v1 != 0) {
loop_1:
        if (phi_v1 == arg1) {
            if (phi_a2 != 0) {
                *phi_a2 = (s32) *arg1;
                phi_a2_2 = phi_a2;
            } else {
                arg0->unk668 = (s32) *arg1;
                phi_a2_2 = phi_a2;
            }
        } else {
            temp_a2 = phi_v1;
            temp_v1_2 = *phi_v1;
            phi_v1 = temp_v1_2;
            phi_a2 = temp_a2;
            phi_a2_2 = temp_a2;
            if (temp_v1_2 != 0) {
                goto loop_1;
            }
        }
    }
    func_00034160(func_00034160(1), arg1, phi_a2_2);
}
