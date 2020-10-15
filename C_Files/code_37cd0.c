void func_800370D0(void *arg0) {
    s16 sp20;
    s32 sp1C;
    s32 temp_a0;
    void *temp_a3;

    temp_a3 = arg0;
    if (arg0->unk2C == 1) {
        temp_a0 = arg0->unk18;
        if (temp_a0 != 0) {
            arg0 = temp_a3;
            if (func_80038EDC(temp_a0, &sp1C, temp_a3) != 0) {
                sp20 = (u16)0;
                func_8003FE6C(arg0 + 0x48, &sp20, arg0->unk24 * sp1C, arg0);
            }
        }
    }
}

void *func_80037140(void *arg0) {
    void *temp_v0;

    temp_v0 = arg0->unk18;
    if (temp_v0 != 0) {
        arg0->unk24 = (s32) ((bitwise f32) arg0 * temp_v0->unk8);
        return temp_v0;
    }
    arg0->unk24 = 0x1E8;
    return temp_v0;
}

void func_80037174(void) {

}

void func_8003717C(void *arg1) {
    s32 temp_fp;
    s32 temp_s0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    void *temp_a0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s4;
    void *temp_v0;
    void *phi_s1;
    void *phi_s3;
    s32 phi_s0;
    void *phi_s3_2;
    void *phi_s1_2;
    void *phi_s0_2;
    void *phi_s3_3;

    if (arg1->unk8 == 0xFF) {
        temp_v0 = arg1 + 4;
        if (arg1->unk9 == 0x51) {
            temp_fp = saved_reg_s7->unk24;
            func_80037140((f32) (((temp_v0->unk7 << 0x10) | (temp_v0->unk8 << 8)) | temp_v0->unk9), saved_reg_s7);
            temp_s1 = saved_reg_s7->unk50;
            phi_s3_2 = NULL;
            if (temp_s1 != 0) {
                phi_s1 = temp_s1;
                phi_s3 = NULL;
                phi_s0 = 0;
loop_4:
                temp_s2 = phi_s1->unk0;
                temp_s0 = phi_s0 + phi_s1->unk8;
                phi_s3_3 = phi_s3;
                phi_s0 = temp_s0;
                if (0x15 == phi_s1->unkC) {
                    func_80036820(phi_s1);
                    if (phi_s3 != 0) {
                        func_80036850(phi_s1, phi_s3);
                        phi_s3_3 = phi_s3;
                    } else {
                        phi_s1->unk0 = NULL;
                        phi_s1->unk4 = 0;
                        phi_s3_3 = phi_s1;
                    }
                    phi_s0 = temp_s0;
                    if (temp_s2 != 0) {
                        temp_v0_2 = phi_s1->unk8;
                        temp_s2->unk8 = (s32) (temp_s2->unk8 + temp_v0_2);
                        phi_s0 = temp_s0 - temp_v0_2;
                    }
                    phi_s1->unk8 = temp_s0;
                }
                phi_s1 = temp_s2;
                phi_s3 = phi_s3_3;
                phi_s3_2 = phi_s3_3;
                if (temp_s2 != 0) {
                    goto loop_4;
                }
            }
            if (phi_s3_2 != 0) {
                temp_s4 = saved_reg_s7 + 0x48;
                phi_s1_2 = phi_s3_2;
loop_14:
                temp_s2_2 = phi_s1_2->unk0;
                phi_s1_2->unk8 = (s32) (saved_reg_s7->unk24 * ((s32) phi_s1_2->unk8 / temp_fp));
                phi_s0_2 = temp_s4 + 8;
                if (temp_s4 != -8) {
loop_15:
                    temp_a0 = *phi_s0_2;
                    if (temp_a0 == 0) {
                        func_80036850(phi_s1_2, phi_s0_2);
                    } else {
                        temp_v0_3 = phi_s1_2->unk8;
                        temp_v1 = temp_a0->unk8;
                        if (temp_v0_3 < temp_v1) {
                            temp_a0->unk8 = (s32) (temp_v1 - temp_v0_3);
                            func_80036850(phi_s1_2, phi_s0_2, temp_a0);
                        } else {
                            phi_s1_2->unk8 = (s32) (temp_v0_3 - temp_v1);
                            temp_s0_2 = *phi_s0_2;
                            phi_s0_2 = temp_s0_2;
                            if (temp_s0_2 != 0) {
                                goto loop_15;
                            }
                        }
                    }
                }
                func_80034160(func_80034160(1));
                phi_s1_2 = temp_s2_2;
                if (temp_s2_2 != 0) {
                    goto loop_14;
                }
            }
        }
    }
}

Failed to decompile function func_8003734C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_80037B74(void) {

}

Failed to decompile function func_80037B7C:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

