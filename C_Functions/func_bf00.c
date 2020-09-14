void func_bf00(void) {
    void *sp48;
    void *sp40;
    s32 sp3C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f18;
    u16 temp_a3;
    u16 temp_t8;
    void *temp_t6;
    void *temp_v0;
    void *temp_v1;
    f32 phi_f12;
    f32 phi_f14;
    f32 phi_f2;

    temp_t6 = *(void *)0x8007D0C4;
    if (temp_t6 != 0) {
        temp_t8 = *(void *)0x8007D0C0 + 1;
        *(void *)0x8007D0C0 = temp_t8;
        if ((s32) temp_t6->unk0 < (temp_t8 & 0xFFFF)) {
            temp_v1 = (temp_t6->unk2 * 0x10) + 0x80054690;
            sp3C = (temp_v1->unk0 * 0xA) + 0x800C1B90;
            temp_v0 = *(void *)0x8007D0CC;
            (void *)0x8007D0D0->unk0 = (f32) temp_t6->unk8;
            (void *)0x8007D0D0->unk4 = (f32) temp_t6->unk10;
            sp40 = temp_v1;
            sp48 = temp_v0;
            func_000232F4(temp_v0->unk10 + temp_t6->unk14, (void *)0x8007D0D0);
            if ((temp_t6->unk4 & 2) != 0) {
                phi_f12 = *(void *)0x8007BAD0;
                phi_f14 = *(void *)0x8007BAD4;
                phi_f2 = *(void *)0x8007BACC;
            } else {
                phi_f12 = temp_v0->unk4;
                phi_f14 = temp_v0->unk8;
                phi_f2 = temp_v0->unk0;
            }
            temp_f0 = temp_v0->unk24;
            temp_f18 = (void *)0x8007D0D0->unk0 * temp_f0;
            (void *)0x8007D0D0->unk0 = (f32) temp_v1->unk8;
            temp_f10 = (void *)0x8007D0D0->unk4 * temp_f0;
            temp_f12 = phi_f12 + (temp_t6->unkC * temp_f0);
            (void *)0x8007D0D0->unk4 = (f32) temp_v1->unkC;
            temp_f14 = phi_f14 + temp_f10;
            temp_a3 = *(*(void *)0x8007D0C8)->unk1C;
            if ((temp_a3 & 0x8000) != 0) {
                (void *)0x8007D0D0->unk8 = (f32) ((((((s32) temp_a3 >> 8) & 0xF) * 4) + 0x800C0000)->unk1B14 + ((temp_a3 & 0xFF) * 0x44))->unk1C;
            } else {
                (void *)0x8007D0D0->unk8 = (f32) temp_v0->unk28;
            }
            func_000177F8(temp_f12, temp_f14, temp_v1->unk2, temp_v1->unk4, phi_f2 + temp_f18, temp_f12, temp_f14, temp_v0->unk10 + temp_t6->unk14, sp3C, (void *)0x8007D0D0, temp_v0);
            if ((temp_t6->unk4 & 4) != 0) {
                func_00013F20(1);
            }
            if ((temp_t6->unk4 & 1) != 0) {
                *(void *)0x8007D0C4 = NULL;
                return;
            }
            *(void *)0x8007D0C4 = (void *) (*(void *)0x8007D0C4 + 0x18);
        }
    }
}
