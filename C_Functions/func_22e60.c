? func_22e60(void *arg0, void *arg1) {
    void *temp_v0;
    ? phi_v1;
    ? phi_v1_2;

    temp_v0 = arg0->unk64;
    phi_v1_2 = 0;
    if (arg1->unk4 != 0) {
        phi_v1_2 = 0;
        if (temp_v0->unk4 != temp_v0->unk6) {
            phi_v1_2 = 1;
        }
    }
    phi_v1 = phi_v1_2;
    if (arg1->unk6 != 0) {
        phi_v1 = phi_v1_2;
        if (temp_v0->unk8 != temp_v0->unkA) {
            phi_v1 = 1;
        }
    }
    return phi_v1;
}
