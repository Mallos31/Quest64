s32 func_800366C0(s32 arg0) {
    s32 temp_t8;
    u32 temp_a1;
    s32 phi_a2;

    temp_a1 = (u32) (((f32) (u32) *(void *)0x8006F408 / (f32) arg0) + 0.5f);
    if (temp_a1 < 0x84U) {
        return -1;
    }
    temp_t8 = (temp_a1 / 0x42U) & 0xFF;
    phi_a2 = temp_t8;
    if (temp_t8 >= 0x11) {
        phi_a2 = 0x10;
    }
    *(void *)0xA4500010 = (s32) (temp_a1 - 1);
    *(void *)0xA4500014 = (s32) (phi_a2 - 1);
    *(void *)0xA4500008 = 1;
    return (s32) *(void *)0x8006F408 / (s32) temp_a1;
}

void *func_80036820(void *arg0) {
    void *temp_v0;
    void *temp_v0_2;

    temp_v0_2 = arg0->unk0;
    if (temp_v0_2 != 0) {
        temp_v0_2->unk4 = (void *) arg0->unk4;
    }
    temp_v0 = arg0->unk4;
    if (temp_v0 != 0) {
        *temp_v0 = (void *) arg0->unk0;
    }
    return temp_v0;
}

void *func_80036850(void *arg0, void *arg1) {
    void *temp_v0;

    arg0->unk4 = arg1;
    arg0->unk0 = (void *) *arg1;
    temp_v0 = *arg1;
    if (temp_v0 != 0) {
        temp_v0->unk4 = arg0;
    }
    *arg1 = arg0;
    return temp_v0;
}

void func_80036874(void) {
    if (*(void *)0x80070990 != 0) {
        func_8003FD40();
        *(void *)0x80070990 = 0;
    }
}

void *func_800368AC(s32 arg0) {
    void *phi_return;

    phi_return = (void *)0x80070990;
    if (*(void *)0x80070990 == 0) {
        *(void *)0x80070990 = arg0;
        phi_return = func_80036D00();
    }
    return phi_return;
}

void func_800368E0(s32 arg0, s16 arg1) {
    s16 sp1C;
    s16 sp18;

    sp18 = (u16)0xA;
    sp1C = arg1;
    func_8003FE6C(arg0 + 0x48, &sp18, 0);
}
