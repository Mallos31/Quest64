void func_19124(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    ? *temp_t0;
    void *temp_t6;
    void *phi_t6;
    ? *phi_t0;

    phi_t6 = (void *)0x8004CDFC;
    phi_t0 = &sp18;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t0 = phi_t0 + 0xC;
    temp_t0->unk-C = (s32) *phi_t6;
    temp_t0->unk-8 = (s32) temp_t6->unk-8;
    temp_t0->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t0 = temp_t0;
    if (temp_t6 != 0x8004CE2C) {
        goto loop_1;
    }
    if (arg1 != arg0->unk24) {
        (arg1->unk68 + arg2)->unk2 = (s8) (func_00022FD0(*(&sp18 + (arg2 * 4))) + 2);
        return;
    }
    (arg1->unk68 + arg2)->unk2 = (s8) (func_00022FD0(*(&sp18 + (arg2 * 4))) + 3);
}