void func_80038190(void *arg0, void *arg1) {
    s32 sp2C;
    s32 temp_a0;
    s32 temp_a2;
    void *temp_v0;
    void *phi_v1;
    s32 phi_a0;

    temp_a2 = arg1->unkC;
    arg0->unk20 = 0;
    arg0->unk18 = 0;
    arg0->unk30 = (u16)0xFF;
    arg0->unk24 = 0x1E8;
    arg0->unk28 = 0;
    arg0->unk2C = 0;
    arg0->unk32 = (u16)0x7FFF;
    arg0->unk5C = 0x3E80;
    arg0->unk1C = 0;
    arg0->unk14 = (s32) *(void *)0x80070990;
    arg0->unk70 = (s32) arg1->unk10;
    arg0->unk74 = (s32) arg1->unk14;
    arg0->unk38 = (u16)9;
    arg0->unk78 = (s32) arg1->unk18;
    arg0->unk34 = (u8) arg1->unk8;
    sp2C = temp_a2;
    arg0->unk60 = func_80036660(0, 0, temp_a2, arg1->unk8, 0x10);
    func_80043E14(arg0);
    temp_v0 = func_80036660(0, 0, temp_a2, arg1->unk0, 0x38);
    arg0->unk6C = NULL;
    if (arg1->unk0 > 0) {
        phi_v1 = temp_v0;
        phi_a0 = 0;
loop_2:
        temp_a0 = phi_a0 + 1;
        *phi_v1 = (void *) arg0->unk6C;
        arg0->unk6C = phi_v1;
        phi_v1 = phi_v1 + 0x38;
        phi_a0 = temp_a0;
        if (temp_a0 < arg1->unk0) {
            goto loop_2;
        }
    }
    arg0->unk64 = 0;
    arg0->unk68 = 0;
    func_8004001C(arg0 + 0x48, func_80036660(0, 0, sp2C, arg1->unk4, 0x1C), arg1->unk4);
    arg0->unk0 = 0;
    arg0->unk8 = 0x80037B7C;
    arg0->unk4 = arg0;
    func_80044010(*(void *)0x80070990, arg0);
}

void func_80038300(void) {

}

void func_80038308(void) {

}

void func_80038310(void *arg0, s32 arg1, s32 arg3) {
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_v0;
    u8 temp_a2;
    void *temp_t8;
    void *temp_t9;
    void *phi_v1;
    s32 phi_v0;

    if (arg0->unk3 == 0) {
        arg0->unk3 = (u8)1U;
        if ((s32) arg0->unkE > 0) {
            phi_v1 = arg0;
            phi_v0 = 0;
loop_3:
            temp_t9 = phi_v1->unk10 + arg1;
            phi_v1->unk10 = temp_t9;
            if (temp_t9->unkE == 0) {
                temp_t9->unkE = (u8)1U;
                temp_t9->unk0 = (s32) (temp_t9->unk0 + arg1);
                temp_t8 = temp_t9->unk8 + arg1;
                temp_t9->unk4 = (s32) (temp_t9->unk4 + arg1);
                temp_t9->unk8 = temp_t8;
                if (temp_t8->unk9 == 0) {
                    temp_a2 = temp_t8->unk8;
                    temp_t8->unk9 = (u8)1U;
                    temp_t8->unk0 = (s32) (temp_t8->unk0 + arg3);
                    if (temp_a2 == 0) {
                        temp_a2_2 = temp_t8->unkC;
                        temp_t8->unk10 = (s32) (temp_t8->unk10 + arg1);
                        if (temp_a2_2 != 0) {
                            temp_t8->unkC = (s32) (temp_a2_2 + arg1);
                        }
                    } else {
                        if (1 == temp_a2) {
                            temp_a2_3 = temp_t8->unkC;
                            if (temp_a2_3 != 0) {
                                temp_t8->unkC = (s32) (temp_a2_3 + arg1);
                            }
                        }
                    }
                }
            }
            temp_v0 = phi_v0 + 1;
            phi_v1 = phi_v1 + 4;
            phi_v0 = temp_v0;
            if (temp_v0 < (s32) arg0->unkE) {
                goto loop_3;
            }
        }
    }
}

void func_800383FC(void) {

}

void func_80038404(void *arg0, ? arg1) {
    s32 temp_s3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_t9;
    void *temp_v0;
    void *phi_s2;
    void *phi_t3;
    s32 phi_s3;

    if (arg0->unk0 == 0x4231) {
        phi_s2 = arg0;
        phi_s3 = 0;
        if ((s32) arg0->unk2 > 0) {
loop_2:
            temp_t9 = phi_s2->unk4 + arg0;
            phi_s2->unk4 = temp_t9;
            if (temp_t9 != 0) {
                if (temp_t9->unk2 == 0) {
                    temp_v0 = temp_t9->unk8;
                    temp_t9->unk2 = (u8)1U;
                    temp_a0 = temp_v0 + arg0;
                    if (temp_v0 != 0) {
                        temp_t9->unk8 = temp_a0;
                        func_80038310(temp_a0, arg0, arg1);
                    }
                    phi_t3 = ERROR(Read from unset register $t5);
                    if ((s32) *ERROR(Read from unset register $t5) > 0) {
loop_7:
                        temp_a0_2 = phi_t3->unkC + arg0;
                        phi_t3->unkC = temp_a0_2;
                        if (temp_a0_2 != 0) {
                            func_80038310(temp_a0_2, arg0, arg1);
                        }
                        phi_t3 = ERROR(Read from unset register $t3) + 4;
                        if ((ERROR(Read from unset register $t4) + 1) < (s32) *ERROR(Read from unset register $t5)) {
                            goto loop_7;
                        }
                    }
                }
            }
            temp_s3 = phi_s3 + 1;
            phi_s2 = phi_s2 + 4;
            phi_s3 = temp_s3;
            if (temp_s3 < (s32) arg0->unk2) {
                goto loop_2;
            }
        }
    }
}

s32 func_80038508(void *arg0, s32 arg1) {
    s32 temp_v0;
    void *temp_v1;
    void *phi_v1;
    s32 phi_v0;
    s32 phi_return;

    phi_v1 = arg0;
    phi_v0 = 0;
    phi_return = 0;
    if ((s32) arg0->unk2 > 0) {
loop_1:
        temp_v0 = phi_v0 + 1;
        temp_v1 = phi_v1 + 8;
        temp_v1->unk-4 = (s32) (phi_v1->unk4 + arg1);
        phi_v1 = temp_v1;
        phi_v0 = temp_v0;
        phi_return = temp_v0;
        if (temp_v0 < (s32) arg0->unk2) {
            goto loop_1;
        }
    }
    return phi_return;
}
