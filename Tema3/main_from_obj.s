Microsoft (R) COFF/PE Dumper Version 14.50.35717.0
Copyright (C) Microsoft Corporation.  All rights reserved.


Dump of file main.obj

File Type: COFF OBJECT

obtenerSiguienteFactura:
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 81 EC 08 01 00  sub         rsp,108h
                    00
  000000000000000C: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  0000000000000013: 48 33 C4           xor         rax,rsp
  0000000000000016: 48 89 84 24 F0 00  mov         qword ptr [rsp+0F0h],rax
                    00 00
  000000000000001E: 48 8D 15 00 00 00  lea         rdx,[$SG11799]
                    00
  0000000000000025: 48 8B 8C 24 10 01  mov         rcx,qword ptr [rsp+110h]
                    00 00
  000000000000002D: E8 00 00 00 00     call        fopen
  0000000000000032: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  0000000000000037: 48 83 7C 24 58 00  cmp         qword ptr [rsp+58h],0
  000000000000003D: 75 07              jne         0000000000000046
  000000000000003F: B8 01 00 00 00     mov         eax,1
  0000000000000044: EB 77              jmp         00000000000000BD
  0000000000000046: C7 44 24 50 00 00  mov         dword ptr [rsp+50h],0
                    00 00
  000000000000004E: 48 8D 44 24 70     lea         rax,[rsp+70h]
  0000000000000053: 48 89 44 24 40     mov         qword ptr [rsp+40h],rax
  0000000000000058: 48 8D 44 24 60     lea         rax,[rsp+60h]
  000000000000005D: 48 89 44 24 38     mov         qword ptr [rsp+38h],rax
  0000000000000062: 48 8D 44 24 64     lea         rax,[rsp+64h]
  0000000000000067: 48 89 44 24 30     mov         qword ptr [rsp+30h],rax
  000000000000006C: 48 8D 44 24 68     lea         rax,[rsp+68h]
  0000000000000071: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000076: 48 8D 84 24 80 00  lea         rax,[rsp+80h]
                    00 00
  000000000000007E: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000083: 4C 8D 4C 24 6C     lea         r9,[rsp+6Ch]
  0000000000000088: 4C 8D 44 24 54     lea         r8,[rsp+54h]
  000000000000008D: 48 8D 15 00 00 00  lea         rdx,[$SG11801]
                    00
  0000000000000094: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000099: E8 00 00 00 00     call        fscanf
  000000000000009E: 83 F8 07           cmp         eax,7
  00000000000000A1: 75 0A              jne         00000000000000AD
  00000000000000A3: 8B 44 24 54        mov         eax,dword ptr [rsp+54h]
  00000000000000A7: 89 44 24 50        mov         dword ptr [rsp+50h],eax
  00000000000000AB: EB A1              jmp         000000000000004E
  00000000000000AD: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000000B2: E8 00 00 00 00     call        fclose
  00000000000000B7: 8B 44 24 50        mov         eax,dword ptr [rsp+50h]
  00000000000000BB: FF C0              inc         eax
  00000000000000BD: 48 8B 8C 24 F0 00  mov         rcx,qword ptr [rsp+0F0h]
                    00 00
  00000000000000C5: 48 33 CC           xor         rcx,rsp
  00000000000000C8: E8 00 00 00 00     call        __security_check_cookie
  00000000000000CD: 48 81 C4 08 01 00  add         rsp,108h
                    00
  00000000000000D4: C3                 ret
  00000000000000D5: CC                 int         3
  00000000000000D6: CC                 int         3
  00000000000000D7: CC                 int         3
  00000000000000D8: CC                 int         3
  00000000000000D9: CC                 int         3
  00000000000000DA: CC                 int         3
  00000000000000DB: CC                 int         3
  00000000000000DC: CC                 int         3
  00000000000000DD: CC                 int         3
  00000000000000DE: CC                 int         3
  00000000000000DF: CC                 int         3
