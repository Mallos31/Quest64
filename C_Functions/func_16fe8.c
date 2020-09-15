void *func_16fe8(void *arg0, ? arg1) {
    s32 temp_s2;
    s32 temp_s2_2;
    void *temp_s1;
    void *temp_v0;
    void *phi_s0;
    s32 phi_s2;
    void *phi_s3;
    s32 phi_s2_2;
    void *phi_s3_2;
    void *phi_s3_3;

    temp_v0 = arg0->unk28;
    if ((temp_v0->unk5E & 1) == 0) {
        phi_s3 = (void *)0x8007BACC;
        if (func_00018278(arg1, (void *)0x8007BACC) != 0) {
            phi_s3 = NULL;
        }
    } else {
        if ((temp_v0 == 0) || (phi_s3 = temp_v0, (func_00018278(arg1, temp_v0) != 0))) {
            temp_s2 = *(void *)0x8007C990;
            phi_s3 = NULL;
            if (temp_s2 != 0) {
                phi_s0 = (void *)0x8007C998;
                phi_s2_2 = temp_s2;
                phi_s3_3 = NULL;
loop_7:
                temp_s1 = phi_s0 + 0x24;
                phi_s2 = phi_s2_2;
                phi_s3_2 = phi_s3_3;
                if (-1 != phi_s0->unk74) {
                    temp_s2_2 = phi_s2_2 - 1;
                    phi_s2 = temp_s2_2;
                    phi_s3_2 = phi_s3_3;
                    if (func_00018278(arg1, temp_s1) == 0) {
                        *(void *)0x800871DC = phi_s0;
                        phi_s2 = temp_s2_2;
                        phi_s3_2 = temp_s1;
                    }
                }
                phi_s0 = phi_s0 + 0x128;
                phi_s3 = phi_s3_2;
                phi_s2_2 = phi_s2;
                phi_s3_3 = phi_s3_2;
                if (phi_s2 != 0) {
                    goto loop_7;
                }
            }
        } else {

        }
    }
    return phi_s3;
}
