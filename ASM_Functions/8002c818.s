ADDIU          SP, SP, -0x58
SW             RA, 0x0024 (SP)
SW             S1, 0x0020 (SP)
SW             S0, 0x001C (SP)
SW             A0, 0x0058 (SP)
LUI            T7, 0x8006
SW             R0, 0x0050 (SP)
ADDIU          T7, T7, 0xF9A0
LW             AT, 0x0000 (T7)
ADDIU          T6, SP, 0x0034
LW             T0, 0x0004 (T7)
SW             AT, 0x0000 (T6)
LW             AT, 0x0008 (T7)
LUI            V1, 0x8009
SW             T0, 0x0004 (T6)
SW             AT, 0x0008 (T6)
LHU            V1, 0xFD20 (V1)
LUI            V0, 0x8009
ADDIU          A0, R0, 0x0082
ANDI           T1, V1, 0x0020
BEQZ           T1, 0x8002C89C
ADDIU          A1, R0, 0x0033
LUI            V0, 0x8009
LB             V0, 0xFD2A (V0)
ANDI           T2, V1, 0xFFDF
LUI            AT, 0x8009
BNEZ           V0, 0x8002C894
ADDIU          T3, V0, 0xFFFF
SW             V0, 0x0054 (SP)
B              0x8002C8A4
SH             T2, 0xFD20 (AT)
B              0x8002C8A4
SW             T3, 0x0054 (SP)
LB             V0, 0xFD2A (V0)
SW             V0, 0x0054 (SP)
LW             T4, 0x0054 (SP)
LUI            T9, 0x8009
ADDIU          T9, T9, 0xFD30
SLL            T5, T4, 1
ADDU           T8, T5, T9
SW             T8, 0x002C (SP)
LB             T6, 0x0000 (T8)
ADDIU          AT, R0, 0xFFFE
ADDIU          T5, R0, 0x0001
BEQ            T6, AT, 0x8002CCB4
ADDIU          A2, SP, 0x0034
LB             T7, 0x0001 (T8)
ADDIU          AT, R0, 0xFFFF
BEQ            T7, AT, 0x8002CCAC
NOP            
BNE            T4, V0, 0x8002C964
ADDIU          A0, R0, 0x0002
ADDIU          T0, R0, 0x000A
SW             T0, 0x0010 (SP)
ADDIU          A0, R0, 0x0002
ADDIU          A1, R0, 0x006F
ADDIU          A2, R0, 0x0036
JAL            0x8002AB64
OR             A3, T4, R0
ADDIU          T1, R0, 0x000D
SW             T1, 0x0010 (SP)
ADDIU          A0, R0, 0x0036
ADDIU          A1, R0, 0x0053
ADDIU          A2, R0, 0x0035
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T2, R0, 0x000A
SW             T2, 0x0010 (SP)
ADDIU          A0, R0, 0x0019
ADDIU          A1, R0, 0x0092
ADDIU          A2, R0, 0x0036
JAL            0x80029B58
ADDIU          A3, R0, 0x0008
ADDIU          T3, R0, 0x000E
SW             T3, 0x0010 (SP)
ADDIU          A0, R0, 0x0043
ADDIU          A1, R0, 0x00D9
ADDIU          A2, R0, 0x0035
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T5, R0, 0x000A
B              0x8002C9D8
SW             T5, 0x0040 (SP)
ADDIU          T9, R0, 0x0048
SW             T9, 0x0010 (SP)
ADDIU          A1, R0, 0x006F
ADDIU          A2, R0, 0x0036
JAL            0x8002AB64
LW             A3, 0x0054 (SP)
ADDIU          T6, R0, 0x000D
SW             T6, 0x0010 (SP)
ADDIU          A0, R0, 0x0045
ADDIU          A1, R0, 0x0053
ADDIU          A2, R0, 0x0035
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T8, R0, 0x000A
SW             T8, 0x0010 (SP)
ADDIU          A0, R0, 0x0052
ADDIU          A1, R0, 0x0092
ADDIU          A2, R0, 0x0036
JAL            0x80029B58
ADDIU          A3, R0, 0x0008
ADDIU          T7, R0, 0x000E
SW             T7, 0x0010 (SP)
ADDIU          A0, R0, 0x0044
ADDIU          A1, R0, 0x00D9
ADDIU          A2, R0, 0x0035
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T4, R0, 0x0048
SW             T4, 0x0040 (SP)
LW             T0, 0x0054 (SP)
LUI            T2, 0x8009
ADDIU          T2, T2, 0xFD58
SLL            T1, T0, 2
SUBU           T1, T1, T0
SLL            T1, T1, 3
ADDU           T1, T1, T0
SLL            T1, T1, 2
ADDU           V0, T1, T2
ADDIU          T3, R0, 0x000A
SW             T3, 0x0010 (SP)
LBU            A3, 0x0024 (V0)
SW             V0, 0x0028 (SP)
ADDIU          A0, R0, 0x0002
ADDIU          A1, R0, 0x0065
JAL            0x8002AB64
ADDIU          A2, R0, 0x006C
LW             T5, 0x0028 (SP)
ADDIU          T9, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0025 (T5)
SW             T9, 0x0010 (SP)
ADDIU          A1, R0, 0x008A
JAL            0x8002AB64
ADDIU          A2, R0, 0x006C
LW             T6, 0x0028 (SP)
ADDIU          T8, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0026 (T6)
SW             T8, 0x0010 (SP)
ADDIU          A1, R0, 0x00AF
JAL            0x8002AB64
ADDIU          A2, R0, 0x006C
LW             T7, 0x0028 (SP)
ADDIU          T4, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0027 (T7)
SW             T4, 0x0010 (SP)
ADDIU          A1, R0, 0x00D4
JAL            0x8002AB64
ADDIU          A2, R0, 0x006C
LW             V1, 0x0028 (SP)
LW             T0, 0x003C (V1)
ADDIU          T1, T0, 0xFFF1
SLTIU          AT, T1, 0x0010
BEQZ           AT, 0x8002CBD0
SLL            T1, T1, 2
LUI            AT, 0x8007
ADDU           AT, AT, T1
LW             T1, 0x194C (AT)
JR             T1
NOP            
LW             T2, 0x0040 (V1)
ADDIU          AT, R0, 0x0005
ADDIU          S1, R0, 0x0010
BNE            T2, AT, 0x8002CAC4
NOP            
B              0x8002CAC4
OR             S1, R0, R0
B              0x8002CBD0
SW             S1, 0x0048 (SP)
LW             T3, 0x0040 (V1)
ADDIU          AT, R0, 0x0007
ADDIU          S1, R0, 0x0002
BNE            T3, AT, 0x8002CAE8
NOP            
B              0x8002CAE8
ADDIU          S1, R0, 0x0001
B              0x8002CBD0
SW             S1, 0x0048 (SP)
ADDIU          S1, R0, 0x0004
B              0x8002CBD0
SW             S1, 0x0048 (SP)
LW             T5, 0x0040 (V1)
ADDIU          AT, R0, 0x0006
ADDIU          S1, R0, 0x0005
BNE            T5, AT, 0x8002CB18
NOP            
B              0x8002CB18
ADDIU          S1, R0, 0x0003
B              0x8002CBD0
SW             S1, 0x0048 (SP)
ADDIU          S1, R0, 0x0006
B              0x8002CBD0
SW             S1, 0x0048 (SP)
LW             T9, 0x0040 (V1)
ADDIU          AT, R0, 0x0016
ADDIU          S1, R0, 0x0008
BNE            T9, AT, 0x8002CB48
NOP            
B              0x8002CB48
ADDIU          S1, R0, 0x0007
B              0x8002CBD0
SW             S1, 0x0048 (SP)
LW             V0, 0x0040 (V1)
ADDIU          AT, R0, 0x0008
ADDIU          S1, R0, 0x0009
BEQZ           V0, 0x8002CB8C
NOP            
BEQ            V0, AT, 0x8002CB94
ADDIU          S1, R0, 0x000C
ADDIU          AT, R0, 0x0013
BEQ            V0, AT, 0x8002CB9C
ADDIU          S1, R0, 0x000A
ADDIU          AT, R0, 0x0016
BEQ            V0, AT, 0x8002CBA4
ADDIU          S1, R0, 0x000B
B              0x8002CBA8
NOP            
B              0x8002CBA8
SW             S1, 0x0048 (SP)
B              0x8002CBA8
SW             S1, 0x0048 (SP)
B              0x8002CBA8
SW             S1, 0x0048 (SP)
SW             S1, 0x0048 (SP)
B              0x8002CBD4
LW             S1, 0x0048 (SP)
ADDIU          S1, R0, 0x000E
B              0x8002CBD0
SW             S1, 0x0048 (SP)
ADDIU          S1, R0, 0x000D
B              0x8002CBD0
SW             S1, 0x0048 (SP)
ADDIU          S1, R0, 0x000F
SW             S1, 0x0048 (SP)
LW             S1, 0x0048 (SP)
LUI            A2, 0x8007
ADDIU          A0, R0, 0x0051
SLL            T6, S1, 2
ADDU           A2, A2, T6
LW             A2, 0xAC00 (A2)
OR             S1, R0, R0
JAL            0x80030EA0
ADDIU          A1, R0, 0x0048
JAL            0x8002DF6C
NOP            
LW             T8, 0x0028 (SP)
ADDIU          A0, R0, 0x0003
ADDIU          A1, R0, 0x007E
LHU            S0, 0x0038 (T8)
ADDIU          A2, R0, 0x0036
LW             T7, 0x0040 (SP)
SLTI           AT, S0, 0x003C
BNEZL          AT, 0x8002CC34
OR             A3, S1, R0
ADDIU          S0, S0, 0xFFC4
SLTI           AT, S0, 0x003C
BEQZ           AT, 0x8002CC20
ADDIU          S1, S1, 0x0001
OR             A3, S1, R0
JAL            0x8002AB64
SW             T7, 0x0010 (SP)
LW             T4, 0x0040 (SP)
ADDIU          A0, R0, 0x0002
ADDIU          A1, R0, 0x009A
ADDIU          A2, R0, 0x0036
OR             A3, S0, R0
JAL            0x8002AF70
SW             T4, 0x0010 (SP)
LW             T0, 0x0028 (SP)
LW             T1, 0x0040 (SP)
ADDIU          A0, R0, 0x0003
LHU            A3, 0x003A (T0)
ADDIU          A1, R0, 0x00C0
ADDIU          A2, R0, 0x0036
JAL            0x8002AB64
SW             T1, 0x0010 (SP)
LW             T2, 0x0028 (SP)
ADDIU          A0, R0, 0x0003
ADDIU          A1, R0, 0x0070
ADDIU          A2, R0, 0x0058
JAL            0x8002B364
LHU            A3, 0x0004 (T2)
LW             T3, 0x0028 (SP)
ADDIU          A0, R0, 0x0003
ADDIU          A1, R0, 0x00C0
ADDIU          A2, R0, 0x0058
JAL            0x8002B364
LHU            A3, 0x0008 (T3)
SW             S1, 0x0048 (SP)
B              0x8002CCC0
LW             S1, 0x0048 (SP)
JAL            0x80030EA0
SW             T5, 0x0050 (SP)
LW             S1, 0x0048 (SP)
JAL            0x8002DF6C
NOP            
LW             T9, 0x0054 (SP)
LW             T8, 0x002C (SP)
ADDIU          AT, R0, 0xFFFF
ADDIU          T6, T9, 0x0001
ADDIU          T7, T8, 0x0002
SW             T7, 0x002C (SP)
SW             T6, 0x0054 (SP)
LB             V0, 0x0000 (T7)
LW             T4, 0x0050 (SP)
BEQ            V0, AT, 0x8002D0BC
NOP            
BNEZ           T4, 0x8002D0BC
ADDIU          AT, R0, 0xFFFE
BEQ            V0, AT, 0x8002D0B0
ADDIU          A0, R0, 0x0082
LB             T0, 0x0001 (T7)
ADDIU          AT, R0, 0xFFFF
SLL            T1, T6, 2
BEQ            T0, AT, 0x8002D0BC
SUBU           T1, T1, T6
SLL            T1, T1, 3
LUI            T5, 0x8009
LB             T5, 0xFD2A (T5)
ADDU           T1, T1, T6
LUI            T2, 0x8009
ADDIU          T2, T2, 0xFD58
SLL            T1, T1, 2
ADDU           T3, T1, T2
BNE            T6, T5, 0x8002CDBC
SW             T3, 0x0028 (SP)
ADDIU          T9, R0, 0x000A
SW             T9, 0x0010 (SP)
ADDIU          A0, R0, 0x0002
ADDIU          A1, R0, 0x006F
ADDIU          A2, R0, 0x0083
JAL            0x8002AB64
OR             A3, T6, R0
ADDIU          T8, R0, 0x000D
SW             T8, 0x0010 (SP)
ADDIU          A0, R0, 0x0036
ADDIU          A1, R0, 0x0053
ADDIU          A2, R0, 0x0082
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T4, R0, 0x000A
SW             T4, 0x0010 (SP)
ADDIU          A0, R0, 0x0019
ADDIU          A1, R0, 0x0092
ADDIU          A2, R0, 0x0083
JAL            0x80029B58
ADDIU          A3, R0, 0x0008
ADDIU          T7, R0, 0x000E
SW             T7, 0x0010 (SP)
ADDIU          A0, R0, 0x0043
ADDIU          A1, R0, 0x00D9
ADDIU          A2, R0, 0x0082
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T0, R0, 0x000A
B              0x8002CE34
SW             T0, 0x0040 (SP)
ADDIU          T1, R0, 0x0048
SW             T1, 0x0010 (SP)
ADDIU          A0, R0, 0x0002
ADDIU          A1, R0, 0x006F
ADDIU          A2, R0, 0x0083
JAL            0x8002AB64
LW             A3, 0x0054 (SP)
ADDIU          T2, R0, 0x000D
SW             T2, 0x0010 (SP)
ADDIU          A0, R0, 0x0045
ADDIU          A1, R0, 0x0053
ADDIU          A2, R0, 0x0082
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T3, R0, 0x000A
SW             T3, 0x0010 (SP)
ADDIU          A0, R0, 0x0052
ADDIU          A1, R0, 0x0092
ADDIU          A2, R0, 0x0083
JAL            0x80029B58
ADDIU          A3, R0, 0x0008
ADDIU          T5, R0, 0x000E
SW             T5, 0x0010 (SP)
ADDIU          A0, R0, 0x0044
ADDIU          A1, R0, 0x00D9
ADDIU          A2, R0, 0x0082
JAL            0x80029B58
ADDIU          A3, R0, 0x001C
ADDIU          T6, R0, 0x0048
SW             T6, 0x0040 (SP)
LW             T9, 0x0028 (SP)
ADDIU          T8, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0024 (T9)
SW             T8, 0x0010 (SP)
ADDIU          A1, R0, 0x0065
JAL            0x8002AB64
ADDIU          A2, R0, 0x00BA
LW             T4, 0x0028 (SP)
ADDIU          T7, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0025 (T4)
SW             T7, 0x0010 (SP)
ADDIU          A1, R0, 0x008A
JAL            0x8002AB64
ADDIU          A2, R0, 0x00BA
LW             T0, 0x0028 (SP)
ADDIU          T1, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0026 (T0)
SW             T1, 0x0010 (SP)
ADDIU          A1, R0, 0x00AF
JAL            0x8002AB64
ADDIU          A2, R0, 0x00BA
LW             T2, 0x0028 (SP)
ADDIU          T3, R0, 0x000A
ADDIU          A0, R0, 0x0002
LBU            A3, 0x0027 (T2)
SW             T3, 0x0010 (SP)
ADDIU          A1, R0, 0x00D4
JAL            0x8002AB64
ADDIU          A2, R0, 0x00BA
LW             V1, 0x0028 (SP)
LW             T5, 0x003C (V1)
ADDIU          T6, T5, 0xFFF1
SLTIU          AT, T6, 0x0010
BEQZ           AT, 0x8002CFD4
SLL            T6, T6, 2
LUI            AT, 0x8007
ADDU           AT, AT, T6
LW             T6, 0x198C (AT)
JR             T6
NOP            
LW             T9, 0x0040 (V1)
ADDIU          AT, R0, 0x0005
BNE            T9, AT, 0x8002CEF8
NOP            
B              0x8002CFD4
OR             S1, R0, R0
B              0x8002CFD4
ADDIU          S1, R0, 0x0010
LW             T8, 0x0040 (V1)
ADDIU          AT, R0, 0x0007
BNE            T8, AT, 0x8002CF18
NOP            
B              0x8002CFD4
ADDIU          S1, R0, 0x0001
B              0x8002CFD4
ADDIU          S1, R0, 0x0002
B              0x8002CFD4
ADDIU          S1, R0, 0x0004
LW             T4, 0x0040 (V1)
ADDIU          AT, R0, 0x0006
BNE            T4, AT, 0x8002CF40
NOP            
B              0x8002CFD4
ADDIU          S1, R0, 0x0003
B              0x8002CFD4
ADDIU          S1, R0, 0x0005
B              0x8002CFD4
ADDIU          S1, R0, 0x0006
LW             T7, 0x0040 (V1)
ADDIU          AT, R0, 0x0016
BNE            T7, AT, 0x8002CF68
NOP            
B              0x8002CFD4
ADDIU          S1, R0, 0x0007
B              0x8002CFD4
ADDIU          S1, R0, 0x0008
LW             V0, 0x0040 (V1)
ADDIU          AT, R0, 0x0008
BEQZ           V0, 0x8002CFA0
NOP            
BEQ            V0, AT, 0x8002CFA8
ADDIU          AT, R0, 0x0013
BEQ            V0, AT, 0x8002CFB0
ADDIU          AT, R0, 0x0016
BEQ            V0, AT, 0x8002CFB8
NOP            
B              0x8002CFD8
SLL            T0, S1, 2
B              0x8002CFD4
ADDIU          S1, R0, 0x0009
B              0x8002CFD4
ADDIU          S1, R0, 0x000C
B              0x8002CFD4
ADDIU          S1, R0, 0x000A
B              0x8002CFD4
ADDIU          S1, R0, 0x000B
B              0x8002CFD4
ADDIU          S1, R0, 0x000E
B              0x8002CFD4
ADDIU          S1, R0, 0x000D
ADDIU          S1, R0, 0x000F
SLL            T0, S1, 2
LUI            A2, 0x8007
ADDU           A2, A2, T0
LW             A2, 0xAC00 (A2)
OR             S1, R0, R0
ADDIU          A0, R0, 0x0051
JAL            0x80030EA0
ADDIU          A1, R0, 0x0096
JAL            0x8002DF6C
NOP            
LW             T1, 0x0028 (SP)
ADDIU          A0, R0, 0x0003
ADDIU          A1, R0, 0x007E
LHU            S0, 0x0038 (T1)
ADDIU          A2, R0, 0x0083
LW             T2, 0x0040 (SP)
SLTI           AT, S0, 0x003C
BNEZL          AT, 0x8002D034
OR             A3, S1, R0
ADDIU          S0, S0, 0xFFC4
SLTI           AT, S0, 0x003C
BEQZ           AT, 0x8002D020
ADDIU          S1, S1, 0x0001
OR             A3, S1, R0
JAL            0x8002AB64
SW             T2, 0x0010 (SP)
LW             T3, 0x0040 (SP)
ADDIU          A0, R0, 0x0002
ADDIU          A1, R0, 0x009A
ADDIU          A2, R0, 0x0083
OR             A3, S0, R0
JAL            0x8002AF70
SW             T3, 0x0010 (SP)
LW             T5, 0x0028 (SP)
LW             T6, 0x0040 (SP)
ADDIU          A0, R0, 0x0003
LHU            A3, 0x003A (T5)
ADDIU          A1, R0, 0x00C0
ADDIU          A2, R0, 0x0083
JAL            0x8002AB64
SW             T6, 0x0010 (SP)
LW             T9, 0x0028 (SP)
ADDIU          A0, R0, 0x0003
ADDIU          A1, R0, 0x0070
ADDIU          A2, R0, 0x00A6
JAL            0x8002B364
LHU            A3, 0x0004 (T9)
LW             T8, 0x0028 (SP)
ADDIU          A0, R0, 0x0003
ADDIU          A1, R0, 0x00C0
ADDIU          A2, R0, 0x00A6
JAL            0x8002B364
LHU            A3, 0x0008 (T8)
B              0x8002D0BC
NOP            
ADDIU          A1, R0, 0x007F
JAL            0x80030EA0
ADDIU          A2, SP, 0x0034
JAL            0x8002DF6C
NOP            
LUI            V1, 0x8009
LW             V1, 0xFD10 (V1)
LUI            V0, 0x8009
LB             V0, 0xFD2A (V0)
SRA            T4, V1, 2
ANDI           T7, T4, 0x000F
LUI            AT, 0x8006
ADDU           AT, AT, T7
LB             V1, 0xF0C0 (AT)
SLTI           AT, V0, 0x0002
BNEZ           AT, 0x8002D138
ADDIU          A0, R0, 0x0005
ADDIU          T0, R0, 0x0007
SW             T0, 0x0010 (SP)
ADDIU          A1, R0, 0x0038
ADDIU          A2, R0, 0x004D
ADDIU          A3, R0, 0x0007
JAL            0x80029B58
SW             V1, 0x0050 (SP)
LW             A2, 0x0050 (SP)
ADDIU          T1, R0, 0x0010
SW             T1, 0x0010 (SP)
ADDIU          A0, R0, 0x0053
ADDIU          A1, R0, 0x0036
ADDIU          A3, R0, 0x000C
JAL            0x80029B58
ADDIU          A2, A2, 0x003F
B              0x8002D19C
LW             T9, 0x002C (SP)
ADDIU          AT, R0, 0x0001
BNE            V0, AT, 0x8002D198
SW             V1, 0x0050 (SP)
LUI            T2, 0x8009
LHU            T2, 0xFD20 (T2)
SW             V1, 0x0050 (SP)
ADDIU          A0, R0, 0x0005
ANDI           T3, T2, 0x0020
BNEZ           T3, 0x8002D198
ADDIU          A1, R0, 0x0038
ADDIU          T5, R0, 0x0007
SW             T5, 0x0010 (SP)
ADDIU          A2, R0, 0x004D
ADDIU          A3, R0, 0x0007
JAL            0x80029B58
SW             V1, 0x0050 (SP)
LW             A2, 0x0050 (SP)
ADDIU          T6, R0, 0x0010
SW             T6, 0x0010 (SP)
ADDIU          A0, R0, 0x0053
ADDIU          A1, R0, 0x0036
ADDIU          A3, R0, 0x000C
JAL            0x80029B58
ADDIU          A2, A2, 0x003F
LW             T9, 0x002C (SP)
LUI            T8, 0x8009
ADDIU          T8, T8, 0xFD50
SLTU           AT, T9, T8
BEQZ           AT, 0x8002D204
LW             V1, 0x0050 (SP)
LB             T4, 0x0002 (T9)
ADDIU          AT, R0, 0xFFFF
ADDIU          A0, R0, 0x0005
BEQ            T4, AT, 0x8002D204
ADDIU          A1, R0, 0x0038
ADDIU          T7, R0, 0x0007
SW             T7, 0x0010 (SP)
ADDIU          A2, R0, 0x00A4
ADDIU          A3, R0, 0x0007
JAL            0x80029B58
SW             V1, 0x0050 (SP)
LW             T0, 0x0050 (SP)
ADDIU          T1, R0, 0x00AC
ADDIU          T2, R0, 0x000B
SW             T2, 0x0010 (SP)
ADDIU          A0, R0, 0x0054
ADDIU          A1, R0, 0x0036
ADDIU          A3, R0, 0x000E
JAL            0x80029B58
SUBU           A2, T1, T0
LW             V1, 0x0050 (SP)
LUI            T3, 0x8009
LHU            T3, 0xFD20 (T3)
ADDIU          A0, R0, 0x0001
ADDIU          A1, V1, 0x0042
ANDI           T5, T3, 0x0020
BEQZ           T5, 0x8002D244
ADDIU          A2, R0, 0x0037
ADDIU          T6, R0, 0x000D
SW             T6, 0x0010 (SP)
ADDIU          A0, R0, 0x0001
ADDIU          A1, V1, 0x0042
ADDIU          A2, R0, 0x0080
JAL            0x80029B58
ADDIU          A3, R0, 0x0010
B              0x8002D258
LW             T9, 0x0058 (SP)
ADDIU          T8, R0, 0x000D
SW             T8, 0x0010 (SP)
JAL            0x80029B58
ADDIU          A3, R0, 0x0010
LW             T9, 0x0058 (SP)
ADDIU          AT, R0, 0x0001
LUI            V0, 0x8009
BEQL           T9, AT, 0x8002D5C4
LW             RA, 0x0024 (SP)
LB             V0, 0x2872 (V0)
LUI            S0, 0x8009
OR             S1, R0, R0
SLTI           AT, V0, 0xFFEC
BEQZ           AT, 0x8002D34C
ADDIU          S0, S0, 0xFD2B
LBU            T4, 0x0000 (S0)
OR             A0, R0, R0
OR             A1, R0, R0
BNEZL          T4, 0x8002D32C
LBU            T0, 0x0000 (S0)
JAL            0x800268D4
ADDIU          A2, R0, 0x00FF
LUI            T7, 0x8009
LB             T7, 0xFD2A (T7)
LUI            T3, 0x8009
LUI            AT, 0x8009
ADDIU          T1, T7, 0x0001
SLL            V0, T1, 24
SRA            T0, V0, 24
SLL            T2, T0, 1
ADDU           T3, T3, T2
LB             T3, 0xFD30 (T3)
SB             T1, 0xFD2A (AT)
ADDIU          AT, R0, 0xFFFF
BNE            T3, AT, 0x8002D2E4
LUI            A3, 0x8009
ADDIU          T5, T0, 0xFFFF
LUI            AT, 0x8009
SB             T5, 0xFD2A (AT)
ADDIU          S1, R0, 0x0001
ADDIU          A3, A3, 0xFD20
LHU            V1, 0x0000 (A3)
ANDI           T6, V1, 0x0020
BNEZ           T6, 0x8002D308
NOP            
BNEZ           S1, 0x8002D308
ORI            T8, V1, 0x0020
B              0x8002D328
SH             T8, 0x0000 (A3)
BNEZ           S1, 0x8002D328
ANDI           T4, V1, 0xFFF8
SH             T4, 0x0000 (A3)
ORI            T7, T4, 0x0006
SH             T7, 0x0000 (A3)
ADDIU          T1, R0, 0x0004
LUI            AT, 0x8009
SB             T1, 0xFD29 (AT)
LBU            T0, 0x0000 (S0)
LUI            A3, 0x8009
ADDIU          A3, A3, 0xFD20
ADDIU          T3, T0, 0x0001
SB             T3, 0x0000 (S0)
ANDI           T5, T3, 0x000F
ADDIU          S1, R0, 0xFFF8
B              0x8002D42C
SB             T5, 0x0000 (S0)
SLTI           AT, V0, 0x0015
BNEZ           AT, 0x8002D414
LUI            S0, 0x8009
ADDIU          S0, S0, 0xFD2B
LBU            T6, 0x0000 (S0)
OR             A0, R0, R0
OR             A1, R0, R0
BNEZL          T6, 0x8002D3F4
LBU            T8, 0x0000 (S0)
JAL            0x800268D4
ADDIU          A2, R0, 0x00FF
LUI            T8, 0x8009
LB             T8, 0xFD2A (T8)
LUI            AT, 0x8009
LUI            V1, 0x8009
ADDIU          T9, T8, 0xFFFF
SLL            T4, T9, 24
SRA            T7, T4, 24
BGEZ           T7, 0x8002D3A8
SB             T9, 0xFD2A (AT)
LUI            AT, 0x8009
SB             R0, 0xFD2A (AT)
ADDIU          S1, R0, 0x0001
LHU            V1, 0xFD20 (V1)
LUI            AT, 0x8009
ANDI           T1, V1, 0x0020
BEQZ           T1, 0x8002D3C4
ANDI           T0, V1, 0xFFDF
B              0x8002D3F0
SH             T0, 0xFD20 (AT)
BNEZ           S1, 0x8002D3F0
ANDI           T2, V1, 0xFFF8
LUI            AT, 0x8009
SH             T2, 0xFD20 (AT)
LUI            T3, 0x8009
LHU            T3, 0xFD20 (T3)
ADDIU          T6, R0, 0x0004
ORI            T5, T3, 0x0006
SH             T5, 0xFD20 (AT)
LUI            AT, 0x8009
SB             T6, 0xFD29 (AT)
LBU            T8, 0x0000 (S0)
LUI            A3, 0x8009
ADDIU          S1, R0, 0xFFF8
ADDIU          T4, T8, 0x0001
SB             T4, 0x0000 (S0)
ANDI           T7, T4, 0x000F
SB             T7, 0x0000 (S0)
B              0x8002D42C
ADDIU          A3, A3, 0xFD20
LUI            S0, 0x8009
ADDIU          S0, S0, 0xFD2B
LUI            A3, 0x8009
ADDIU          A3, A3, 0xFD20
SB             R0, 0x0000 (S0)
ADDIU          S1, R0, 0xFFF8
LUI            V0, 0x8009
LHU            V0, 0x2876 (V0)
ANDI           T1, V0, 0x8000
BEQZ           T1, 0x8002D57C
LUI            T0, 0x8009
LHU            T0, 0xFD0C (T0)
OR             A0, R0, R0
ADDIU          A1, R0, 0x0001
ANDI           T2, T0, 0x000C
SW             T2, 0x0054 (SP)
JAL            0x800268D4
ADDIU          A2, R0, 0x00FF
LW             T3, 0x0054 (SP)
LUI            V0, 0x8009
ADDIU          V0, V0, 0xFD20
BEQZ           T3, 0x8002D488
ADDIU          AT, R0, 0x0004
BEQ            T3, AT, 0x8002D4EC
ADDIU          AT, R0, 0x0008
BEQ            T3, AT, 0x8002D4B8
LUI            V0, 0x8009
B              0x8002D5C4
LW             RA, 0x0024 (SP)
LHU            T5, 0x0000 (V0)
ADDIU          T8, R0, 0x0001
LUI            AT, 0x8009
ORI            T6, T5, 0x2000
SH             T6, 0x0000 (V0)
SB             T8, 0xFD23 (AT)
LHU            T9, 0x0000 (V0)
AND            T7, T9, S1
SH             T7, 0x0000 (V0)
ORI            T1, T7, 0x0002
B              0x8002D5C0
SH             T1, 0x0000 (V0)
ADDIU          T0, R0, 0x0005
LUI            AT, 0x8009
SB             T0, 0xFD22 (AT)
LUI            AT, 0x8009
ADDIU          T2, R0, 0x000A
ADDIU          V0, V0, 0xFD20
SB             T2, 0xFD29 (AT)
LHU            T3, 0x0000 (V0)
AND            T6, T3, S1
SH             T6, 0x0000 (V0)
ORI            T8, T6, 0x0005
B              0x8002D5C0
SH             T8, 0x0000 (V0)
LUI            T9, 0x8009
LB             T9, 0xFD2A (T9)
LUI            T7, 0x8009
ADDIU          AT, R0, 0xFFFE
SLL            T4, T9, 1
ADDU           T7, T7, T4
LB             T7, 0xFD30 (T7)
BNE            T7, AT, 0x8002D544
LUI            V0, 0x8009
ADDIU          V0, V0, 0xFD20
LHU            T1, 0x0000 (V0)
ADDIU          T2, R0, 0x0002
LUI            AT, 0x8009
ORI            T0, T1, 0x2000
SH             T0, 0x0000 (V0)
SB             T2, 0xFD23 (AT)
LHU            T3, 0x0000 (V0)
AND            T6, T3, S1
SH             T6, 0x0000 (V0)
ORI            T8, T6, 0x0003
B              0x8002D5C0
SH             T8, 0x0000 (V0)
ADDIU          T9, R0, 0x0004
LUI            AT, 0x8009
SB             T9, 0xFD22 (AT)
LUI            V0, 0x8009
LUI            AT, 0x8009
ADDIU          T4, R0, 0x000A
ADDIU          V0, V0, 0xFD20
SB             T4, 0xFD29 (AT)
LHU            T7, 0x0000 (V0)
AND            T0, T7, S1
SH             T0, 0x0000 (V0)
ORI            T2, T0, 0x0005
B              0x8002D5C0
SH             T2, 0x0000 (V0)
ANDI           T3, V0, 0x5000
BEQZ           T3, 0x8002D5C0
ADDIU          T5, R0, 0x0007
LUI            AT, 0x8009
SB             T5, 0xFD22 (AT)
LUI            AT, 0x8009
ADDIU          T6, R0, 0x000A
SB             T6, 0xFD29 (AT)
LHU            T8, 0x0000 (A3)
OR             A0, R0, R0
ADDIU          A1, R0, 0x0002
AND            T4, T8, S1
SH             T4, 0x0000 (A3)
ORI            T7, T4, 0x0005
SH             T7, 0x0000 (A3)
JAL            0x800268D4
ADDIU          A2, R0, 0x00FF
LW             RA, 0x0024 (SP)