obtenerFechaActual:
  00000000000000E0: 89 54 24 10        mov         dword ptr [rsp+10h],edx
  00000000000000E4: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  00000000000000E9: 48 83 EC 38        sub         rsp,38h
  00000000000000ED: 33 C9              xor         ecx,ecx
  00000000000000EF: E8 00 00 00 00     call        time
  00000000000000F4: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  00000000000000F9: 48 8D 4C 24 20     lea         rcx,[rsp+20h]
  00000000000000FE: E8 00 00 00 00     call        localtime
  0000000000000103: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000108: 48 63 44 24 48     movsxd      rax,dword ptr [rsp+48h]
  000000000000010D: 4C 8B 4C 24 28     mov         r9,qword ptr [rsp+28h]
  0000000000000112: 4C 8D 05 00 00 00  lea         r8,[$SG11808]
                    00
  0000000000000119: 48 8B D0           mov         rdx,rax
  000000000000011C: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000121: E8 00 00 00 00     call        strftime
  0000000000000126: 90                 nop
  0000000000000127: 48 83 C4 38        add         rsp,38h
  000000000000012B: C3                 ret
  000000000000012C: CC                 int         3
  000000000000012D: CC                 int         3
  000000000000012E: CC                 int         3
  000000000000012F: CC                 int         3
  0000000000000130: CC                 int         3
  0000000000000131: CC                 int         3
  0000000000000132: CC                 int         3
  0000000000000133: CC                 int         3
  0000000000000134: CC                 int         3
  0000000000000135: CC                 int         3
  0000000000000136: CC                 int         3
  0000000000000137: CC                 int         3
  0000000000000138: CC                 int         3
  0000000000000139: CC                 int         3
  000000000000013A: CC                 int         3
  000000000000013B: CC                 int         3
  000000000000013C: CC                 int         3
  000000000000013D: CC                 int         3
  000000000000013E: CC                 int         3
  000000000000013F: CC                 int         3
