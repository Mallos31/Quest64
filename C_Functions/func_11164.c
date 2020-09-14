void *func_11164(s32 arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    void *temp_a0;
    void *temp_t3;
    void *temp_t4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_a1;

    temp_v1 = arg1->unk0;
    if (arg1->unk4 == 1) {
        (void *)0x80085B68->unk0 = (s32) temp_v1->unk4;
        temp_v0 = temp_v1 + 0x28;
        (void *)0x80085B68->unk4 = (s32) temp_v1->unk8;
        (void *)0x80085B68->unk8 = (s32) temp_v1->unkC;
        (void *)0x80085B8C->unk-18 = (s32) temp_v1->unk10;
        (void *)0x80085B8C->unk-14 = (s32) temp_v1->unk14;
        (void *)0x80085B8C->unk-10 = (s32) temp_v1->unk18;
        (void *)0x80085B8C->unk-C = (s32) temp_v1->unk1C;
        (void *)0x80085B8C->unk-8 = (s32) temp_v1->unk20;
        (void *)0x80085B8C->unk-4 = (s32) temp_v1->unk24;
        (void *)0x80085B8C->unk0 = (s32) temp_v0->unk0;
        (void *)0x80085B8C->unk4 = (s32) temp_v0->unk4;
        (void *)0x80085B8C->unk8 = (s32) temp_v0->unk8;
        (void *)0x80085BC8->unk0 = (s32) temp_v1->unk34;
        (void *)0x80085BC8->unk4 = (s32) temp_v1->unk38;
        return temp_v0;
    }
    temp_a1 = temp_v1->unk0;
    phi_v1 = temp_v1;
    phi_v1_2 = temp_v1;
    phi_a1 = temp_a1;
    if (arg0 >= temp_a1) {
loop_3:
        temp_a1_2 = phi_v1->unk3C;
        temp_v1_2 = phi_v1 + 0x3C;
        phi_v1 = temp_v1_2;
        phi_v1_2 = temp_v1_2;
        phi_a1 = temp_a1_2;
        if (arg0 >= temp_a1_2) {
            goto loop_3;
        }
    }
    temp_a2 = phi_v1_2->unk-3C;
    temp_t3 = phi_v1_2 - 0x38;
    temp_t0 = phi_a1 - temp_a2;
    temp_t1 = arg0 - temp_a2;
    temp_t2 = temp_t0 - temp_t1;
    temp_a0 = phi_v1_2 + 4;
    temp_v0_3 = temp_t3 + 0x24;
    temp_t4 = temp_a0 + 0x24;
    (void *)0x80085B68->unk0 = (s32) ((s32) ((temp_t3->unk0 * temp_t2) + (temp_a0->unk0 * temp_t1)) / temp_t0);
    *(void *)0x80085B6C = (s32) ((s32) ((temp_t3->unk4 * temp_t2) + (temp_a0->unk4 * temp_t1)) / temp_t0);
    *(void *)0x80085B70 = (s32) ((s32) ((temp_t3->unk8 * temp_t2) + (temp_a0->unk8 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-18 = (s32) ((s32) ((temp_v0_3->unk-18 * temp_t2) + (temp_t4->unk-18 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-14 = (s32) ((s32) ((temp_v0_3->unk-14 * temp_t2) + (temp_t4->unk-14 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-10 = (s32) ((s32) ((temp_v0_3->unk-10 * temp_t2) + (temp_t4->unk-10 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-C = (s32) ((s32) ((temp_v0_3->unk-C * temp_t2) + (temp_t4->unk-C * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-8 = (s32) ((s32) ((temp_v0_3->unk-8 * temp_t2) + (temp_t4->unk-8 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk-4 = (s32) ((s32) ((temp_v0_3->unk-4 * temp_t2) + (temp_t4->unk-4 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk0 = (s32) ((s32) ((temp_v0_3->unk0 * temp_t2) + (temp_t4->unk0 * temp_t1)) / temp_t0);
    (void *)0x80085B8C->unk4 = (s32) ((s32) ((temp_v0_3->unk4 * temp_t2) + (temp_t4->unk4 * temp_t1)) / temp_t0);
    temp_v0_2 = phi_v1_2 - 0x3C;
    (void *)0x80085B8C->unk8 = (s32) ((s32) ((temp_v0_3->unk8 * temp_t2) + (temp_t4->unk8 * temp_t1)) / temp_t0);
    (void *)0x80085BC8->unk0 = (s32) ((s32) ((temp_v0_2->unk34 * temp_t2) + (phi_v1_2->unk34 * temp_t1)) / temp_t0);
    *(void *)0x80085BCC = (s32) ((s32) ((temp_v0_2->unk38 * temp_t2) + (phi_v1_2->unk38 * temp_t1)) / temp_t0);
    return temp_v0_2;
}
