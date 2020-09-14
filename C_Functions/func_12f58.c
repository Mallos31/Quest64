void *func_12f58(void *arg0) {
    void *sp5C;
    f32 sp54;
    f32 sp50;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    f64 temp_f0_2;
    s32 temp_s1;
    s32 temp_s1_2;
    void *phi_s0;
    s32 phi_s1;

    temp_s1 = *(void *)0x80086A00;
    sp5C = NULL;
    if (temp_s1 != 0) {
        phi_s0 = (void *)0x80086A08;
        phi_s1 = temp_s1;
loop_2:
        if (((((phi_s0->unk10 == 0) && (temp_f0 = phi_s0->unk0 - arg0->unk0, temp_a1 = &sp50, temp_f2 = phi_s0->unk8 - arg0->unk8, (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) < 400.0f))) && (sp50 = temp_f0, sp54 = temp_f2, func_000232F4(arg0->unk10, temp_a1), (0.0f <= sp54))) && (temp_f0_2 = (f64) sp50, (-5.0 < temp_f0_2))) && (temp_f0_2 < 5.0)) {
            sp5C = phi_s0;
        } else {
            temp_s1_2 = phi_s1 - 1;
            phi_s0 = phi_s0 + 0x18;
            phi_s1 = temp_s1_2;
            if (temp_s1_2 != 0) {
                goto loop_2;
            }
        }
    }
    return sp5C;
}