main:
  0000000000000140: 48 81 EC 38 02 00  sub         rsp,238h
                    00
  0000000000000147: 48 8B 05 00 00 00  mov         rax,qword ptr [__security_cookie]
                    00
  000000000000014E: 48 33 C4           xor         rax,rsp
  0000000000000151: 48 89 84 24 20 02  mov         qword ptr [rsp+220h],rax
                    00 00
  0000000000000159: C7 44 24 68 00 00  mov         dword ptr [rsp+68h],0
                    00 00
  0000000000000161: 83 7C 24 68 03     cmp         dword ptr [rsp+68h],3
  0000000000000166: 0F 8D 95 00 00 00  jge         0000000000000201
  000000000000016C: 48 8D 0D 00 00 00  lea         rcx,[$SG11725]
                    00
  0000000000000173: E8 00 00 00 00     call        printf
  0000000000000178: 48 8D 94 24 E8 01  lea         rdx,[rsp+1E8h]
                    00 00
  0000000000000180: 48 8D 0D 00 00 00  lea         rcx,[$SG11726]
                    00
  0000000000000187: E8 00 00 00 00     call        scanf
  000000000000018C: 48 8D 0D 00 00 00  lea         rcx,[$SG11727]
                    00
  0000000000000193: E8 00 00 00 00     call        printf
  0000000000000198: 48 8D 94 24 B0 01  lea         rdx,[rsp+1B0h]
                    00 00
  00000000000001A0: 48 8D 0D 00 00 00  lea         rcx,[$SG11728]
                    00
  00000000000001A7: E8 00 00 00 00     call        scanf
  00000000000001AC: 4C 8D 84 24 D0 00  lea         r8,[rsp+0D0h]
                    00 00
  00000000000001B4: 48 8D 94 24 B0 01  lea         rdx,[rsp+1B0h]
                    00 00
  00000000000001BC: 48 8D 8C 24 E8 01  lea         rcx,[rsp+1E8h]
                    00 00
  00000000000001C4: E8 00 00 00 00     call        validarUsuario
  00000000000001C9: 85 C0              test        eax,eax
  00000000000001CB: 74 19              je          00000000000001E6
  00000000000001CD: 48 8D 94 24 34 01  lea         rdx,[rsp+134h]
                    00 00
  00000000000001D5: 48 8D 0D 00 00 00  lea         rcx,[$SG11731]
                    00
  00000000000001DC: E8 00 00 00 00     call        printf
  00000000000001E1: 90                 nop
  00000000000001E2: EB 1D              jmp         0000000000000201
  00000000000001E4: EB 16              jmp         00000000000001FC
  00000000000001E6: 48 8D 0D 00 00 00  lea         rcx,[$SG11732]
                    00
  00000000000001ED: E8 00 00 00 00     call        printf
  00000000000001F2: 8B 44 24 68        mov         eax,dword ptr [rsp+68h]
  00000000000001F6: FF C0              inc         eax
  00000000000001F8: 89 44 24 68        mov         dword ptr [rsp+68h],eax
  00000000000001FC: E9 60 FF FF FF     jmp         0000000000000161
  0000000000000201: 83 7C 24 68 03     cmp         dword ptr [rsp+68h],3
  0000000000000206: 75 13              jne         000000000000021B
  0000000000000208: 48 8D 0D 00 00 00  lea         rcx,[$SG11734]
                    00
  000000000000020F: E8 00 00 00 00     call        printf
  0000000000000214: 33 C0              xor         eax,eax
  0000000000000216: E9 AA 05 00 00     jmp         00000000000007C5
  000000000000021B: 48 8D 15 00 00 00  lea         rdx,[$SG11736]
                    00
  0000000000000222: 48 8D 8C 24 B0 00  lea         rcx,[rsp+0B0h]
                    00 00
  000000000000022A: E8 00 00 00 00     call        cargarProductos
  000000000000022F: 85 C0              test        eax,eax
  0000000000000231: 75 0A              jne         000000000000023D
  0000000000000233: B8 01 00 00 00     mov         eax,1
  0000000000000238: E9 88 05 00 00     jmp         00000000000007C5
  000000000000023D: 48 8D 0D 00 00 00  lea         rcx,[$SG11737]
                    00
  0000000000000244: E8 00 00 00 00     call        obtenerSiguienteFactura
  0000000000000249: 89 84 24 8C 00 00  mov         dword ptr [rsp+8Ch],eax
                    00
  0000000000000250: BA 0B 00 00 00     mov         edx,0Bh
  0000000000000255: 48 8D 8C 24 A0 01  lea         rcx,[rsp+1A0h]
                    00 00
  000000000000025D: E8 00 00 00 00     call        obtenerFechaActual
  0000000000000262: 48 C7 44 24 58 00  mov         qword ptr [rsp+58h],0
                    00 00 00
  000000000000026B: C7 44 24 54 00 00  mov         dword ptr [rsp+54h],0
                    00 00
  0000000000000273: C6 44 24 50 73     mov         byte ptr [rsp+50h],73h
  0000000000000278: 0F BE 44 24 50     movsx       eax,byte ptr [rsp+50h]
  000000000000027D: 83 F8 73           cmp         eax,73h
  0000000000000280: 74 0E              je          0000000000000290
  0000000000000282: 0F BE 44 24 50     movsx       eax,byte ptr [rsp+50h]
  0000000000000287: 83 F8 53           cmp         eax,53h
  000000000000028A: 0F 85 9C 01 00 00  jne         000000000000042C
  0000000000000290: 48 8D 0D 00 00 00  lea         rcx,[$SG11739]
                    00
  0000000000000297: E8 00 00 00 00     call        printf
  000000000000029C: 48 8D 94 24 A0 00  lea         rdx,[rsp+0A0h]
                    00 00
  00000000000002A4: 48 8D 0D 00 00 00  lea         rcx,[$SG11740]
                    00
  00000000000002AB: E8 00 00 00 00     call        scanf
  00000000000002B0: 48 8D 0D 00 00 00  lea         rcx,[$SG11741]
                    00
  00000000000002B7: E8 00 00 00 00     call        printf
  00000000000002BC: 48 8D 54 24 6C     lea         rdx,[rsp+6Ch]
  00000000000002C1: 48 8D 0D 00 00 00  lea         rcx,[$SG11742]
                    00
  00000000000002C8: E8 00 00 00 00     call        scanf
  00000000000002CD: 8B 94 24 A0 00 00  mov         edx,dword ptr [rsp+0A0h]
                    00
  00000000000002D4: 48 8D 8C 24 B0 00  lea         rcx,[rsp+0B0h]
                    00 00
  00000000000002DC: E8 00 00 00 00     call        buscarProductoPorCodigo
  00000000000002E1: 48 89 84 24 90 00  mov         qword ptr [rsp+90h],rax
                    00 00
  00000000000002E9: 48 83 BC 24 90 00  cmp         qword ptr [rsp+90h],0
                    00 00 00
  00000000000002F2: 75 12              jne         0000000000000306
  00000000000002F4: 48 8D 0D 00 00 00  lea         rcx,[$SG11745]
                    00
  00000000000002FB: E8 00 00 00 00     call        printf
  0000000000000300: 90                 nop
  0000000000000301: E9 03 01 00 00     jmp         0000000000000409
  0000000000000306: 83 7C 24 6C 00     cmp         dword ptr [rsp+6Ch],0
  000000000000030B: 7F 12              jg          000000000000031F
  000000000000030D: 48 8D 0D 00 00 00  lea         rcx,[$SG11748]
                    00
  0000000000000314: E8 00 00 00 00     call        printf
  0000000000000319: 90                 nop
  000000000000031A: E9 EA 00 00 00     jmp         0000000000000409
  000000000000031F: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  0000000000000327: 8B 40 68           mov         eax,dword ptr [rax+68h]
  000000000000032A: 39 44 24 6C        cmp         dword ptr [rsp+6Ch],eax
  000000000000032E: 7E 1D              jle         000000000000034D
  0000000000000330: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  0000000000000338: 8B 50 68           mov         edx,dword ptr [rax+68h]
  000000000000033B: 48 8D 0D 00 00 00  lea         rcx,[$SG11751]
                    00
  0000000000000342: E8 00 00 00 00     call        printf
  0000000000000347: 90                 nop
  0000000000000348: E9 BC 00 00 00     jmp         0000000000000409
  000000000000034D: 8B 44 24 54        mov         eax,dword ptr [rsp+54h]
  0000000000000351: FF C0              inc         eax
  0000000000000353: 48 98              cdqe
  0000000000000355: 48 6B C0 10        imul        rax,rax,10h
  0000000000000359: 48 8B D0           mov         rdx,rax
  000000000000035C: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000361: E8 00 00 00 00     call        realloc
  0000000000000366: 48 89 84 24 C0 00  mov         qword ptr [rsp+0C0h],rax
                    00 00
  000000000000036E: 48 83 BC 24 C0 00  cmp         qword ptr [rsp+0C0h],0
                    00 00 00
  0000000000000377: 75 2D              jne         00000000000003A6
  0000000000000379: 48 8D 0D 00 00 00  lea         rcx,[$SG11753]
                    00
  0000000000000380: E8 00 00 00 00     call        printf
  0000000000000385: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000038A: E8 00 00 00 00     call        free
  000000000000038F: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000397: E8 00 00 00 00     call        free
  000000000000039C: B8 01 00 00 00     mov         eax,1
  00000000000003A1: E9 1F 04 00 00     jmp         00000000000007C5
  00000000000003A6: 48 8B 84 24 C0 00  mov         rax,qword ptr [rsp+0C0h]
                    00 00
  00000000000003AE: 48 89 44 24 58     mov         qword ptr [rsp+58h],rax
  00000000000003B3: 48 63 44 24 54     movsxd      rax,dword ptr [rsp+54h]
  00000000000003B8: 48 6B C0 10        imul        rax,rax,10h
  00000000000003BC: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000003C1: 48 8B 94 24 90 00  mov         rdx,qword ptr [rsp+90h]
                    00 00
  00000000000003C9: 48 89 14 01        mov         qword ptr [rcx+rax],rdx
  00000000000003CD: 48 63 44 24 54     movsxd      rax,dword ptr [rsp+54h]
  00000000000003D2: 48 6B C0 10        imul        rax,rax,10h
  00000000000003D6: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000003DB: 8B 54 24 6C        mov         edx,dword ptr [rsp+6Ch]
  00000000000003DF: 89 54 01 08        mov         dword ptr [rcx+rax+8],edx
  00000000000003E3: 8B 44 24 54        mov         eax,dword ptr [rsp+54h]
  00000000000003E7: FF C0              inc         eax
  00000000000003E9: 89 44 24 54        mov         dword ptr [rsp+54h],eax
  00000000000003ED: 48 8B 84 24 90 00  mov         rax,qword ptr [rsp+90h]
                    00 00
  00000000000003F5: 48 83 C0 04        add         rax,4
  00000000000003F9: 48 8B D0           mov         rdx,rax
  00000000000003FC: 48 8D 0D 00 00 00  lea         rcx,[$SG11754]
                    00
  0000000000000403: E8 00 00 00 00     call        printf
  0000000000000408: 90                 nop
  0000000000000409: 48 8D 0D 00 00 00  lea         rcx,[$SG11755]
                    00
  0000000000000410: E8 00 00 00 00     call        printf
  0000000000000415: 48 8D 54 24 50     lea         rdx,[rsp+50h]
  000000000000041A: 48 8D 0D 00 00 00  lea         rcx,[$SG11756]
                    00
  0000000000000421: E8 00 00 00 00     call        scanf
  0000000000000426: 90                 nop
  0000000000000427: E9 4C FE FF FF     jmp         0000000000000278
  000000000000042C: 83 7C 24 54 00     cmp         dword ptr [rsp+54h],0
  0000000000000431: 75 2A              jne         000000000000045D
  0000000000000433: 48 8D 0D 00 00 00  lea         rcx,[$SG11758]
                    00
  000000000000043A: E8 00 00 00 00     call        printf
  000000000000043F: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000444: E8 00 00 00 00     call        free
  0000000000000449: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000451: E8 00 00 00 00     call        free
  0000000000000456: 33 C0              xor         eax,eax
  0000000000000458: E9 68 03 00 00     jmp         00000000000007C5
  000000000000045D: 48 8D 0D 00 00 00  lea         rcx,[$SG11759]
                    00
  0000000000000464: E8 00 00 00 00     call        printf
  0000000000000469: 8B 94 24 8C 00 00  mov         edx,dword ptr [rsp+8Ch]
                    00
  0000000000000470: 48 8D 0D 00 00 00  lea         rcx,[$SG11760]
                    00
  0000000000000477: E8 00 00 00 00     call        printf
  000000000000047C: 48 8D 94 24 A0 01  lea         rdx,[rsp+1A0h]
                    00 00
  0000000000000484: 48 8D 0D 00 00 00  lea         rcx,[$SG11761]
                    00
  000000000000048B: E8 00 00 00 00     call        printf
  0000000000000490: 48 8D 0D 00 00 00  lea         rcx,[$SG11762]
                    00
  0000000000000497: E8 00 00 00 00     call        printf
  000000000000049C: 48 8D 05 00 00 00  lea         rax,[$SG11763]
                    00
  00000000000004A3: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  00000000000004A8: 48 8D 05 00 00 00  lea         rax,[$SG11764]
                    00
  00000000000004AF: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  00000000000004B4: 4C 8D 0D 00 00 00  lea         r9,[$SG11765]
                    00
  00000000000004BB: 4C 8D 05 00 00 00  lea         r8,[$SG11766]
                    00
  00000000000004C2: 48 8D 15 00 00 00  lea         rdx,[$SG11767]
                    00
  00000000000004C9: 48 8D 0D 00 00 00  lea         rcx,[$SG11768]
                    00
  00000000000004D0: E8 00 00 00 00     call        printf
  00000000000004D5: 0F 57 C0           xorps       xmm0,xmm0
  00000000000004D8: F3 0F 11 44 24 70  movss       dword ptr [rsp+70h],xmm0
  00000000000004DE: C7 44 24 60 00 00  mov         dword ptr [rsp+60h],0
                    00 00
  00000000000004E6: EB 0A              jmp         00000000000004F2
  00000000000004E8: 8B 44 24 60        mov         eax,dword ptr [rsp+60h]
  00000000000004EC: FF C0              inc         eax
  00000000000004EE: 89 44 24 60        mov         dword ptr [rsp+60h],eax
  00000000000004F2: 8B 44 24 54        mov         eax,dword ptr [rsp+54h]
  00000000000004F6: 39 44 24 60        cmp         dword ptr [rsp+60h],eax
  00000000000004FA: 0F 8D BC 00 00 00  jge         00000000000005BC
  0000000000000500: 48 63 44 24 60     movsxd      rax,dword ptr [rsp+60h]
  0000000000000505: 48 6B C0 10        imul        rax,rax,10h
  0000000000000509: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  000000000000050E: 48 8B 04 01        mov         rax,qword ptr [rcx+rax]
  0000000000000512: 48 89 84 24 98 00  mov         qword ptr [rsp+98h],rax
                    00 00
  000000000000051A: 48 63 44 24 60     movsxd      rax,dword ptr [rsp+60h]
  000000000000051F: 48 6B C0 10        imul        rax,rax,10h
  0000000000000523: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000528: 8B 44 01 08        mov         eax,dword ptr [rcx+rax+8]
  000000000000052C: 89 84 24 84 00 00  mov         dword ptr [rsp+84h],eax
                    00
  0000000000000533: F3 0F 2A 84 24 84  cvtsi2ss    xmm0,dword ptr [rsp+84h]
                    00 00 00
  000000000000053C: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  0000000000000544: F3 0F 59 40 70     mulss       xmm0,dword ptr [rax+70h]
  0000000000000549: F3 0F 11 84 24 80  movss       dword ptr [rsp+80h],xmm0
                    00 00 00
  0000000000000552: F3 0F 10 44 24 70  movss       xmm0,dword ptr [rsp+70h]
  0000000000000558: F3 0F 58 84 24 80  addss       xmm0,dword ptr [rsp+80h]
                    00 00 00
  0000000000000561: F3 0F 11 44 24 70  movss       dword ptr [rsp+70h],xmm0
  0000000000000567: F3 0F 5A 84 24 80  cvtss2sd    xmm0,dword ptr [rsp+80h]
                    00 00 00
  0000000000000570: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  0000000000000578: F3 0F 5A 48 70     cvtss2sd    xmm1,dword ptr [rax+70h]
  000000000000057D: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  0000000000000585: 48 83 C0 04        add         rax,4
  0000000000000589: F2 0F 11 44 24 28  movsd       mmword ptr [rsp+28h],xmm0
  000000000000058F: F2 0F 11 4C 24 20  movsd       mmword ptr [rsp+20h],xmm1
  0000000000000595: 44 8B 8C 24 84 00  mov         r9d,dword ptr [rsp+84h]
                    00 00
  000000000000059D: 4C 8B C0           mov         r8,rax
  00000000000005A0: 48 8B 84 24 98 00  mov         rax,qword ptr [rsp+98h]
                    00 00
  00000000000005A8: 8B 10              mov         edx,dword ptr [rax]
  00000000000005AA: 48 8D 0D 00 00 00  lea         rcx,[$SG11769]
                    00
  00000000000005B1: E8 00 00 00 00     call        printf
  00000000000005B6: 90                 nop
  00000000000005B7: E9 2C FF FF FF     jmp         00000000000004E8
  00000000000005BC: 48 8D 0D 00 00 00  lea         rcx,[$SG11770]
                    00
  00000000000005C3: E8 00 00 00 00     call        printf
  00000000000005C8: F3 0F 5A 44 24 70  cvtss2sd    xmm0,dword ptr [rsp+70h]
  00000000000005CE: 0F 28 C8           movaps      xmm1,xmm0
  00000000000005D1: 66 48 0F 7E CA     movq        rdx,xmm1
  00000000000005D6: 48 8D 0D 00 00 00  lea         rcx,[$SG11771]
                    00
  00000000000005DD: E8 00 00 00 00     call        printf
  00000000000005E2: 48 8D 0D 00 00 00  lea         rcx,[$SG11772]
                    00
  00000000000005E9: E8 00 00 00 00     call        printf
  00000000000005EE: 48 8D 54 24 51     lea         rdx,[rsp+51h]
  00000000000005F3: 48 8D 0D 00 00 00  lea         rcx,[$SG11773]
                    00
  00000000000005FA: E8 00 00 00 00     call        scanf
  00000000000005FF: 0F BE 44 24 51     movsx       eax,byte ptr [rsp+51h]
  0000000000000604: 83 F8 73           cmp         eax,73h
  0000000000000607: 74 34              je          000000000000063D
  0000000000000609: 0F BE 44 24 51     movsx       eax,byte ptr [rsp+51h]
  000000000000060E: 83 F8 53           cmp         eax,53h
  0000000000000611: 74 2A              je          000000000000063D
  0000000000000613: 48 8D 0D 00 00 00  lea         rcx,[$SG11775]
                    00
  000000000000061A: E8 00 00 00 00     call        printf
  000000000000061F: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000624: E8 00 00 00 00     call        free
  0000000000000629: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000631: E8 00 00 00 00     call        free
  0000000000000636: 33 C0              xor         eax,eax
  0000000000000638: E9 88 01 00 00     jmp         00000000000007C5
  000000000000063D: 48 8D 15 00 00 00  lea         rdx,[$SG11776]
                    00
  0000000000000644: 48 8D 0D 00 00 00  lea         rcx,[$SG11777]
                    00
  000000000000064B: E8 00 00 00 00     call        fopen
  0000000000000650: 48 89 84 24 A8 00  mov         qword ptr [rsp+0A8h],rax
                    00 00
  0000000000000658: 48 83 BC 24 A8 00  cmp         qword ptr [rsp+0A8h],0
                    00 00 00
  0000000000000661: 75 2D              jne         0000000000000690
  0000000000000663: 48 8D 0D 00 00 00  lea         rcx,[$SG11779]
                    00
  000000000000066A: E8 00 00 00 00     call        printf
  000000000000066F: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000674: E8 00 00 00 00     call        free
  0000000000000679: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  0000000000000681: E8 00 00 00 00     call        free
  0000000000000686: B8 01 00 00 00     mov         eax,1
  000000000000068B: E9 35 01 00 00     jmp         00000000000007C5
  0000000000000690: C7 44 24 64 00 00  mov         dword ptr [rsp+64h],0
                    00 00
  0000000000000698: EB 0A              jmp         00000000000006A4
  000000000000069A: 8B 44 24 64        mov         eax,dword ptr [rsp+64h]
  000000000000069E: FF C0              inc         eax
  00000000000006A0: 89 44 24 64        mov         dword ptr [rsp+64h],eax
  00000000000006A4: 8B 44 24 54        mov         eax,dword ptr [rsp+54h]
  00000000000006A8: 39 44 24 64        cmp         dword ptr [rsp+64h],eax
  00000000000006AC: 0F 8D B9 00 00 00  jge         000000000000076B
  00000000000006B2: 48 63 44 24 64     movsxd      rax,dword ptr [rsp+64h]
  00000000000006B7: 48 6B C0 10        imul        rax,rax,10h
  00000000000006BB: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000006C0: 48 8B 04 01        mov         rax,qword ptr [rcx+rax]
  00000000000006C4: 48 89 44 24 78     mov         qword ptr [rsp+78h],rax
  00000000000006C9: 48 63 44 24 64     movsxd      rax,dword ptr [rsp+64h]
  00000000000006CE: 48 6B C0 10        imul        rax,rax,10h
  00000000000006D2: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000006D7: 8B 44 01 08        mov         eax,dword ptr [rcx+rax+8]
  00000000000006DB: 89 84 24 88 00 00  mov         dword ptr [rsp+88h],eax
                    00
  00000000000006E2: 48 8B 44 24 78     mov         rax,qword ptr [rsp+78h]
  00000000000006E7: 8B 8C 24 88 00 00  mov         ecx,dword ptr [rsp+88h]
                    00
  00000000000006EE: 8B 40 68           mov         eax,dword ptr [rax+68h]
  00000000000006F1: 2B C1              sub         eax,ecx
  00000000000006F3: 48 8B 4C 24 78     mov         rcx,qword ptr [rsp+78h]
  00000000000006F8: 89 41 68           mov         dword ptr [rcx+68h],eax
  00000000000006FB: 48 8B 44 24 78     mov         rax,qword ptr [rsp+78h]
  0000000000000700: F3 0F 5A 40 70     cvtss2sd    xmm0,dword ptr [rax+70h]
  0000000000000705: 48 8B 44 24 78     mov         rax,qword ptr [rsp+78h]
  000000000000070A: F3 0F 5A 48 6C     cvtss2sd    xmm1,dword ptr [rax+6Ch]
  000000000000070F: 48 8B 44 24 78     mov         rax,qword ptr [rsp+78h]
  0000000000000714: 48 83 C0 04        add         rax,4
  0000000000000718: 48 8D 8C 24 A0 01  lea         rcx,[rsp+1A0h]
                    00 00
  0000000000000720: 48 89 4C 24 40     mov         qword ptr [rsp+40h],rcx
  0000000000000725: F2 0F 11 44 24 38  movsd       mmword ptr [rsp+38h],xmm0
  000000000000072B: F2 0F 11 4C 24 30  movsd       mmword ptr [rsp+30h],xmm1
  0000000000000731: 8B 8C 24 88 00 00  mov         ecx,dword ptr [rsp+88h]
                    00
  0000000000000738: 89 4C 24 28        mov         dword ptr [rsp+28h],ecx
  000000000000073C: 48 89 44 24 20     mov         qword ptr [rsp+20h],rax
  0000000000000741: 48 8B 44 24 78     mov         rax,qword ptr [rsp+78h]
  0000000000000746: 44 8B 08           mov         r9d,dword ptr [rax]
  0000000000000749: 44 8B 84 24 8C 00  mov         r8d,dword ptr [rsp+8Ch]
                    00 00
  0000000000000751: 48 8D 15 00 00 00  lea         rdx,[$SG11780]
                    00
  0000000000000758: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  0000000000000760: E8 00 00 00 00     call        fprintf
  0000000000000765: 90                 nop
  0000000000000766: E9 2F FF FF FF     jmp         000000000000069A
  000000000000076B: 48 8B 8C 24 A8 00  mov         rcx,qword ptr [rsp+0A8h]
                    00 00
  0000000000000773: E8 00 00 00 00     call        fclose
  0000000000000778: 48 8D 15 00 00 00  lea         rdx,[$SG11783]
                    00
  000000000000077F: 48 8D 8C 24 B0 00  lea         rcx,[rsp+0B0h]
                    00 00
  0000000000000787: E8 00 00 00 00     call        guardarProductos
  000000000000078C: 85 C0              test        eax,eax
  000000000000078E: 75 0F              jne         000000000000079F
  0000000000000790: 48 8D 0D 00 00 00  lea         rcx,[$SG11784]
                    00
  0000000000000797: E8 00 00 00 00     call        printf
  000000000000079C: 90                 nop
  000000000000079D: EB 0D              jmp         00000000000007AC
  000000000000079F: 48 8D 0D 00 00 00  lea         rcx,[$SG11785]
                    00
  00000000000007A6: E8 00 00 00 00     call        printf
  00000000000007AB: 90                 nop
  00000000000007AC: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  00000000000007B1: E8 00 00 00 00     call        free
  00000000000007B6: 48 8B 8C 24 B0 00  mov         rcx,qword ptr [rsp+0B0h]
                    00 00
  00000000000007BE: E8 00 00 00 00     call        free
  00000000000007C3: 33 C0              xor         eax,eax
  00000000000007C5: 48 8B 8C 24 20 02  mov         rcx,qword ptr [rsp+220h]
                    00 00
  00000000000007CD: 48 33 CC           xor         rcx,rsp
  00000000000007D0: E8 00 00 00 00     call        __security_check_cookie
  00000000000007D5: 48 81 C4 38 02 00  add         rsp,238h
                    00
  00000000000007DC: C3                 ret

