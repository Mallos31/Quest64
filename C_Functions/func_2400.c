void func_2400(void) {
    void *sp5C;
    s32 sp58;
    s32 temp_a0;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t4;
    s32 temp_t5;
    s32 temp_t5_2;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_9;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_8;
    u32 temp_t3;
    u32 temp_v1_7;
    u32 temp_v1_8;
    void *temp_v0_6;
    void *temp_v0_7;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_v1_5;
    s32 phi_v0;
    s32 phi_v1_6;

    *(void *)0x8007B348 = 0;
    *(void *)0x8007B2EC = 0;
    temp_v1 = *(void *)0x8007B2E4;
    sp5C = NULL;
    phi_v1 = temp_v1;
    if ((temp_v1 & 0x40) != 0) {
        if ((temp_v1 & 0x800) != 0) {
            *(void *)0x80084EE4 = (s32) *(void *)0x8007BA60;
            *(void *)0x80084EE8 = (s32) *(void *)0x8007BA62;
            func_00002EA0();
        }
        func_0002E5E0(0);
        *(void *)0x800905C0 = 0;
        func_0000BD10();
        func_00011B70();
        func_00012220();
        func_00002918();
        func_00007A50();
        func_00008BB0();
        func_0000B530();
        func_00012780();
        func_00010150();
        *(void *)0x8007B340 = func_00011100();
        *(void *)0x8007B33C = func_00011100();
        temp_v0 = func_00011100();
        temp_t1 = temp_v0 * 0x30;
        *(void *)0x8007BC08 = temp_v0;
        (temp_t1 + 0x80080000)->unk59E8 = 2;
        func_0001C560((void *)0x8007BC08);
        func_00014840();
        func_000185F0();
        func_0001B0D0();
        func_000228E0();
        func_0001E1F0();
        temp_v1_2 = *(void *)0x8007B2E4 & -0x841;
        *(void *)0x8007B2E4 = temp_v1_2;
        phi_v1 = temp_v1_2;
    }
    phi_v1_2 = phi_v1;
    if ((phi_v1 & 0x400) != 0) {
        func_0001D8B0(0x8007BACC, 0, 1, 0, 1, 1);
        phi_v1_2 = *(void *)0x8007B2E4;
    }
    phi_v1_3 = phi_v1_2;
    if ((phi_v1_2 & 0x20) != 0) {
        temp_t8 = phi_v1_2 & -0x21;
        *(void *)0x8007B2E4 = temp_t8;
        temp_v0_2 = *(void *)0x8007B2F0;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 != 1) {
                if (temp_v0_2 != 2) {
                    if (temp_v0_2 != 3) {
                        phi_v1_3 = temp_t8;
                    } else {
                        func_00022B08(0x20, 4, 0x8004D714);
block_16:
                        phi_v1_3 = *(void *)0x8007B2E4;
                    }
                } else {
                    func_00022B08(0x20, 4, 0x8004D674);
                    goto block_16;
                }
            } else {
                func_00022B08(0x10, 4, 0x8004D5AC);
                goto block_16;
            }
        } else {
            func_00022B08(0x10, 4, 0x8004D56C);
            goto block_16;
        }
    }
    phi_v1_4 = phi_v1_3;
    if ((phi_v1_3 & 0x100) != 0) {
        func_0002684C(*(void *)0x80084EE4, *(void *)0x80084EE8, 0);
        temp_v1_3 = *(void *)0x8007B2E4 & -0x101;
        *(void *)0x8007B2E4 = temp_v1_3;
        phi_v1_4 = temp_v1_3;
    }
    temp_t2 = phi_v1_4 & -0x481;
    *(void *)0x8007B2E4 = temp_t2;
    if (*(void *)0x8007B2E8 == 4) {
        *(void *)0x8007B2E4 = (s32) (temp_t2 | 0x4080);
        *(void *)0x8007B2EC = 0x31;
        *(void *)0x8007B2F0 = (u16)2U;
        *(void *)0x8007B2F2 = (u16)0x2FU;
    } else {
        *(void *)0x8007B2F0 = (u16)0U;
        *(void *)0x8007B2F2 = (u16)0x12U;
    }
    *(void *)0x8007B2E8 = (u16)0U;
    if (1 == *(void *)0x8007B2E0) {
loop_24:
        func_000314C0(*(void *)0x80092870);
        *(void *)0x8007B2F8 = 0;
        *(void *)0x80087200 = 0;
        func_00011850();
        if ((*(void *)0x80084F10 & 1) != 0) {
            func_0001C5F4();
        }
        temp_v0_3 = *(void *)0x8008C592;
        if ((temp_v0_3 & 1) != 0) {
            if ((temp_v0_3 & 0x200) != 0) {
                func_0001CACC();
            } else {
                func_0001CFE8();
                func_00008C20();
            }
        }
        func_00002F60();
        func_00007B64();
        func_000156D0();
        func_000102D0();
        func_0000C42C();
        func_0000DC4C();
        func_000011DC((*(void *)0x8007B2F4 * 0xD150) + 0x80301000);
        temp_v1_4 = *(void *)0x8007B2E4;
        sp58 = (*(void *)0x8007B2F4 * 0xD150) + 0x80301000;
        if ((temp_v1_4 & 0x87) == 0) {
            if (((void *)0x8007BAB8->unk74 & 1) == 0) {
                if (func_0000FDE0((void *)0x8007BAB8->unk14, (void *)0x8007BAB8->unk1C, (void *)0x8007BAB8->unk24) != 0) {
                    *(void *)0x8007B2E4 = (s32) (*(void *)0x8007B2E4 | 0x80);
                    func_0001459C();
                    func_000060D4();
                    *(void *)0x8007B2F0 = (u16)0U;
                } else {
block_34:
                    temp_v1_5 = *(void *)0x8007B2E4;
                    if ((temp_v1_5 & 0x1000) == 0) {
                        if (((void *)0x8007BAB8->unk74 & 1) == 0) {
                            if ((*(void *)0x80092876 & 0x1000) != 0) {
                                if ((*(void *)0x8008C592 & 1) == 0) {
                                    if ((*(void *)0x80092874 & 0x2000) == 0) {
                                        if ((temp_v1_5 & 1) == 0) {
                                            *(void *)0x8007B2E0 = (u16)2U;
                                            func_000268D4(0, (s32) (1 << 0x18) >> 0x18, 0xFF);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                goto block_34;
            }
        } else {
            if ((temp_v1_4 & 0x80) != 0) {
                if ((temp_v1_4 & 2) == 0) {
                    temp_v0_4 = *(void *)0x8007B2EC - 1;
                    *(void *)0x8007B2EC = temp_v0_4;
                    if (temp_v0_4 == 0) {
                        if ((temp_v1_4 & 0x4000) != 0) {
                            temp_t5 = temp_v1_4 & -0x4001;
                            *(void *)0x8007B2E0 = (u16)5U;
                            *(void *)0x8007B2E4 = temp_t5;
                            phi_v1_5 = temp_t5;
                        } else {
                            *(void *)0x8007B2E0 = (u16)0U;
                            phi_v1_5 = temp_v1_4;
                        }
                        temp_t6 = phi_v1_5 | 0x20;
                        temp_v0_5 = temp_t6 & 0x400;
                        *(void *)0x8007B2E4 = temp_t6;
                        phi_v0 = temp_v0_5;
                        phi_v1_6 = temp_t6;
                        if (temp_v0_5 == 0) {
                            temp_v1_6 = temp_t6 | 0x40;
                            *(void *)0x8007B2E4 = temp_v1_6;
                            phi_v0 = temp_v1_6 & 0x400;
                            phi_v1_6 = temp_v1_6;
                        }
                        *(void *)0x80084EEC = (s32) (void *)0x80085368->unk0;
                        *(void *)0x80084EF0 = (s32) (void *)0x80085368->unk4;
                        if (phi_v0 != 0) {
                            temp_v0_6 = (void *)0x8007BAB8->unk10;
                            temp_v0_6->unk4 = (u16) temp_v0_6->unk6;
                            temp_v0_7 = (void *)0x8007BAB8->unk10;
                            temp_v0_7->unk8 = (u16) temp_v0_7->unkA;
                            temp_a0 = *(void *)0x800859D0 + 0x2328;
                            *(void *)0x800859D0 = temp_a0;
                            func_00010510(temp_a0);
                            *(void *)0x8007BA60 = (u16) *(void *)0x80084EE4;
                            *(void *)0x8007BA62 = (u16) *(void *)0x80084EE8;
                            *(void *)0x8007BA64 = (s16) *(void *)0x80085370;
                            *(void *)0x8007B2F0 = (u16)2U;
                            phi_v1_6 = *(void *)0x8007B2E4;
                        }
                        *(void *)0x8007B2E4 = (s32) (phi_v1_6 | 0x100);
                        func_00026488();
                    } else {
                        if (temp_v0_4 == *(void *)0x8007B2F2) {
                            temp_v0_8 = *(void *)0x8007B2F0;
                            if (temp_v0_8 != 0) {
                                if (temp_v0_8 != 1) {
                                    if (temp_v0_8 != 2) {
                                        if (temp_v0_8 != 3) {

                                        } else {
                                            func_00022B08(0x1F, 2, 0x8004D698);
                                        }
                                    } else {
                                        func_00022B08(0x1F, 2, 0x8004D5F8);
                                    }
                                } else {
                                    func_00022B08(0xF, 2, 0x8004D570);
                                }
                            } else {
                                func_00022B08(0xF, 2, 0x8004D530);
                            }
                        }
                    }
                }
            }
        }
        func_00026658();
        temp_ret = func_00034ED0();
        temp_v0_9 = temp_ret;
        temp_v1_7 = (u32) (u64) temp_ret;
        (void *)0x8007BA28->unk0 = temp_v0_9;
        (void *)0x8007BA28->unk4 = temp_v1_7;
        temp_t3 = *(void *)0x8007BA24;
        temp_t4 = (temp_v0_9 - *(void *)0x8007BA20) - (temp_v1_7 < temp_t3);
        temp_t5_2 = temp_v1_7 - temp_t3;
        (void *)0x8007BA30->unk4 = temp_t5_2;
        (void *)0x8007BA30->unk0 = temp_t4;
        *(void *)0x8007BA38 = temp_t4;
        *(void *)0x8007BA3C = temp_t5_2;
        if (*(void *)0x8008C640 != -1) {
            if (func_0002543C(0, (void *)0x8007BA30) == 0) {
                func_000252D8(0, *(void *)0x8008C640);
                func_00025364(0);
                *(void *)0x8008C640 = -1;
            }
        }
        temp_v0_10 = *(void *)0x8007B348;
        if (temp_v0_10 == 0) {
            *(void *)0x8007B348 = (s32) (temp_v0_10 + 1);
loop_67:
            func_00034020(0x8007B9E8, &sp5C, 1);
            if (1 != *sp5C) {
                goto loop_67;
            }
        } else {
loop_69:
            func_00034020(0x8007B9E8, &sp5C, 1);
            if (2 != *sp5C) {
                goto loop_69;
            }
            if ((s32) *(void *)0x8007B2D0 < 2) {
loop_71:
                func_00034020(0x8007B9E8, &sp5C, 1);
                if ((s32) *(void *)0x8007B2D0 < 2) {
                    goto loop_71;
                }
            }
        }
        func_00034200(*(void *)0x8007B9D8, sp58, 1);
        *(void *)0x8007B2D0 = (u16)0U;
        *(void *)0x8007B2F4 = (s32) (*(void *)0x8007B2F4 ^ 1);
        temp_ret_2 = func_00034ED0();
        temp_v1_8 = (u32) (u64) temp_ret_2;
        *(void *)0x8007BA20 = temp_ret_2;
        *(void *)0x8007BA24 = temp_v1_8;
        if (1 == *(void *)0x8007B2E0) {
            goto loop_24;
        }
    }
    if ((*(void *)0x8007B2E4 & 0x200) != 0) {
        func_000253F0(0);
    }
loop_75:
    func_00034020(0x8007B9E8, &sp5C, 1);
    if (2 != *sp5C) {
        goto loop_75;
    }
    temp_v1_9 = *(void *)0x8007B2E4;
    if ((temp_v1_9 & 0x200) != 0) {
        *(void *)0x8007B2E4 = (s32) (temp_v1_9 & -0x201);
        if (func_0002543C(0) != 0) {
loop_78:
            if (func_0002543C(0) != 0) {
                goto loop_78;
            }
        }
    }
    if ((*(void *)0x8007B2E4 & 0x400) != 0) {
        func_0002B510(4);
    }
}
