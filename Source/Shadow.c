void func_80011850(void) {
    *(void *)0x800862D0 = 0;
}

u32 func_80011860(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    u32 temp_v0;
    void *temp_v1;

    temp_v0 = *(void *)0x800862D0;
    if (temp_v0 < 0x40U) {
        *(void *)0x800862D0 = (u32) (temp_v0 + 1);
        temp_v1 = (temp_v0 * 0x1C) + 0x80085BD0;
        temp_v1->unk0 = arg0;
        temp_v1->unk4 = arg1;
        temp_v1->unk8 = arg2;
        temp_v1->unkC = arg3;
        temp_v1->unk10 = arg4;
        temp_v1->unk14 = arg5;
        temp_v1->unk18 = arg6;
    }
    return temp_v0;
}

void func_800118D4(s32 arg0) {
    f32 sp98;
    f32 sp94;
    f32 sp90;
    ? sp60;
    f32 temp_f0;
    s16 temp_a1;
    s32 temp_a2;
    s32 temp_s4;
    s32 temp_s4_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    void *phi_s0;
    s32 phi_s4;

    temp_s4 = *(void *)0x800862D0;
    if (temp_s4 != 0) {
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk0 = 0x6000000;
        temp_v1->unk4 = 0x1000270;
        temp_v0 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0 + 8);
        temp_v0->unk0 = 0xBC000008;
        temp_a1 = *(void *)0x8007B31A;
        temp_a2 = *(void *)0x8007B318 - temp_a1;
        temp_v0->unk4 = (s32) ((((0x1F400 / temp_a2) & 0xFFFF) << 0x10) | (((s32) ((-(s32) temp_a1 << 8) + 0x1F400) / temp_a2) & 0xFFFF));
    }
    if (temp_s4 != 0) {
        phi_s0 = (void *)0x80085BD0;
        phi_s4 = temp_s4;
loop_4:
        func_80023A08(&sp60, phi_s0->unkC, phi_s0->unk10, phi_s0->unk14);
        sp90 = phi_s0->unk0;
        sp94 = phi_s0->unk4;
        sp98 = phi_s0->unk8;
        temp_f0 = phi_s0->unk18;
        func_80023DF4(&sp60, temp_f0, temp_f0, temp_f0);
        func_80035200(&sp60, (arg0 + (*(void *)0x8007B2F8 << 6)) + 0xC0);
        temp_v0_2 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_2 + 8);
        temp_v0_2->unk0 = 0x1020040;
        temp_s4_2 = phi_s4 - 1;
        temp_v0_2->unk4 = (s32) (((*(void *)0x8007B2F8 << 6) + 0x2000000) + 0xC0);
        *(void *)0x8007B2F8 = (s32) (*(void *)0x8007B2F8 + 1);
        temp_v0_3 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_3 + 8);
        temp_v0_3->unk4 = 0x1000230;
        temp_v0_3->unk0 = 0x400103F;
        temp_v0_4 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v0_4 + 8);
        temp_v0_4->unk4 = 0x20604;
        temp_v0_4->unk0 = 0xB1000204;
        phi_s0 = phi_s0 + 0x1C;
        phi_s4 = temp_s4_2;
        if (temp_s4_2 != 0) {
            goto loop_4;
        }
    }
}
