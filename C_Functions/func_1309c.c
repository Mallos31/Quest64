void func_1309c(void) {
    f32 sp50;
    f32 sp4C;
    f32 *temp_a1;
    f64 temp_f20;
    s16 temp_v0;
    s32 temp_s1;
    s32 temp_s1_2;
    void *phi_s0;
    s32 phi_s1;

    temp_s1 = *(void *)0x80086A00;
    if (temp_s1 != 0) {
        temp_f20 = *(void *)0x800712F0;
        phi_s0 = (void *)0x80086A08;
        phi_s1 = temp_s1;
loop_2:
        if (phi_s0->unk10 == 0) {
            phi_s0->unk12 = (s16) (phi_s0->unk12 + 1);
            temp_v0 = phi_s0->unk12;
            if ((s32) temp_v0 >= 0) {
                temp_a1 = &sp4C;
                if ((temp_v0 & 1) != 0) {
                    sp4C = 0.0f;
                    sp50 = 1.0f;
                    func_000232F4(phi_s0->unkC, temp_a1);
                    *(void *)0x8004CBC0 = (f32) (phi_s0->unk0 + sp4C);
                    *(void *)0x8004CBC4 = (f32) phi_s0->unk4;
                    *(void *)0x8004CBC8 = (f32) (phi_s0->unk8 + sp50);
                    *(void *)0x8004CBB8 = (s32) ((((s32) phi_s0->unk12 >> 1) << 8) + 0x8004C7A8);
                    func_0001B108(0x8004CBA8);
                    if ((s32) phi_s0->unk12 >= 6) {
                        phi_s0->unk12 = (s16) (func_00022FD0(0x1E) - 0x3C);
                        phi_s0->unkC = (f32) ((f64) phi_s0->unkC + temp_f20);
                    }
                }
            }
        }
        temp_s1_2 = phi_s1 - 1;
        phi_s0 = phi_s0 + 0x18;
        phi_s1 = temp_s1_2;
        if (temp_s1_2 != 0) {
            goto loop_2;
        }
    }
}