__local_stdio_printf_options:
  0000000000000000: 48 8D 05 00 00 00  lea         rax,[?_OptionsStorage@?1??__local_stdio_printf_options@@9@9]
                    00
  0000000000000007: C3                 ret

__local_stdio_scanf_options:
  0000000000000000: 48 8D 05 00 00 00  lea         rax,[?_OptionsStorage@?1??__local_stdio_scanf_options@@9@9]
                    00
  0000000000000007: C3                 ret

_vfprintf_l:
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: E8 00 00 00 00     call        __local_stdio_printf_options
  000000000000001D: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000022: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000027: 4C 8B 4C 24 50     mov         r9,qword ptr [rsp+50h]
  000000000000002C: 4C 8B 44 24 48     mov         r8,qword ptr [rsp+48h]
  0000000000000031: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000036: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000000000039: E8 00 00 00 00     call        __stdio_common_vfprintf
  000000000000003E: 48 83 C4 38        add         rsp,38h
  0000000000000042: C3                 ret

_vfscanf_l:
  0000000000000000: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000005: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000A: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000F: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: E8 00 00 00 00     call        __local_stdio_scanf_options
  000000000000001D: 48 8B 4C 24 58     mov         rcx,qword ptr [rsp+58h]
  0000000000000022: 48 89 4C 24 20     mov         qword ptr [rsp+20h],rcx
  0000000000000027: 4C 8B 4C 24 50     mov         r9,qword ptr [rsp+50h]
  000000000000002C: 4C 8B 44 24 48     mov         r8,qword ptr [rsp+48h]
  0000000000000031: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000036: 48 8B 08           mov         rcx,qword ptr [rax]
  0000000000000039: E8 00 00 00 00     call        __stdio_common_vfscanf
  000000000000003E: 48 83 C4 38        add         rsp,38h
  0000000000000042: C3                 ret

