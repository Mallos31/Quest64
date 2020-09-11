void func_98f4(s32 arg0) {
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f2;
    s32 temp_s1;
    s32 temp_s3;
    void *temp_s0;
    void *temp_v0;
    void *temp_v1;
    void *phi_s2;
    void *phi_s4;
    s32 phi_s3;
    s32 phi_s3_2;

    *(void *)0x8007D08C = 0;
    temp_v1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
    temp_v1->unk4 = 0x2000;
    temp_v1->unk0 = 0xBA000C02;
    temp_s3 = *(void *)0x8007C990;
    if (temp_s3 != 0) {
        phi_s2 = (void *)0x8007C998;
        phi_s4 = (void *)0x8007D090;
        phi_s3_2 = temp_s3;
loop_2:
        temp_s0 = phi_s2 + 0x24;
        phi_s3 = phi_s3_2;
        if (-1 != phi_s2->unk74) {
            temp_v0 = temp_s0->unk64;
            temp_f0 = temp_s0->unk4;
            temp_s1 = *(*(void *)0x8007D0A8 + (temp_s0->unk50 * 4));
            temp_f20 = temp_f0;
            if (temp_v0->unk0 == 1) {
                temp_f2 = *(void *)0x8007BAD0;
                if (temp_f0 < temp_f2) {
                    temp_s0->unk4 = temp_f2;
                }
                temp_s0->unk4 = (f32) (temp_s0->unk4 + (temp_v0->unk1C * temp_s0->unk24));
                temp_s0->unk68->unk94 = (f32) temp_s0->unk4;
            }
            func_0001DB38(1, temp_s0, (temp_s0->unk52 * 0xC) + temp_s1, arg0);
            func_0001E0AC(temp_s0->unk58, temp_s0, (temp_s0->unk52 * 0xC) + temp_s1);
            temp_s0->unk4 = temp_f20;
            if (temp_s0->unk64->unk0 != 2) {
                if ((temp_s0->unk62 & 0x8000) == 0) {
                    func_00011860(temp_s0->unk0, temp_s0->unk4, temp_s0->unk8, temp_s0->unk2C, temp_s0->unk30, temp_s0->unk34, temp_s0->unk28 * temp_s0->unk24);
                }
            }
            *phi_s4 = temp_s0;
            *(void *)0x8007D08C = (s32) (*(void *)0x8007D08C + 1);
            phi_s3 = phi_s3_2 - 1;
            phi_s4 = phi_s4 + 4;
        }
        phi_s2 = phi_s2 + 0x128;
        phi_s3_2 = phi_s3;
        if (phi_s3 != 0) {
            goto loop_2;
        }
    }
}
