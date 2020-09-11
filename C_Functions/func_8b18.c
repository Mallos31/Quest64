void func_8b18(s32 arg0) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    void *temp_s0;
    void *temp_v1;
    void *phi_s1;
    ?32 phi_t0;
    void *phi_s4;
    s32 phi_s3;

    *(void *)0x8007BCE8 = 0;
    temp_s3 = *(void *)0x8007BCE4;
    if (temp_s3 != 0) {
        phi_s1 = (void *)0x8007BD30;
        phi_s4 = (void *)0x8007BCF0;
        phi_s3 = temp_s3;
loop_2:
        temp_f0 = phi_s1->unk14 - (void *)0x8007BAB8->unk14;
        temp_s0 = phi_s1 + 0x14;
        temp_f2 = phi_s1->unk1C - (void *)0x8007BAB8->unk1C;
        temp_f12 = (temp_f0 * temp_f0) + (temp_f2 * temp_f2);
        if (temp_f12 < *(void *)0x80071128) {
            phi_t0 = 0;
            if (temp_f12 < *(void *)0x80071124) {
                phi_t0 = 0x2000;
            }
            temp_v1 = *(void *)0x8007B2FC;
            *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
            temp_v1->unk4 = phi_t0;
            temp_v1->unk0 = 0xBA000C02;
            temp_s2 = phi_s1->unk80->unk10;
            func_0001DB38(temp_f12, 0, temp_s0, (temp_s0->unk52 * 0xC) + temp_s2, arg0);
            func_0001E0AC(temp_s0->unk58, temp_s0, (temp_s0->unk52 * 0xC) + temp_s2);
            func_00011860(temp_s0->unk0, temp_s0->unk4, temp_s0->unk8, temp_s0->unk2C, temp_s0->unk30, temp_s0->unk34, 5.0f);
            *phi_s4 = temp_s0;
            *(void *)0x8007BCE8 = (s32) (*(void *)0x8007BCE8 + 1);
            phi_s4 = phi_s4 + 4;
        }
        temp_s3_2 = phi_s3 - 1;
        phi_s1 = phi_s1 + 0x84;
        phi_s3 = temp_s3_2;
        if (temp_s3_2 != 0) {
            goto loop_2;
        }
    }
}
