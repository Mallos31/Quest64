Failed to decompile function func_8003EE60:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".

s32 func_8003F4D0(void *arg0, s32 arg1, void *arg2, s32 arg3) {
    u8 spD4;
    s32 spD0;
    s32 spCC;
    s32 spC8;
    s32 spC4;
    ? spA0;
    ? sp74;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s1_5;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s3_4;
    s32 temp_s3_5;
    s32 temp_s3_6;
    s32 temp_s3_7;
    s32 temp_s3_8;
    s32 temp_s3_9;
    s32 temp_t6;
    s32 temp_t6_2;
    s32 temp_t6_3;
    s32 temp_t7;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_a1_4;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s2_5;
    void *temp_s2_6;
    void *temp_s2_7;
    void *temp_s2_8;
    void *phi_a3;
    void *phi_s2;
    void *phi_s2_2;
    s32 phi_s3;
    u8 phi_s0;
    s32 phi_s0_2;
    void *phi_s2_3;
    void *phi_s2_4;
    u8 phi_a1;
    void *phi_s2_5;
    u8 phi_a1_2;
    void *phi_s2_6;
    u8 phi_a1_3;
    void *phi_s2_7;
    u8 phi_a1_4;
    void *phi_s2_8;
    void *phi_s2_9;
    void *phi_s2_10;
    u32 phi_s1;
    s32 phi_s0_3;
    s32 phi_s3_2;
    s32 phi_s3_3;
    u32 phi_s1_2;
    s32 phi_s0_4;
    s32 phi_s3_4;
    s32 phi_s3_5;
    u32 phi_s1_3;
    s32 phi_s0_5;
    s32 phi_s3_6;
    s32 phi_s3_7;
    u32 phi_s1_4;
    s32 phi_s0_6;
    s32 phi_s3_8;
    u32 phi_s1_5;
    s32 phi_s0_7;
    s32 phi_s3_9;
    s32 phi_s3_10;
    s32 phi_s3_11;
    s32 phi_s3_12;
    s32 phi_s3_13;
    s32 phi_s3_14;
    s32 phi_s3_15;
    s32 phi_s3_16;
    s32 phi_s3_17;
    s32 phi_s3_18;
    s32 phi_s3_19;

    spCC = 0;
    phi_a3 = arg2;
    phi_s3 = arg1;
loop_1:
    temp_v0 = *phi_a3;
    temp_s2 = phi_a3;
    phi_s2_2 = temp_s2;
    phi_s0 = temp_v0;
    if (temp_v0 != 0) {
        phi_s2 = temp_s2;
        phi_s2_2 = temp_s2;
        phi_s0 = temp_v0;
        if (0x25 != temp_v0) {
loop_3:
            temp_v0_2 = phi_s2->unk1;
            temp_s2_2 = phi_s2 + 1;
            phi_s2_2 = temp_s2_2;
            phi_s0 = temp_v0_2;
            if (temp_v0_2 != 0) {
                phi_s2 = temp_s2_2;
                phi_s2_2 = temp_s2_2;
                phi_s0 = temp_v0_2;
                if (0x25 != temp_v0_2) {
                    goto loop_3;
                }
            }
        }
    }
    temp_v0_3 = phi_s2_2 - phi_a3;
    phi_s3_11 = phi_s3;
    if (temp_v0_3 > 0) {
        temp_v0_4 = arg0(phi_s3, phi_a3, temp_v0_3, phi_a3);
        temp_s3 = temp_v0_4;
        if (temp_v0_4 == 0) {
            return spCC;
        }
        spCC = spCC + temp_v0_3;
        phi_s3_11 = temp_s3;
    }
    temp_s2_3 = phi_s2_2 + 1;
    if (phi_s0 != 0) {
        spD0 = 0;
        temp_v0_5 = func_8003FB74(0x80071F24, *temp_s2_3);
        phi_s0_2 = temp_v0_5;
        phi_s2_3 = temp_s2_3;
        phi_s2_4 = temp_s2_3;
        if (temp_v0_5 != 0) {
loop_12:
            temp_s2_4 = phi_s2_3 + 1;
            spD0 = spD0 | (((phi_s0_2 - 0x80071F24) * 4) + 0x80070000)->unk1F2C;
            temp_v0_6 = func_8003FB74(0x80071F24, *temp_s2_4);
            phi_s0_2 = temp_v0_6;
            phi_s2_3 = temp_s2_4;
            phi_s2_4 = temp_s2_4;
            if (temp_v0_6 != 0) {
                goto loop_12;
            }
        }
        if (0x2A == *phi_s2_4) {
            temp_t9 = (arg3 + 3) & -4;
            arg3 = temp_t9 + 4;
            temp_t8 = *temp_t9;
            temp_s2_5 = phi_s2_4 + 1;
            spC8 = temp_t8;
            if (temp_t8 < 0) {
                spC8 = -temp_t8;
                spD0 = spD0 | 4;
            }
            phi_a1_2 = *temp_s2_5;
            phi_s2_6 = temp_s2_5;
        } else {
            spC8 = 0;
            temp_a1 = *phi_s2_4;
            phi_a1_2 = temp_a1;
            phi_s2_6 = phi_s2_4;
            if ((s32) temp_a1 >= 0x30) {
                phi_a1 = temp_a1;
                phi_s2_5 = phi_s2_4;
                phi_a1_2 = temp_a1;
                phi_s2_6 = phi_s2_4;
                if ((s32) temp_a1 < 0x3A) {
loop_19:
                    if (spC8 < 0x3E7) {
                        spC8 = (phi_a1 + (spC8 * 0xA)) - 0x30;
                    }
                    temp_a1_2 = phi_s2_5->unk1;
                    temp_s2_6 = phi_s2_5 + 1;
                    phi_a1_2 = temp_a1_2;
                    phi_s2_6 = temp_s2_6;
                    if ((s32) temp_a1_2 >= 0x30) {
                        phi_a1 = temp_a1_2;
                        phi_s2_5 = temp_s2_6;
                        phi_a1_2 = temp_a1_2;
                        phi_s2_6 = temp_s2_6;
                        if ((s32) temp_a1_2 < 0x3A) {
                            goto loop_19;
                        }
                    }
                }
            }
        }
        if (phi_a1_2 != 0x2E) {
            spC4 = -1;
            phi_a1_4 = phi_s2_6->unk0;
            phi_s2_8 = phi_s2_6;
        } else {
            temp_s2_7 = phi_s2_6 + 1;
            if (0x2A == phi_s2_6->unk1) {
                temp_t8_2 = (arg3 + 3) & -4;
                arg3 = temp_t8_2 + 4;
                temp_s2_7 = temp_s2_7 + 1;
                spC4 = *temp_t8_2;
                phi_a1_4 = *temp_s2_7;
                phi_s2_8 = temp_s2_7;
            } else {
                spC4 = 0;
                temp_a1_3 = *temp_s2_7;
                phi_a1_4 = temp_a1_3;
                phi_s2_8 = temp_s2_7;
                if ((s32) temp_a1_3 >= 0x30) {
                    phi_a1_3 = temp_a1_3;
                    phi_s2_7 = temp_s2_7;
                    phi_a1_4 = temp_a1_3;
                    phi_s2_8 = temp_s2_7;
                    if ((s32) temp_a1_3 < 0x3A) {
loop_29:
                        if (spC4 < 0x3E7) {
                            spC4 = (phi_a1_3 + (spC4 * 0xA)) - 0x30;
                        }
                        temp_a1_4 = phi_s2_7->unk1;
                        temp_s2_8 = phi_s2_7 + 1;
                        phi_a1_4 = temp_a1_4;
                        phi_s2_8 = temp_s2_8;
                        if ((s32) temp_a1_4 >= 0x30) {
                            phi_a1_3 = temp_a1_4;
                            phi_s2_7 = temp_s2_8;
                            phi_a1_4 = temp_a1_4;
                            phi_s2_8 = temp_s2_8;
                            if ((s32) temp_a1_4 < 0x3A) {
                                goto loop_29;
                            }
                        }
                    }
                }
            }
        }
        if (func_8003FB74(0x80071F20, phi_a1_4) != 0) {
            spD4 = *phi_s2_8;
            phi_s2_9 = phi_s2_8 + 1;
        } else {
            spD4 = (u8)0U;
            phi_s2_9 = phi_s2_8;
        }
        phi_s2_10 = phi_s2_9;
        if (0x6C == spD4) {
            phi_s2_10 = phi_s2_9;
            if (0x6C == *phi_s2_9) {
                spD4 = (u8)0x4CU;
                phi_s2_10 = phi_s2_9 + 1;
            }
        }
        func_8003EE60(*phi_s2_10, &arg3, &sp74);
        temp_t9_2 = (((((spC8 - spAC) - spB0) - spB4) - spB8) - spBC) - spC0;
        spC8 = temp_t9_2;
        temp_t6 = 0 < temp_t9_2;
        phi_s3_3 = phi_s3_11;
        if ((spD0 & 4) == 0) {
            phi_s3_3 = phi_s3_11;
            if (temp_t6 != 0) {
                phi_s1 = (u32) temp_t9_2;
                phi_s3_2 = phi_s3_11;
                phi_s3_3 = phi_s3_11;
                if (temp_t6 != 0) {
loop_42:
                    phi_s0_3 = (s32) phi_s1;
                    if (phi_s1 >= 0x21U) {
                        phi_s0_3 = 0x20;
                    }
                    phi_s3_10 = phi_s3_2;
                    if (phi_s0_3 > 0) {
                        temp_v0_7 = arg0(phi_s3_2, 0x80070AA0, phi_s0_3);
                        temp_s3_2 = temp_v0_7;
                        if (temp_v0_7 == 0) {
                            return spCC;
                        }
                        spCC = spCC + phi_s0_3;
                        phi_s3_10 = temp_s3_2;
                    }
                    temp_s1 = phi_s1 - phi_s0_3;
                    phi_s1 = (u32) temp_s1;
                    phi_s3_2 = phi_s3_10;
                    phi_s3_3 = phi_s3_10;
                    if (temp_s1 > 0) {
                        goto loop_42;
                    }
                }
            }
        }
        phi_s3_13 = phi_s3_3;
        if (spAC > 0) {
            temp_v0_8 = arg0(phi_s3_3, &sp74, spAC);
            temp_s3_3 = temp_v0_8;
            if (temp_v0_8 == 0) {
                return spCC;
            }
            spCC = spCC + spAC;
            phi_s3_13 = temp_s3_3;
        }
        temp_t6_2 = 0 < spB0;
        phi_s3_5 = phi_s3_13;
        if (temp_t6_2 != 0) {
            phi_s1_2 = (u32) spB0;
            phi_s3_4 = phi_s3_13;
            phi_s3_5 = phi_s3_13;
            if (temp_t6_2 != 0) {
loop_55:
                phi_s0_4 = (s32) phi_s1_2;
                if (phi_s1_2 >= 0x21U) {
                    phi_s0_4 = 0x20;
                }
                phi_s3_12 = phi_s3_4;
                if (phi_s0_4 > 0) {
                    temp_v0_9 = arg0(phi_s3_4, 0x80070AC4, phi_s0_4);
                    temp_s3_4 = temp_v0_9;
                    if (temp_v0_9 == 0) {
                        return spCC;
                    }
                    spCC = spCC + phi_s0_4;
                    phi_s3_12 = temp_s3_4;
                }
                temp_s1_2 = phi_s1_2 - phi_s0_4;
                phi_s1_2 = (u32) temp_s1_2;
                phi_s3_4 = phi_s3_12;
                phi_s3_5 = phi_s3_12;
                if (temp_s1_2 > 0) {
                    goto loop_55;
                }
            }
        }
        phi_s3_15 = phi_s3_5;
        if (spB4 > 0) {
            temp_v0_10 = arg0(phi_s3_5, spA8, spB4);
            temp_s3_5 = temp_v0_10;
            if (temp_v0_10 == 0) {
                return spCC;
            }
            spCC = spCC + spB4;
            phi_s3_15 = temp_s3_5;
        }
        temp_t6_3 = 0 < spB8;
        phi_s3_7 = phi_s3_15;
        if (temp_t6_3 != 0) {
            phi_s1_3 = (u32) spB8;
            phi_s3_6 = phi_s3_15;
            phi_s3_7 = phi_s3_15;
            if (temp_t6_3 != 0) {
loop_68:
                phi_s0_5 = (s32) phi_s1_3;
                if (phi_s1_3 >= 0x21U) {
                    phi_s0_5 = 0x20;
                }
                phi_s3_14 = phi_s3_6;
                if (phi_s0_5 > 0) {
                    temp_v0_11 = arg0(phi_s3_6, 0x80070AC4, phi_s0_5);
                    temp_s3_6 = temp_v0_11;
                    if (temp_v0_11 == 0) {
                        return spCC;
                    }
                    spCC = spCC + phi_s0_5;
                    phi_s3_14 = temp_s3_6;
                }
                temp_s1_3 = phi_s1_3 - phi_s0_5;
                phi_s1_3 = (u32) temp_s1_3;
                phi_s3_6 = phi_s3_14;
                phi_s3_7 = phi_s3_14;
                if (temp_s1_3 > 0) {
                    goto loop_68;
                }
            }
        }
        phi_s3_17 = phi_s3_7;
        if (spBC > 0) {
            temp_v0_12 = arg0(phi_s3_7, spA8 + spB4, spBC);
            temp_s3_7 = temp_v0_12;
            if (temp_v0_12 == 0) {
                return spCC;
            }
            spCC = spCC + spBC;
            phi_s3_17 = temp_s3_7;
        }
        temp_t8_3 = 0 < spC0;
        phi_s3_19 = phi_s3_17;
        if (temp_t8_3 != 0) {
            phi_s1_4 = (u32) spC0;
            phi_s3_8 = phi_s3_17;
            phi_s3_19 = phi_s3_17;
            if (temp_t8_3 != 0) {
loop_81:
                phi_s0_6 = (s32) phi_s1_4;
                if (phi_s1_4 >= 0x21U) {
                    phi_s0_6 = 0x20;
                }
                phi_s3_16 = phi_s3_8;
                if (phi_s0_6 > 0) {
                    temp_v0_13 = arg0(phi_s3_8, 0x80070AC4, phi_s0_6);
                    temp_s3_8 = temp_v0_13;
                    if (temp_v0_13 == 0) {
                        return spCC;
                    }
                    spCC = spCC + phi_s0_6;
                    phi_s3_16 = temp_s3_8;
                }
                temp_s1_4 = phi_s1_4 - phi_s0_6;
                phi_s1_4 = (u32) temp_s1_4;
                phi_s3_8 = phi_s3_16;
                phi_s3_19 = phi_s3_16;
                if (temp_s1_4 > 0) {
                    goto loop_81;
                }
            }
        }
        temp_t7 = 0 < spC8;
        phi_s3 = phi_s3_19;
        if ((spD0 & 4) != 0) {
            phi_s3 = phi_s3_19;
            if (temp_t7 != 0) {
                phi_s1_5 = (u32) spC8;
                phi_s3_9 = phi_s3_19;
                phi_s3 = phi_s3_19;
                if (temp_t7 != 0) {
loop_91:
                    phi_s0_7 = (s32) phi_s1_5;
                    if (phi_s1_5 >= 0x21U) {
                        phi_s0_7 = 0x20;
                    }
                    phi_s3_18 = phi_s3_9;
                    if (phi_s0_7 > 0) {
                        temp_v0_14 = arg0(phi_s3_9, 0x80070AA0, phi_s0_7);
                        temp_s3_9 = temp_v0_14;
                        if (temp_v0_14 == 0) {
                            return spCC;
                        }
                        spCC = spCC + phi_s0_7;
                        phi_s3_18 = temp_s3_9;
                    }
                    temp_s1_5 = phi_s1_5 - phi_s0_7;
                    phi_s1_5 = (u32) temp_s1_5;
                    phi_s3_9 = phi_s3_18;
                    phi_s3 = phi_s3_18;
                    if (temp_s1_5 > 0) {
                        goto loop_91;
                    }
                }
            }
        }
        phi_a3 = phi_s2_10 + 1;
        goto loop_1;
    }
    return spCC;
}
