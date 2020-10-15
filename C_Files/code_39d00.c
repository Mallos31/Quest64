void func_80039100(void) {
    void *temp_s0;
    void *temp_s1;
    void *phi_s0;

    temp_s0 = saved_reg_s2->unk8;
    phi_s0 = temp_s0;
    if (temp_s0 != 0) {
loop_1:
        temp_s1 = phi_s0->unk0;
        if (saved_reg_s3 == phi_s0->unk10) {
            if (temp_s1 != 0) {
                temp_s1->unk8 = (s32) (temp_s1->unk8 + phi_s0->unk8);
            }
            func_80036820(phi_s0);
            func_80036850(phi_s0, saved_reg_s2);
        }
        phi_s0 = temp_s1;
        if (temp_s1 != 0) {
            goto loop_1;
        }
    }
    func_80034160(func_80034160(1));
}

void func_8003917C(void) {

}

void func_80039184(void) {

}

Failed to decompile function func_8003918C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_800396D4(void *arg0, void *arg1) {
    s16 sp34;
    void *sp28;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t4;
    u32 temp_v1;
    void *temp_a0;
    void *temp_v0;
    void *phi_a0;
    u32 phi_v1;

    arg0->unk3C = -1;
    arg0->unk48 = 0x3E80;
    arg0->unk44 = (s32) arg1->unk0;
    temp_a2 = arg1->unk8;
    arg1 = arg1;
    temp_v0 = func_80036660(0, 0, temp_a2, 1, arg1->unk0 * 0x30);
    arg0->unk40 = temp_v0;
    phi_a0 = temp_v0;
    phi_v1 = 0U;
    if (arg1->unk0 != 0) {
loop_1:
        phi_a0->unk1C = 0;
        temp_v1 = phi_v1 + 1;
        phi_a0 = phi_a0 + 0x30;
        phi_v1 = temp_v1;
        if (temp_v1 < (u32) arg1->unk0) {
            goto loop_1;
        }
    }
    temp_t4 = arg1->unk4;
    temp_a2_2 = arg1->unk8;
    arg1 = arg1;
    temp_a0 = arg0 + 0x14;
    temp_a1 = func_80036660(0, 0, temp_a2_2, 1, temp_t4 * 0x1C);
    sp28 = temp_a0;
    func_8004001C(temp_a0, temp_a1, arg1->unk4);
    temp_a0_2 = *(void *)0x80070990;
    arg0->unk0 = 0;
    arg0->unk8 = 0x8003918C;
    arg0->unk4 = arg0;
    arg0->unk38 = temp_a0_2;
    func_80044010(temp_a0_2, arg0);
    sp34 = (u16)5;
    func_8003FE6C(temp_a0, &sp34, arg0->unk48);
    arg0->unk4C = func_8003FF90(temp_a0, arg0 + 0x28);
}
