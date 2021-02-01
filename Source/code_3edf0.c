void __osSpSetStatus(s32 arg0) {
    *(void *)0xA4040010 = arg0;
}

s32 __osSpGetStatus(void) {
    return *(void *)0xA4040010;
}

s32 bcopy(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_v0_3;
    s16 temp_v1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_5;
    s8 temp_v0_2;
    s8 temp_v0_4;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a1_10;
    void *temp_a1_11;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_7;
    void *temp_a1_8;
    void *temp_a1_9;
    s32 phi_a2;
    void *phi_a0;
    void *phi_a1;
    s32 phi_a2_2;
    void *phi_a0_2;
    void *phi_a1_2;
    s32 phi_a2_3;
    void *phi_a0_3;
    void *phi_a1_3;
    s32 phi_a2_4;
    void *phi_a0_4;
    void *phi_a1_4;
    void *phi_a0_5;
    s32 phi_a2_5;
    void *phi_a0_6;
    void *phi_a1_5;
    s32 phi_a2_6;
    void *phi_a0_7;
    void *phi_a1_6;
    s32 phi_a2_7;
    void *phi_a0_8;
    void *phi_a1_7;
    s32 phi_a2_8;
    void *phi_a0_9;
    void *phi_a1_8;
    void *phi_a0_10;
    void *phi_a1_9;

    if (arg2 == 0) {
loop_10:
        return arg1;
    }
    if (arg0 == arg1) {
loop_10:
        return arg1;
    }
    if (arg1 < arg0) {
block_5:
        phi_a2_8 = arg2;
        phi_a0_10 = (void *) arg0;
        phi_a1_8 = (void *) arg1;
        if (arg2 < 0x10) {
loop_7:
            if (phi_a2_8 != 0) {
                phi_a0_9 = phi_a0_10;
loop_9:
                temp_a0_4 = phi_a0_9 + 1;
                temp_a1_11 = phi_a1_8 + 1;
                temp_a1_11->unk-1 = (s8) *phi_a0_9;
                phi_a0_9 = temp_a0_4;
                phi_a1_8 = temp_a1_11;
                if (temp_a0_4 != (phi_a0_10 + phi_a2_8)) {
                    goto loop_9;
                }
            }
loop_10:
            return arg1;
        }
        temp_v0_5 = arg0 & 3;
        phi_a2_8 = arg2;
        phi_a0_10 = (void *) arg0;
        phi_a1_8 = (void *) arg1;
        if (temp_v0_5 != (arg1 & 3)) {
            goto loop_7;
        }
        phi_a2_5 = arg2;
        phi_a0_6 = (void *) arg0;
        phi_a1_5 = (void *) arg1;
        if (temp_v0_5 != 0) {
            if (temp_v0_5 != 1) {
                if (temp_v0_5 != 2) {
                    temp_a1_5 = arg1 + 1;
                    temp_a1_5->unk-1 = (s8) arg0->unk0;
                    phi_a2_5 = arg2 - 1;
                    phi_a0_6 = arg0 + 1;
                    phi_a1_5 = temp_a1_5;
                } else {
                    temp_a1_6 = arg1 + 2;
                    temp_a1_6->unk-2 = (s16) arg0->unk0;
                    phi_a2_5 = arg2 - 2;
                    phi_a0_6 = arg0 + 2;
                    phi_a1_5 = temp_a1_6;
                }
            } else {
                temp_a1_7 = arg1 + 3;
                temp_a1_7->unk-3 = (s8) arg0->unk0;
                temp_a1_7->unk-2 = (s16) arg0->unk1;
                phi_a2_5 = arg2 - 3;
                phi_a0_6 = arg0 + 3;
                phi_a1_5 = temp_a1_7;
            }
        }
loop_17:
        phi_a2_6 = phi_a2_5;
        phi_a0_7 = phi_a0_6;
        phi_a1_6 = phi_a1_5;
        if (phi_a2_5 >= 0x20) {
            temp_a1_8 = phi_a1_5 + 0x20;
            temp_a1_8->unk-20 = (s32) phi_a0_6->unk0;
            temp_a1_8->unk-1C = (s32) phi_a0_6->unk4;
            temp_a1_8->unk-18 = (s32) phi_a0_6->unk8;
            temp_a1_8->unk-14 = (s32) phi_a0_6->unkC;
            temp_a1_8->unk-10 = (s32) phi_a0_6->unk10;
            temp_a1_8->unk-C = (s32) phi_a0_6->unk14;
            temp_a1_8->unk-8 = (s32) phi_a0_6->unk18;
            temp_a1_8->unk-4 = (s32) phi_a0_6->unk1C;
            phi_a2_5 = phi_a2_5 - 0x20;
            phi_a0_6 = phi_a0_6 + 0x20;
            phi_a1_5 = temp_a1_8;
            goto loop_17;
        }
loop_19:
        phi_a2_7 = phi_a2_6;
        phi_a0_8 = phi_a0_7;
        phi_a1_7 = phi_a1_6;
        if (phi_a2_6 >= 0x10) {
            temp_a1_9 = phi_a1_6 + 0x10;
            temp_a1_9->unk-10 = (s32) phi_a0_7->unk0;
            temp_a1_9->unk-C = (s32) phi_a0_7->unk4;
            temp_a1_9->unk-8 = (s32) phi_a0_7->unk8;
            temp_a1_9->unk-4 = (s32) phi_a0_7->unkC;
            phi_a2_6 = phi_a2_6 - 0x10;
            phi_a0_7 = phi_a0_7 + 0x10;
            phi_a1_6 = temp_a1_9;
            goto loop_19;
        }
loop_21:
        phi_a2_8 = phi_a2_7;
        phi_a0_10 = phi_a0_8;
        phi_a1_8 = phi_a1_7;
        if (phi_a2_7 < 4) {
            goto loop_7;
        }
        temp_a1_10 = phi_a1_7 + 4;
        temp_a1_10->unk-4 = (s32) *phi_a0_8;
        phi_a2_7 = phi_a2_7 - 4;
        phi_a0_8 = phi_a0_8 + 4;
        phi_a1_7 = temp_a1_10;
        goto loop_21;
    }
    if (arg1 >= ERROR(unknown instruction: add $v0, $a0, $a2)) {
        goto block_5;
    }
    temp_a0 = ERROR(unknown instruction: add $a0, $a0, $a2);
    temp_a1 = ERROR(unknown instruction: add $a1, $a1, $a2);
    phi_a2_4 = arg2;
    phi_a0_5 = (void *) temp_a0;
    phi_a1_9 = (void *) temp_a1;
    if (arg2 >= 0x10) {
        temp_v0 = temp_a0 & 3;
        phi_a2_4 = arg2;
        phi_a0_5 = (void *) temp_a0;
        phi_a1_9 = (void *) temp_a1;
        if (temp_v0 == (temp_a1 & 3)) {
            phi_a2 = arg2;
            phi_a0 = (void *) temp_a0;
            phi_a1 = (void *) temp_a1;
            if (temp_v0 != 0) {
                if (temp_v0 != 3) {
                    if (temp_v0 != 2) {
                        temp_v0_2 = temp_a0->unk-1;
                        temp_a1->unk-1 = temp_v0_2;
                        phi_a2 = arg2 - 1;
                        phi_a0 = (void *) (temp_a0 - 1);
                        phi_a1 = (void *) (temp_a1 - 1);
                    } else {
                        temp_v0_3 = temp_a0->unk-2;
                        temp_a1 = temp_a1 - 2;
                        *temp_a1 = temp_v0_3;
                        phi_a2 = arg2 - 2;
                        phi_a0 = (void *) (temp_a0 - 2);
                        phi_a1 = (void *) temp_a1;
                    }
                } else {
                    temp_v0_4 = temp_a0->unk-1;
                    temp_v1 = temp_a0->unk-3;
                    temp_a1 = temp_a1 - 3;
                    temp_a1->unk2 = temp_v0_4;
                    temp_a1->unk0 = temp_v1;
                    phi_a2 = arg2 - 3;
                    phi_a0 = (void *) (temp_a0 - 3);
                    phi_a1 = (void *) temp_a1;
                }
            }
loop_35:
            phi_a2_2 = phi_a2;
            phi_a0_2 = phi_a0;
            phi_a1_2 = phi_a1;
            if (phi_a2 >= 0x20) {
                temp_a1_2 = phi_a1 - 0x20;
                temp_a1_2->unk1C = (s32) phi_a0->unk-4;
                temp_a1_2->unk18 = (s32) phi_a0->unk-8;
                temp_a1_2->unk14 = (s32) phi_a0->unk-C;
                temp_a1_2->unk10 = (s32) phi_a0->unk-10;
                temp_a1_2->unkC = (s32) phi_a0->unk-14;
                temp_a1_2->unk8 = (s32) phi_a0->unk-18;
                temp_a1_2->unk4 = (s32) phi_a0->unk-1C;
                temp_a1_2->unk0 = (s32) phi_a0->unk-20;
                phi_a2 = phi_a2 - 0x20;
                phi_a0 = phi_a0 - 0x20;
                phi_a1 = temp_a1_2;
                goto loop_35;
            }
loop_37:
            phi_a2_3 = phi_a2_2;
            phi_a0_3 = phi_a0_2;
            phi_a1_3 = phi_a1_2;
            if (phi_a2_2 >= 0x10) {
                temp_a1_3 = phi_a1_2 - 0x10;
                temp_a1_3->unkC = (s32) phi_a0_2->unk-4;
                temp_a1_3->unk8 = (s32) phi_a0_2->unk-8;
                temp_a1_3->unk4 = (s32) phi_a0_2->unk-C;
                temp_a1_3->unk0 = (s32) phi_a0_2->unk-10;
                phi_a2_2 = phi_a2_2 - 0x10;
                phi_a0_2 = phi_a0_2 - 0x10;
                phi_a1_2 = temp_a1_3;
                goto loop_37;
            }
loop_39:
            phi_a2_4 = phi_a2_3;
            phi_a0_5 = phi_a0_3;
            phi_a1_9 = phi_a1_3;
            if (phi_a2_3 < 4) {
                goto loop_25;
            }
            temp_a1_4 = phi_a1_3 - 4;
            *temp_a1_4 = (s32) phi_a0_3->unk-4;
            phi_a2_3 = phi_a2_3 - 4;
            phi_a0_3 = phi_a0_3 - 4;
            phi_a1_3 = temp_a1_4;
            goto loop_39;
        }
    }
loop_25:
    if (phi_a2_4 == 0) {
        goto loop_10;
    }
    temp_a0_2 = phi_a0_5 - 1;
    phi_a0_4 = temp_a0_2;
    phi_a1_4 = phi_a1_9 - 1;
loop_27:
    temp_a0_3 = phi_a0_4 - 1;
    *phi_a1_4 = (s8) *phi_a0_4;
    phi_a0_4 = temp_a0_3;
    phi_a1_4 = phi_a1_4 - 1;
    if (temp_a0_3 != (temp_a0_2 - phi_a2_4)) {
        goto loop_27;
    }
    return arg1;
}
