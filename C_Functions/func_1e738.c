s16 func_1e738(s32 arg0, void *arg1, void *arg2, ?32 arg3) {
    ? sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 *temp_s3;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_s1;
    void *temp_s4;
    void *phi_s0;
    s32 phi_s1;
    s32 phi_v0;
    s16 phi_return;
    s16 phi_return_2;

    *(void *)0x8008C5E0 = 0;
    func_00023360(&sp78, arg1->unkC, arg1->unk10, arg1->unk14, arg1->unk24, arg1->unk0, arg1->unk4, arg1->unk8);
    temp_s3 = &sp6C;
    sp6C = arg1->unk24;
    sp70 = arg1->unk24;
    sp74 = arg1->unk24;
    temp_v0 = arg2->unk0;
    temp_s4 = arg2->unk4;
    phi_return = temp_v0;
    if ((s32) temp_v0 > 0) {
        phi_s0 = temp_s4;
        phi_s1 = 0;
        phi_v0 = (s32) temp_v0;
        phi_return_2 = temp_v0;
loop_2:
        if (phi_s0->unk14 == 0) {
            func_0001DC78(&sp78, subroutine_arg1, (bitwise s32) temp_s3[1], (bitwise s32) temp_s3[2], arg0, phi_s1, (?32) arg1->unk54, (?32) arg1->unk56, arg2, temp_s4, arg3);
            temp_v0_2 = arg2->unk0;
            phi_v0 = (s32) temp_v0_2;
            phi_return_2 = temp_v0_2;
        }
        temp_s1 = phi_s1 + 1;
        phi_s0 = phi_s0 + 0x20;
        phi_s1 = temp_s1;
        phi_return = phi_return_2;
        if (temp_s1 < phi_v0) {
            goto loop_2;
        }
    }
    return phi_return;
}