fprintf:
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000F: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 48 8D 44 24 50     lea         rax,[rsp+50h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: 4C 8B 4C 24 28     mov         r9,qword ptr [rsp+28h]
  0000000000000027: 45 33 C0           xor         r8d,r8d
  000000000000002A: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000002F: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000034: E8 00 00 00 00     call        _vfprintf_l
  0000000000000039: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000003D: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  0000000000000046: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000004A: 48 83 C4 38        add         rsp,38h
  000000000000004E: C3                 ret

fscanf:
  0000000000000000: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  0000000000000005: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  000000000000000A: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000F: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 48 8D 44 24 50     lea         rax,[rsp+50h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: 4C 8B 4C 24 28     mov         r9,qword ptr [rsp+28h]
  0000000000000027: 45 33 C0           xor         r8d,r8d
  000000000000002A: 48 8B 54 24 48     mov         rdx,qword ptr [rsp+48h]
  000000000000002F: 48 8B 4C 24 40     mov         rcx,qword ptr [rsp+40h]
  0000000000000034: E8 00 00 00 00     call        _vfscanf_l
  0000000000000039: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  000000000000003D: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  0000000000000046: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000004A: 48 83 C4 38        add         rsp,38h
  000000000000004E: C3                 ret

localtime:
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        _localtime64
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

printf:
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000F: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 48 8D 44 24 48     lea         rax,[rsp+48h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: B9 01 00 00 00     mov         ecx,1
  0000000000000027: E8 00 00 00 00     call        __acrt_iob_func
  000000000000002C: 4C 8B 4C 24 28     mov         r9,qword ptr [rsp+28h]
  0000000000000031: 45 33 C0           xor         r8d,r8d
  0000000000000034: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000039: 48 8B C8           mov         rcx,rax
  000000000000003C: E8 00 00 00 00     call        _vfprintf_l
  0000000000000041: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000045: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  000000000000004E: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  0000000000000052: 48 83 C4 38        add         rsp,38h
  0000000000000056: C3                 ret

scanf:
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 89 54 24 10     mov         qword ptr [rsp+10h],rdx
  000000000000000A: 4C 89 44 24 18     mov         qword ptr [rsp+18h],r8
  000000000000000F: 4C 89 4C 24 20     mov         qword ptr [rsp+20h],r9
  0000000000000014: 48 83 EC 38        sub         rsp,38h
  0000000000000018: 48 8D 44 24 48     lea         rax,[rsp+48h]
  000000000000001D: 48 89 44 24 28     mov         qword ptr [rsp+28h],rax
  0000000000000022: 33 C9              xor         ecx,ecx
  0000000000000024: E8 00 00 00 00     call        __acrt_iob_func
  0000000000000029: 4C 8B 4C 24 28     mov         r9,qword ptr [rsp+28h]
  000000000000002E: 45 33 C0           xor         r8d,r8d
  0000000000000031: 48 8B 54 24 40     mov         rdx,qword ptr [rsp+40h]
  0000000000000036: 48 8B C8           mov         rcx,rax
  0000000000000039: E8 00 00 00 00     call        _vfscanf_l
  000000000000003E: 89 44 24 20        mov         dword ptr [rsp+20h],eax
  0000000000000042: 48 C7 44 24 28 00  mov         qword ptr [rsp+28h],0
                    00 00 00
  000000000000004B: 8B 44 24 20        mov         eax,dword ptr [rsp+20h]
  000000000000004F: 48 83 C4 38        add         rsp,38h
  0000000000000053: C3                 ret

time:
  0000000000000000: 48 89 4C 24 08     mov         qword ptr [rsp+8],rcx
  0000000000000005: 48 83 EC 28        sub         rsp,28h
  0000000000000009: 48 8B 4C 24 30     mov         rcx,qword ptr [rsp+30h]
  000000000000000E: E8 00 00 00 00     call        _time64
  0000000000000013: 48 83 C4 28        add         rsp,28h
  0000000000000017: C3                 ret

  Summary

         110 .chks64
         449 .data
          90 .debug$S
          2F .drectve
          84 .pdata
         9EC .text$mn
          20 .voltbl
          68 .xdata
