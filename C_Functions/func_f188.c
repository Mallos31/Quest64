s32 func_f188(s32 arg0) {
    s32 temp_s4;
    s32 temp_v0;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *phi_s1;
    s32 phi_s4;
    s32 phi_return;

    *(void *)0x8007D2D0 = (s32) *(void *)0x8007D2D4;
    phi_s1 = (void *)0x80084180;
    if (*(void *)0x8007B2F4 != 0) {
        phi_s1 = (void *)0x80084098;
    }
    temp_s4 = *(void *)0x8007D2D0;
    temp_v0 = temp_s4;
    phi_return = temp_v0;
    if (temp_s4 != 0) {
        phi_s4 = temp_s4 - 1;
loop_4:
        if (phi_s1->unk0 != 0) {
            temp_s0 = phi_s1->unk18;
            phi_s1->unk14 = (f32) ((f64) phi_s1->unk14 - *(void *)0x80071250);
            func_00023500((arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0, 0, (f32) ((f64) phi_s1->unk10 * *(void *)0x80071248), (bitwise s32) phi_s1->unk14, temp_s0->unk10, temp_s0->unk0, temp_s0->unk4, temp_s0->unk8);
            temp_v0_2 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
            temp_v0_2->unk0 = 0x1020040;
            temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0x2000000) + 0xC0);
            *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
            temp_v0_3 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
            temp_v0_3->unk0 = 0x6000000;
            temp_v0_3->unk4 = (s32) (*(void *)0x80084F28 + (temp_s0->unk14 << 5))->unk10;
            *(void *)0x80084F34 = (s32) (*(void *)0x80084F34 + 1);
        }
        phi_s1 = phi_s1 + 0x1C;
        phi_s4 = phi_s4 - 1;
        phi_return = phi_s4;
        if (phi_s4 != 0) {
            goto loop_4;
        }
    }
    return phi_return;
}
