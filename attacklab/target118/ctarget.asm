
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    rsp,0x8
  400c4c:	48 8b 05 a5 43 20 00 	mov    rax,QWORD PTR [rip+0x2043a5]        # 604ff8 <_DYNAMIC+0x1d0>
  400c53:	48 85 c0             	test   rax,rax
  400c56:	74 05                	je     400c5d <_init+0x15>
  400c58:	e8 43 02 00 00       	call   400ea0 <socket@plt+0x10>
  400c5d:	48 83 c4 08          	add    rsp,0x8
  400c61:	c3                   	ret    

Disassembly of section .plt:

0000000000400c70 <strcasecmp@plt-0x10>:
  400c70:	ff 35 92 43 20 00    	push   QWORD PTR [rip+0x204392]        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c76:	ff 25 94 43 20 00    	jmp    QWORD PTR [rip+0x204394]        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400c80 <strcasecmp@plt>:
  400c80:	ff 25 92 43 20 00    	jmp    QWORD PTR [rip+0x204392]        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c86:	68 00 00 00 00       	push   0x0
  400c8b:	e9 e0 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400c90 <__errno_location@plt>:
  400c90:	ff 25 8a 43 20 00    	jmp    QWORD PTR [rip+0x20438a]        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400c96:	68 01 00 00 00       	push   0x1
  400c9b:	e9 d0 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400ca0 <srandom@plt>:
  400ca0:	ff 25 82 43 20 00    	jmp    QWORD PTR [rip+0x204382]        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ca6:	68 02 00 00 00       	push   0x2
  400cab:	e9 c0 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400cb0 <strncmp@plt>:
  400cb0:	ff 25 7a 43 20 00    	jmp    QWORD PTR [rip+0x20437a]        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cb6:	68 03 00 00 00       	push   0x3
  400cbb:	e9 b0 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 72 43 20 00    	jmp    QWORD PTR [rip+0x204372]        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cc6:	68 04 00 00 00       	push   0x4
  400ccb:	e9 a0 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400cd0 <puts@plt>:
  400cd0:	ff 25 6a 43 20 00    	jmp    QWORD PTR [rip+0x20436a]        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cd6:	68 05 00 00 00       	push   0x5
  400cdb:	e9 90 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 43 20 00    	jmp    QWORD PTR [rip+0x204362]        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ce6:	68 06 00 00 00       	push   0x6
  400ceb:	e9 80 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400cf0 <__stack_chk_fail@plt>:
  400cf0:	ff 25 5a 43 20 00    	jmp    QWORD PTR [rip+0x20435a]        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400cf6:	68 07 00 00 00       	push   0x7
  400cfb:	e9 70 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d00 <mmap@plt>:
  400d00:	ff 25 52 43 20 00    	jmp    QWORD PTR [rip+0x204352]        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d06:	68 08 00 00 00       	push   0x8
  400d0b:	e9 60 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d10 <memset@plt>:
  400d10:	ff 25 4a 43 20 00    	jmp    QWORD PTR [rip+0x20434a]        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d16:	68 09 00 00 00       	push   0x9
  400d1b:	e9 50 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d20 <alarm@plt>:
  400d20:	ff 25 42 43 20 00    	jmp    QWORD PTR [rip+0x204342]        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d26:	68 0a 00 00 00       	push   0xa
  400d2b:	e9 40 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d30 <close@plt>:
  400d30:	ff 25 3a 43 20 00    	jmp    QWORD PTR [rip+0x20433a]        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d36:	68 0b 00 00 00       	push   0xb
  400d3b:	e9 30 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d40 <read@plt>:
  400d40:	ff 25 32 43 20 00    	jmp    QWORD PTR [rip+0x204332]        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d46:	68 0c 00 00 00       	push   0xc
  400d4b:	e9 20 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d50 <__libc_start_main@plt>:
  400d50:	ff 25 2a 43 20 00    	jmp    QWORD PTR [rip+0x20432a]        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d56:	68 0d 00 00 00       	push   0xd
  400d5b:	e9 10 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d60 <signal@plt>:
  400d60:	ff 25 22 43 20 00    	jmp    QWORD PTR [rip+0x204322]        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d66:	68 0e 00 00 00       	push   0xe
  400d6b:	e9 00 ff ff ff       	jmp    400c70 <_init+0x28>

0000000000400d70 <gethostbyname@plt>:
  400d70:	ff 25 1a 43 20 00    	jmp    QWORD PTR [rip+0x20431a]        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d76:	68 0f 00 00 00       	push   0xf
  400d7b:	e9 f0 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400d80 <__memmove_chk@plt>:
  400d80:	ff 25 12 43 20 00    	jmp    QWORD PTR [rip+0x204312]        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d86:	68 10 00 00 00       	push   0x10
  400d8b:	e9 e0 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400d90 <strtol@plt>:
  400d90:	ff 25 0a 43 20 00    	jmp    QWORD PTR [rip+0x20430a]        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400d96:	68 11 00 00 00       	push   0x11
  400d9b:	e9 d0 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400da0 <memcpy@plt>:
  400da0:	ff 25 02 43 20 00    	jmp    QWORD PTR [rip+0x204302]        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400da6:	68 12 00 00 00       	push   0x12
  400dab:	e9 c0 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400db0 <time@plt>:
  400db0:	ff 25 fa 42 20 00    	jmp    QWORD PTR [rip+0x2042fa]        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400db6:	68 13 00 00 00       	push   0x13
  400dbb:	e9 b0 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400dc0 <random@plt>:
  400dc0:	ff 25 f2 42 20 00    	jmp    QWORD PTR [rip+0x2042f2]        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dc6:	68 14 00 00 00       	push   0x14
  400dcb:	e9 a0 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400dd0 <_IO_getc@plt>:
  400dd0:	ff 25 ea 42 20 00    	jmp    QWORD PTR [rip+0x2042ea]        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400dd6:	68 15 00 00 00       	push   0x15
  400ddb:	e9 90 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400de0 <__isoc99_sscanf@plt>:
  400de0:	ff 25 e2 42 20 00    	jmp    QWORD PTR [rip+0x2042e2]        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400de6:	68 16 00 00 00       	push   0x16
  400deb:	e9 80 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400df0 <munmap@plt>:
  400df0:	ff 25 da 42 20 00    	jmp    QWORD PTR [rip+0x2042da]        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400df6:	68 17 00 00 00       	push   0x17
  400dfb:	e9 70 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e00 <__printf_chk@plt>:
  400e00:	ff 25 d2 42 20 00    	jmp    QWORD PTR [rip+0x2042d2]        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e06:	68 18 00 00 00       	push   0x18
  400e0b:	e9 60 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 ca 42 20 00    	jmp    QWORD PTR [rip+0x2042ca]        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e16:	68 19 00 00 00       	push   0x19
  400e1b:	e9 50 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e20 <getopt@plt>:
  400e20:	ff 25 c2 42 20 00    	jmp    QWORD PTR [rip+0x2042c2]        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e26:	68 1a 00 00 00       	push   0x1a
  400e2b:	e9 40 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e30 <strtoul@plt>:
  400e30:	ff 25 ba 42 20 00    	jmp    QWORD PTR [rip+0x2042ba]        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e36:	68 1b 00 00 00       	push   0x1b
  400e3b:	e9 30 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e40 <gethostname@plt>:
  400e40:	ff 25 b2 42 20 00    	jmp    QWORD PTR [rip+0x2042b2]        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e46:	68 1c 00 00 00       	push   0x1c
  400e4b:	e9 20 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e50 <exit@plt>:
  400e50:	ff 25 aa 42 20 00    	jmp    QWORD PTR [rip+0x2042aa]        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e56:	68 1d 00 00 00       	push   0x1d
  400e5b:	e9 10 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e60 <connect@plt>:
  400e60:	ff 25 a2 42 20 00    	jmp    QWORD PTR [rip+0x2042a2]        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e66:	68 1e 00 00 00       	push   0x1e
  400e6b:	e9 00 fe ff ff       	jmp    400c70 <_init+0x28>

0000000000400e70 <__fprintf_chk@plt>:
  400e70:	ff 25 9a 42 20 00    	jmp    QWORD PTR [rip+0x20429a]        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e76:	68 1f 00 00 00       	push   0x1f
  400e7b:	e9 f0 fd ff ff       	jmp    400c70 <_init+0x28>

0000000000400e80 <__sprintf_chk@plt>:
  400e80:	ff 25 92 42 20 00    	jmp    QWORD PTR [rip+0x204292]        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e86:	68 20 00 00 00       	push   0x20
  400e8b:	e9 e0 fd ff ff       	jmp    400c70 <_init+0x28>

0000000000400e90 <socket@plt>:
  400e90:	ff 25 8a 42 20 00    	jmp    QWORD PTR [rip+0x20428a]        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400e96:	68 21 00 00 00       	push   0x21
  400e9b:	e9 d0 fd ff ff       	jmp    400c70 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ea0 <.plt.got>:
  400ea0:	ff 25 52 41 20 00    	jmp    QWORD PTR [rip+0x204152]        # 604ff8 <_DYNAMIC+0x1d0>
  400ea6:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000400eb0 <_start>:
  400eb0:	31 ed                	xor    ebp,ebp
  400eb2:	49 89 d1             	mov    r9,rdx
  400eb5:	5e                   	pop    rsi
  400eb6:	48 89 e2             	mov    rdx,rsp
  400eb9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400ebd:	50                   	push   rax
  400ebe:	54                   	push   rsp
  400ebf:	49 c7 c0 50 2f 40 00 	mov    r8,0x402f50
  400ec6:	48 c7 c1 e0 2e 40 00 	mov    rcx,0x402ee0
  400ecd:	48 c7 c7 b5 11 40 00 	mov    rdi,0x4011b5
  400ed4:	e8 77 fe ff ff       	call   400d50 <__libc_start_main@plt>
  400ed9:	f4                   	hlt    
  400eda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400ee0 <deregister_tm_clones>:
  400ee0:	b8 d7 57 60 00       	mov    eax,0x6057d7
  400ee5:	55                   	push   rbp
  400ee6:	48 2d d0 57 60 00    	sub    rax,0x6057d0
  400eec:	48 83 f8 0e          	cmp    rax,0xe
  400ef0:	48 89 e5             	mov    rbp,rsp
  400ef3:	76 1b                	jbe    400f10 <deregister_tm_clones+0x30>
  400ef5:	b8 00 00 00 00       	mov    eax,0x0
  400efa:	48 85 c0             	test   rax,rax
  400efd:	74 11                	je     400f10 <deregister_tm_clones+0x30>
  400eff:	5d                   	pop    rbp
  400f00:	bf d0 57 60 00       	mov    edi,0x6057d0
  400f05:	ff e0                	jmp    rax
  400f07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400f0e:	00 00 
  400f10:	5d                   	pop    rbp
  400f11:	c3                   	ret    
  400f12:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400f16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400f1d:	00 00 00 

0000000000400f20 <register_tm_clones>:
  400f20:	be d0 57 60 00       	mov    esi,0x6057d0
  400f25:	55                   	push   rbp
  400f26:	48 81 ee d0 57 60 00 	sub    rsi,0x6057d0
  400f2d:	48 c1 fe 03          	sar    rsi,0x3
  400f31:	48 89 e5             	mov    rbp,rsp
  400f34:	48 89 f0             	mov    rax,rsi
  400f37:	48 c1 e8 3f          	shr    rax,0x3f
  400f3b:	48 01 c6             	add    rsi,rax
  400f3e:	48 d1 fe             	sar    rsi,1
  400f41:	74 15                	je     400f58 <register_tm_clones+0x38>
  400f43:	b8 00 00 00 00       	mov    eax,0x0
  400f48:	48 85 c0             	test   rax,rax
  400f4b:	74 0b                	je     400f58 <register_tm_clones+0x38>
  400f4d:	5d                   	pop    rbp
  400f4e:	bf d0 57 60 00       	mov    edi,0x6057d0
  400f53:	ff e0                	jmp    rax
  400f55:	0f 1f 00             	nop    DWORD PTR [rax]
  400f58:	5d                   	pop    rbp
  400f59:	c3                   	ret    
  400f5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d a1 48 20 00 00 	cmp    BYTE PTR [rip+0x2048a1],0x0        # 605808 <completed.7585>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   rbp
  400f6a:	48 89 e5             	mov    rbp,rsp
  400f6d:	e8 6e ff ff ff       	call   400ee0 <deregister_tm_clones>
  400f72:	5d                   	pop    rbp
  400f73:	c6 05 8e 48 20 00 01 	mov    BYTE PTR [rip+0x20488e],0x1        # 605808 <completed.7585>
  400f7a:	f3 c3                	repz ret 
  400f7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400f80 <frame_dummy>:
  400f80:	bf 20 4e 60 00       	mov    edi,0x604e20
  400f85:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  400f89:	75 05                	jne    400f90 <frame_dummy+0x10>
  400f8b:	eb 93                	jmp    400f20 <register_tm_clones>
  400f8d:	0f 1f 00             	nop    DWORD PTR [rax]
  400f90:	b8 00 00 00 00       	mov    eax,0x0
  400f95:	48 85 c0             	test   rax,rax
  400f98:	74 f1                	je     400f8b <frame_dummy+0xb>
  400f9a:	55                   	push   rbp
  400f9b:	48 89 e5             	mov    rbp,rsp
  400f9e:	ff d0                	call   rax
  400fa0:	5d                   	pop    rbp
  400fa1:	e9 7a ff ff ff       	jmp    400f20 <register_tm_clones>

0000000000400fa6 <usage>:
  400fa6:	48 83 ec 08          	sub    rsp,0x8
  400faa:	48 89 fa             	mov    rdx,rdi
  400fad:	83 3d 94 48 20 00 00 	cmp    DWORD PTR [rip+0x204894],0x0        # 605848 <is_checker>
  400fb4:	74 3e                	je     400ff4 <usage+0x4e>
  400fb6:	be 68 2f 40 00       	mov    esi,0x402f68
  400fbb:	bf 01 00 00 00       	mov    edi,0x1
  400fc0:	b8 00 00 00 00       	mov    eax,0x0
  400fc5:	e8 36 fe ff ff       	call   400e00 <__printf_chk@plt>
  400fca:	bf a0 2f 40 00       	mov    edi,0x402fa0
  400fcf:	e8 fc fc ff ff       	call   400cd0 <puts@plt>
  400fd4:	bf 18 31 40 00       	mov    edi,0x403118
  400fd9:	e8 f2 fc ff ff       	call   400cd0 <puts@plt>
  400fde:	bf c8 2f 40 00       	mov    edi,0x402fc8
  400fe3:	e8 e8 fc ff ff       	call   400cd0 <puts@plt>
  400fe8:	bf 32 31 40 00       	mov    edi,0x403132
  400fed:	e8 de fc ff ff       	call   400cd0 <puts@plt>
  400ff2:	eb 32                	jmp    401026 <usage+0x80>
  400ff4:	be 4e 31 40 00       	mov    esi,0x40314e
  400ff9:	bf 01 00 00 00       	mov    edi,0x1
  400ffe:	b8 00 00 00 00       	mov    eax,0x0
  401003:	e8 f8 fd ff ff       	call   400e00 <__printf_chk@plt>
  401008:	bf f0 2f 40 00       	mov    edi,0x402ff0
  40100d:	e8 be fc ff ff       	call   400cd0 <puts@plt>
  401012:	bf 18 30 40 00       	mov    edi,0x403018
  401017:	e8 b4 fc ff ff       	call   400cd0 <puts@plt>
  40101c:	bf 6c 31 40 00       	mov    edi,0x40316c
  401021:	e8 aa fc ff ff       	call   400cd0 <puts@plt>
  401026:	bf 00 00 00 00       	mov    edi,0x0
  40102b:	e8 20 fe ff ff       	call   400e50 <exit@plt>

0000000000401030 <initialize_target>:
  401030:	55                   	push   rbp
  401031:	53                   	push   rbx
  401032:	48 81 ec 18 21 00 00 	sub    rsp,0x2118
  401039:	89 f5                	mov    ebp,esi
  40103b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401042:	00 00 
  401044:	48 89 84 24 08 21 00 	mov    QWORD PTR [rsp+0x2108],rax
  40104b:	00 
  40104c:	31 c0                	xor    eax,eax
  40104e:	89 3d e4 47 20 00    	mov    DWORD PTR [rip+0x2047e4],edi        # 605838 <check_level>
  401054:	8b 3d 0e 41 20 00    	mov    edi,DWORD PTR [rip+0x20410e]        # 605168 <target_id>
  40105a:	e8 56 1e 00 00       	call   402eb5 <gencookie>
  40105f:	89 05 df 47 20 00    	mov    DWORD PTR [rip+0x2047df],eax        # 605844 <cookie>
  401065:	89 c7                	mov    edi,eax
  401067:	e8 49 1e 00 00       	call   402eb5 <gencookie>
  40106c:	89 05 ce 47 20 00    	mov    DWORD PTR [rip+0x2047ce],eax        # 605840 <authkey>
  401072:	8b 05 f0 40 20 00    	mov    eax,DWORD PTR [rip+0x2040f0]        # 605168 <target_id>
  401078:	8d 78 01             	lea    edi,[rax+0x1]
  40107b:	e8 20 fc ff ff       	call   400ca0 <srandom@plt>
  401080:	e8 3b fd ff ff       	call   400dc0 <random@plt>
  401085:	89 c7                	mov    edi,eax
  401087:	e8 03 03 00 00       	call   40138f <scramble>
  40108c:	89 c3                	mov    ebx,eax
  40108e:	85 ed                	test   ebp,ebp
  401090:	74 18                	je     4010aa <initialize_target+0x7a>
  401092:	bf 00 00 00 00       	mov    edi,0x0
  401097:	e8 14 fd ff ff       	call   400db0 <time@plt>
  40109c:	89 c7                	mov    edi,eax
  40109e:	e8 fd fb ff ff       	call   400ca0 <srandom@plt>
  4010a3:	e8 18 fd ff ff       	call   400dc0 <random@plt>
  4010a8:	eb 05                	jmp    4010af <initialize_target+0x7f>
  4010aa:	b8 00 00 00 00       	mov    eax,0x0
  4010af:	01 c3                	add    ebx,eax
  4010b1:	0f b7 db             	movzx  ebx,bx
  4010b4:	8d 04 dd 00 01 00 00 	lea    eax,[rbx*8+0x100]
  4010bb:	89 c0                	mov    eax,eax
  4010bd:	48 89 05 fc 46 20 00 	mov    QWORD PTR [rip+0x2046fc],rax        # 6057c0 <buf_offset>
  4010c4:	c6 05 9d 53 20 00 63 	mov    BYTE PTR [rip+0x20539d],0x63        # 606468 <target_prefix>
  4010cb:	83 3d f6 46 20 00 00 	cmp    DWORD PTR [rip+0x2046f6],0x0        # 6057c8 <notify>
  4010d2:	0f 84 bb 00 00 00    	je     401193 <initialize_target+0x163>
  4010d8:	83 3d 69 47 20 00 00 	cmp    DWORD PTR [rip+0x204769],0x0        # 605848 <is_checker>
  4010df:	0f 85 ae 00 00 00    	jne    401193 <initialize_target+0x163>
  4010e5:	be 00 01 00 00       	mov    esi,0x100
  4010ea:	48 89 e7             	mov    rdi,rsp
  4010ed:	e8 4e fd ff ff       	call   400e40 <gethostname@plt>
  4010f2:	85 c0                	test   eax,eax
  4010f4:	74 25                	je     40111b <initialize_target+0xeb>
  4010f6:	bf 48 30 40 00       	mov    edi,0x403048
  4010fb:	e8 d0 fb ff ff       	call   400cd0 <puts@plt>
  401100:	bf 08 00 00 00       	mov    edi,0x8
  401105:	e8 46 fd ff ff       	call   400e50 <exit@plt>
  40110a:	48 89 e6             	mov    rsi,rsp
  40110d:	e8 6e fb ff ff       	call   400c80 <strcasecmp@plt>
  401112:	85 c0                	test   eax,eax
  401114:	74 21                	je     401137 <initialize_target+0x107>
  401116:	83 c3 01             	add    ebx,0x1
  401119:	eb 05                	jmp    401120 <initialize_target+0xf0>
  40111b:	bb 00 00 00 00       	mov    ebx,0x0
  401120:	48 63 c3             	movsxd rax,ebx
  401123:	48 8b 3c c5 80 51 60 	mov    rdi,QWORD PTR [rax*8+0x605180]
  40112a:	00 
  40112b:	48 85 ff             	test   rdi,rdi
  40112e:	75 da                	jne    40110a <initialize_target+0xda>
  401130:	b8 00 00 00 00       	mov    eax,0x0
  401135:	eb 05                	jmp    40113c <initialize_target+0x10c>
  401137:	b8 01 00 00 00       	mov    eax,0x1
  40113c:	85 c0                	test   eax,eax
  40113e:	75 1c                	jne    40115c <initialize_target+0x12c>
  401140:	48 89 e2             	mov    rdx,rsp
  401143:	be 80 30 40 00       	mov    esi,0x403080
  401148:	bf 01 00 00 00       	mov    edi,0x1
  40114d:	e8 ae fc ff ff       	call   400e00 <__printf_chk@plt>
  401152:	bf 08 00 00 00       	mov    edi,0x8
  401157:	e8 f4 fc ff ff       	call   400e50 <exit@plt>
  40115c:	48 8d bc 24 00 01 00 	lea    rdi,[rsp+0x100]
  401163:	00 
  401164:	e8 b6 1a 00 00       	call   402c1f <init_driver>
  401169:	85 c0                	test   eax,eax
  40116b:	79 26                	jns    401193 <initialize_target+0x163>
  40116d:	48 8d 94 24 00 01 00 	lea    rdx,[rsp+0x100]
  401174:	00 
  401175:	be c0 30 40 00       	mov    esi,0x4030c0
  40117a:	bf 01 00 00 00       	mov    edi,0x1
  40117f:	b8 00 00 00 00       	mov    eax,0x0
  401184:	e8 77 fc ff ff       	call   400e00 <__printf_chk@plt>
  401189:	bf 08 00 00 00       	mov    edi,0x8
  40118e:	e8 bd fc ff ff       	call   400e50 <exit@plt>
  401193:	48 8b 84 24 08 21 00 	mov    rax,QWORD PTR [rsp+0x2108]
  40119a:	00 
  40119b:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4011a2:	00 00 
  4011a4:	74 05                	je     4011ab <initialize_target+0x17b>
  4011a6:	e8 45 fb ff ff       	call   400cf0 <__stack_chk_fail@plt>
  4011ab:	48 81 c4 18 21 00 00 	add    rsp,0x2118
  4011b2:	5b                   	pop    rbx
  4011b3:	5d                   	pop    rbp
  4011b4:	c3                   	ret    

00000000004011b5 <main>:
  4011b5:	41 56                	push   r14
  4011b7:	41 55                	push   r13
  4011b9:	41 54                	push   r12
  4011bb:	55                   	push   rbp
  4011bc:	53                   	push   rbx
  4011bd:	41 89 fc             	mov    r12d,edi
  4011c0:	48 89 f3             	mov    rbx,rsi
  4011c3:	be 5a 1f 40 00       	mov    esi,0x401f5a
  4011c8:	bf 0b 00 00 00       	mov    edi,0xb
  4011cd:	e8 8e fb ff ff       	call   400d60 <signal@plt>
  4011d2:	be 0c 1f 40 00       	mov    esi,0x401f0c
  4011d7:	bf 07 00 00 00       	mov    edi,0x7
  4011dc:	e8 7f fb ff ff       	call   400d60 <signal@plt>
  4011e1:	be a8 1f 40 00       	mov    esi,0x401fa8
  4011e6:	bf 04 00 00 00       	mov    edi,0x4
  4011eb:	e8 70 fb ff ff       	call   400d60 <signal@plt>
  4011f0:	83 3d 51 46 20 00 00 	cmp    DWORD PTR [rip+0x204651],0x0        # 605848 <is_checker>
  4011f7:	74 20                	je     401219 <main+0x64>
  4011f9:	be f6 1f 40 00       	mov    esi,0x401ff6
  4011fe:	bf 0e 00 00 00       	mov    edi,0xe
  401203:	e8 58 fb ff ff       	call   400d60 <signal@plt>
  401208:	bf 05 00 00 00       	mov    edi,0x5
  40120d:	e8 0e fb ff ff       	call   400d20 <alarm@plt>
  401212:	bd 8a 31 40 00       	mov    ebp,0x40318a
  401217:	eb 05                	jmp    40121e <main+0x69>
  401219:	bd 85 31 40 00       	mov    ebp,0x403185
  40121e:	48 8b 05 bb 45 20 00 	mov    rax,QWORD PTR [rip+0x2045bb]        # 6057e0 <stdin@@GLIBC_2.2.5>
  401225:	48 89 05 04 46 20 00 	mov    QWORD PTR [rip+0x204604],rax        # 605830 <infile>
  40122c:	41 bd 00 00 00 00    	mov    r13d,0x0
  401232:	41 be 00 00 00 00    	mov    r14d,0x0
  401238:	e9 c6 00 00 00       	jmp    401303 <main+0x14e>
  40123d:	83 e8 61             	sub    eax,0x61
  401240:	3c 10                	cmp    al,0x10
  401242:	0f 87 9c 00 00 00    	ja     4012e4 <main+0x12f>
  401248:	0f b6 c0             	movzx  eax,al
  40124b:	ff 24 c5 d0 31 40 00 	jmp    QWORD PTR [rax*8+0x4031d0]
  401252:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  401255:	e8 4c fd ff ff       	call   400fa6 <usage>
  40125a:	be 65 3b 40 00       	mov    esi,0x403b65
  40125f:	48 8b 3d 82 45 20 00 	mov    rdi,QWORD PTR [rip+0x204582]        # 6057e8 <optarg@@GLIBC_2.2.5>
  401266:	e8 a5 fb ff ff       	call   400e10 <fopen@plt>
  40126b:	48 89 05 be 45 20 00 	mov    QWORD PTR [rip+0x2045be],rax        # 605830 <infile>
  401272:	48 85 c0             	test   rax,rax
  401275:	0f 85 88 00 00 00    	jne    401303 <main+0x14e>
  40127b:	48 8b 0d 66 45 20 00 	mov    rcx,QWORD PTR [rip+0x204566]        # 6057e8 <optarg@@GLIBC_2.2.5>
  401282:	ba 92 31 40 00       	mov    edx,0x403192
  401287:	be 01 00 00 00       	mov    esi,0x1
  40128c:	48 8b 3d 6d 45 20 00 	mov    rdi,QWORD PTR [rip+0x20456d]        # 605800 <stderr@@GLIBC_2.2.5>
  401293:	e8 d8 fb ff ff       	call   400e70 <__fprintf_chk@plt>
  401298:	b8 01 00 00 00       	mov    eax,0x1
  40129d:	e9 e4 00 00 00       	jmp    401386 <main+0x1d1>
  4012a2:	ba 10 00 00 00       	mov    edx,0x10
  4012a7:	be 00 00 00 00       	mov    esi,0x0
  4012ac:	48 8b 3d 35 45 20 00 	mov    rdi,QWORD PTR [rip+0x204535]        # 6057e8 <optarg@@GLIBC_2.2.5>
  4012b3:	e8 78 fb ff ff       	call   400e30 <strtoul@plt>
  4012b8:	41 89 c6             	mov    r14d,eax
  4012bb:	eb 46                	jmp    401303 <main+0x14e>
  4012bd:	ba 0a 00 00 00       	mov    edx,0xa
  4012c2:	be 00 00 00 00       	mov    esi,0x0
  4012c7:	48 8b 3d 1a 45 20 00 	mov    rdi,QWORD PTR [rip+0x20451a]        # 6057e8 <optarg@@GLIBC_2.2.5>
  4012ce:	e8 bd fa ff ff       	call   400d90 <strtol@plt>
  4012d3:	41 89 c5             	mov    r13d,eax
  4012d6:	eb 2b                	jmp    401303 <main+0x14e>
  4012d8:	c7 05 e6 44 20 00 00 	mov    DWORD PTR [rip+0x2044e6],0x0        # 6057c8 <notify>
  4012df:	00 00 00 
  4012e2:	eb 1f                	jmp    401303 <main+0x14e>
  4012e4:	0f be d2             	movsx  edx,dl
  4012e7:	be af 31 40 00       	mov    esi,0x4031af
  4012ec:	bf 01 00 00 00       	mov    edi,0x1
  4012f1:	b8 00 00 00 00       	mov    eax,0x0
  4012f6:	e8 05 fb ff ff       	call   400e00 <__printf_chk@plt>
  4012fb:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  4012fe:	e8 a3 fc ff ff       	call   400fa6 <usage>
  401303:	48 89 ea             	mov    rdx,rbp
  401306:	48 89 de             	mov    rsi,rbx
  401309:	44 89 e7             	mov    edi,r12d
  40130c:	e8 0f fb ff ff       	call   400e20 <getopt@plt>
  401311:	89 c2                	mov    edx,eax
  401313:	3c ff                	cmp    al,0xff
  401315:	0f 85 22 ff ff ff    	jne    40123d <main+0x88>
  40131b:	be 00 00 00 00       	mov    esi,0x0
  401320:	44 89 ef             	mov    edi,r13d
  401323:	e8 08 fd ff ff       	call   401030 <initialize_target>
  401328:	83 3d 19 45 20 00 00 	cmp    DWORD PTR [rip+0x204519],0x0        # 605848 <is_checker>
  40132f:	74 2a                	je     40135b <main+0x1a6>
  401331:	44 3b 35 08 45 20 00 	cmp    r14d,DWORD PTR [rip+0x204508]        # 605840 <authkey>
  401338:	74 21                	je     40135b <main+0x1a6>
  40133a:	44 89 f2             	mov    edx,r14d
  40133d:	be e8 30 40 00       	mov    esi,0x4030e8
  401342:	bf 01 00 00 00       	mov    edi,0x1
  401347:	b8 00 00 00 00       	mov    eax,0x0
  40134c:	e8 af fa ff ff       	call   400e00 <__printf_chk@plt>
  401351:	b8 00 00 00 00       	mov    eax,0x0
  401356:	e8 4d 08 00 00       	call   401ba8 <check_fail>
  40135b:	8b 15 e3 44 20 00    	mov    edx,DWORD PTR [rip+0x2044e3]        # 605844 <cookie>
  401361:	be c2 31 40 00       	mov    esi,0x4031c2
  401366:	bf 01 00 00 00       	mov    edi,0x1
  40136b:	b8 00 00 00 00       	mov    eax,0x0
  401370:	e8 8b fa ff ff       	call   400e00 <__printf_chk@plt>
  401375:	48 8b 3d 44 44 20 00 	mov    rdi,QWORD PTR [rip+0x204444]        # 6057c0 <buf_offset>
  40137c:	e8 75 0d 00 00       	call   4020f6 <stable_launch>
  401381:	b8 00 00 00 00       	mov    eax,0x0
  401386:	5b                   	pop    rbx
  401387:	5d                   	pop    rbp
  401388:	41 5c                	pop    r12
  40138a:	41 5d                	pop    r13
  40138c:	41 5e                	pop    r14
  40138e:	c3                   	ret    

000000000040138f <scramble>:
  40138f:	48 83 ec 38          	sub    rsp,0x38
  401393:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40139a:	00 00 
  40139c:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  4013a1:	31 c0                	xor    eax,eax
  4013a3:	eb 10                	jmp    4013b5 <scramble+0x26>
  4013a5:	69 d0 df 1f 00 00    	imul   edx,eax,0x1fdf
  4013ab:	01 fa                	add    edx,edi
  4013ad:	89 c1                	mov    ecx,eax
  4013af:	89 14 8c             	mov    DWORD PTR [rsp+rcx*4],edx
  4013b2:	83 c0 01             	add    eax,0x1
  4013b5:	83 f8 09             	cmp    eax,0x9
  4013b8:	76 eb                	jbe    4013a5 <scramble+0x16>
  4013ba:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  4013be:	69 c0 45 57 00 00    	imul   eax,eax,0x5745
  4013c4:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  4013c8:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  4013cc:	69 c0 1f 50 00 00    	imul   eax,eax,0x501f
  4013d2:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  4013d6:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  4013da:	69 c0 9e c5 00 00    	imul   eax,eax,0xc59e
  4013e0:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  4013e4:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  4013e8:	69 c0 a2 9d 00 00    	imul   eax,eax,0x9da2
  4013ee:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  4013f2:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  4013f5:	69 c0 da a9 00 00    	imul   eax,eax,0xa9da
  4013fb:	89 04 24             	mov    DWORD PTR [rsp],eax
  4013fe:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  401402:	69 c0 5b 2a 00 00    	imul   eax,eax,0x2a5b
  401408:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  40140c:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401410:	69 c0 11 b2 00 00    	imul   eax,eax,0xb211
  401416:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  40141a:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  40141e:	69 c0 51 71 00 00    	imul   eax,eax,0x7151
  401424:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  401428:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  40142c:	69 c0 51 ac 00 00    	imul   eax,eax,0xac51
  401432:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  401436:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  40143a:	69 c0 d2 18 00 00    	imul   eax,eax,0x18d2
  401440:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  401444:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  401448:	69 c0 d8 e9 00 00    	imul   eax,eax,0xe9d8
  40144e:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  401452:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  401456:	69 c0 84 90 00 00    	imul   eax,eax,0x9084
  40145c:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  401460:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  401464:	69 c0 51 6a 00 00    	imul   eax,eax,0x6a51
  40146a:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  40146e:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  401471:	69 c0 4d 9d 00 00    	imul   eax,eax,0x9d4d
  401477:	89 04 24             	mov    DWORD PTR [rsp],eax
  40147a:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  40147e:	69 c0 31 a5 00 00    	imul   eax,eax,0xa531
  401484:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  401488:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  40148c:	69 c0 29 83 00 00    	imul   eax,eax,0x8329
  401492:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  401496:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  40149a:	69 c0 ef 24 00 00    	imul   eax,eax,0x24ef
  4014a0:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  4014a4:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  4014a8:	69 c0 6b 5e 00 00    	imul   eax,eax,0x5e6b
  4014ae:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  4014b2:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  4014b6:	69 c0 50 60 00 00    	imul   eax,eax,0x6050
  4014bc:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  4014c0:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4014c4:	69 c0 24 01 00 00    	imul   eax,eax,0x124
  4014ca:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  4014ce:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  4014d2:	69 c0 b8 92 00 00    	imul   eax,eax,0x92b8
  4014d8:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  4014dc:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  4014e0:	69 c0 63 56 00 00    	imul   eax,eax,0x5663
  4014e6:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  4014ea:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  4014ee:	69 c0 ce 22 00 00    	imul   eax,eax,0x22ce
  4014f4:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  4014f8:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  4014fc:	69 c0 cf 3b 00 00    	imul   eax,eax,0x3bcf
  401502:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  401506:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  40150a:	69 c0 84 bf 00 00    	imul   eax,eax,0xbf84
  401510:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  401514:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  401518:	69 c0 e6 3f 00 00    	imul   eax,eax,0x3fe6
  40151e:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  401522:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  401526:	69 c0 fe 74 00 00    	imul   eax,eax,0x74fe
  40152c:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  401530:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  401534:	69 c0 6e 88 00 00    	imul   eax,eax,0x886e
  40153a:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  40153e:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401542:	69 c0 02 2d 00 00    	imul   eax,eax,0x2d02
  401548:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  40154c:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  401550:	69 c0 99 42 00 00    	imul   eax,eax,0x4299
  401556:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  40155a:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  40155e:	69 c0 59 bf 00 00    	imul   eax,eax,0xbf59
  401564:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  401568:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  40156c:	69 c0 a9 ce 00 00    	imul   eax,eax,0xcea9
  401572:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  401576:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  40157a:	69 c0 0b 99 00 00    	imul   eax,eax,0x990b
  401580:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  401584:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  401588:	69 c0 d6 ce 00 00    	imul   eax,eax,0xced6
  40158e:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  401592:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  401595:	69 c0 22 29 00 00    	imul   eax,eax,0x2922
  40159b:	89 04 24             	mov    DWORD PTR [rsp],eax
  40159e:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  4015a2:	69 c0 85 03 00 00    	imul   eax,eax,0x385
  4015a8:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  4015ac:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  4015b0:	69 c0 79 fb 00 00    	imul   eax,eax,0xfb79
  4015b6:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  4015ba:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4015be:	69 c0 a3 00 00 00    	imul   eax,eax,0xa3
  4015c4:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4015c8:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  4015cc:	69 c0 9d 21 00 00    	imul   eax,eax,0x219d
  4015d2:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  4015d6:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  4015da:	69 c0 67 ed 00 00    	imul   eax,eax,0xed67
  4015e0:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  4015e4:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4015e8:	69 c0 14 91 00 00    	imul   eax,eax,0x9114
  4015ee:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  4015f2:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  4015f5:	69 c0 7e 8a 00 00    	imul   eax,eax,0x8a7e
  4015fb:	89 04 24             	mov    DWORD PTR [rsp],eax
  4015fe:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  401602:	69 c0 b8 fd 00 00    	imul   eax,eax,0xfdb8
  401608:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  40160c:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  401610:	69 c0 61 e5 00 00    	imul   eax,eax,0xe561
  401616:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  40161a:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  40161e:	69 c0 a7 38 00 00    	imul   eax,eax,0x38a7
  401624:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  401628:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  40162c:	69 c0 ed fc 00 00    	imul   eax,eax,0xfced
  401632:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  401636:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  401639:	69 c0 bc ed 00 00    	imul   eax,eax,0xedbc
  40163f:	89 04 24             	mov    DWORD PTR [rsp],eax
  401642:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  401646:	69 c0 49 dc 00 00    	imul   eax,eax,0xdc49
  40164c:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  401650:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401654:	69 c0 ab f8 00 00    	imul   eax,eax,0xf8ab
  40165a:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  40165e:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  401662:	69 c0 22 80 00 00    	imul   eax,eax,0x8022
  401668:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  40166c:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  401670:	69 c0 19 7b 00 00    	imul   eax,eax,0x7b19
  401676:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  40167a:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  40167e:	69 c0 a8 dd 00 00    	imul   eax,eax,0xdda8
  401684:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  401688:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  40168c:	69 c0 91 dd 00 00    	imul   eax,eax,0xdd91
  401692:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  401696:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  40169a:	69 c0 d9 94 00 00    	imul   eax,eax,0x94d9
  4016a0:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  4016a4:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4016a8:	69 c0 be 1a 00 00    	imul   eax,eax,0x1abe
  4016ae:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4016b2:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  4016b5:	69 c0 50 e0 00 00    	imul   eax,eax,0xe050
  4016bb:	89 04 24             	mov    DWORD PTR [rsp],eax
  4016be:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  4016c1:	69 c0 8f af 00 00    	imul   eax,eax,0xaf8f
  4016c7:	89 04 24             	mov    DWORD PTR [rsp],eax
  4016ca:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  4016ce:	69 c0 e4 b1 00 00    	imul   eax,eax,0xb1e4
  4016d4:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  4016d8:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  4016dc:	69 c0 ba 7d 00 00    	imul   eax,eax,0x7dba
  4016e2:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  4016e6:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4016ea:	69 c0 02 d8 00 00    	imul   eax,eax,0xd802
  4016f0:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4016f4:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  4016f8:	69 c0 3f bf 00 00    	imul   eax,eax,0xbf3f
  4016fe:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  401702:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401706:	69 c0 61 ae 00 00    	imul   eax,eax,0xae61
  40170c:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  401710:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  401714:	69 c0 86 a0 00 00    	imul   eax,eax,0xa086
  40171a:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  40171e:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401722:	69 c0 c3 33 00 00    	imul   eax,eax,0x33c3
  401728:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  40172c:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401730:	69 c0 c9 35 00 00    	imul   eax,eax,0x35c9
  401736:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  40173a:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  40173e:	69 c0 fe ba 00 00    	imul   eax,eax,0xbafe
  401744:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  401748:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  40174c:	69 c0 8d 37 00 00    	imul   eax,eax,0x378d
  401752:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  401756:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  40175a:	69 c0 74 27 00 00    	imul   eax,eax,0x2774
  401760:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  401764:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  401768:	69 c0 f2 76 00 00    	imul   eax,eax,0x76f2
  40176e:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  401772:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  401776:	69 c0 4d 14 00 00    	imul   eax,eax,0x144d
  40177c:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  401780:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401784:	69 c0 8f 3e 00 00    	imul   eax,eax,0x3e8f
  40178a:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  40178e:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  401792:	69 c0 82 3d 00 00    	imul   eax,eax,0x3d82
  401798:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  40179c:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  4017a0:	69 c0 6b 5f 00 00    	imul   eax,eax,0x5f6b
  4017a6:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  4017aa:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4017ae:	69 c0 65 9b 00 00    	imul   eax,eax,0x9b65
  4017b4:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4017b8:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4017bc:	69 c0 ab 86 00 00    	imul   eax,eax,0x86ab
  4017c2:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4017c6:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  4017c9:	69 c0 86 93 00 00    	imul   eax,eax,0x9386
  4017cf:	89 04 24             	mov    DWORD PTR [rsp],eax
  4017d2:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  4017d6:	69 c0 57 48 00 00    	imul   eax,eax,0x4857
  4017dc:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  4017e0:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  4017e4:	69 c0 e5 f2 00 00    	imul   eax,eax,0xf2e5
  4017ea:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  4017ee:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  4017f1:	69 c0 92 cc 00 00    	imul   eax,eax,0xcc92
  4017f7:	89 04 24             	mov    DWORD PTR [rsp],eax
  4017fa:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  4017fe:	69 c0 0e 82 00 00    	imul   eax,eax,0x820e
  401804:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  401808:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  40180c:	69 c0 8e da 00 00    	imul   eax,eax,0xda8e
  401812:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  401816:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  40181a:	69 c0 3e b3 00 00    	imul   eax,eax,0xb33e
  401820:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  401824:	8b 04 24             	mov    eax,DWORD PTR [rsp]
  401827:	69 c0 b3 d5 00 00    	imul   eax,eax,0xd5b3
  40182d:	89 04 24             	mov    DWORD PTR [rsp],eax
  401830:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401834:	69 c0 3a 27 00 00    	imul   eax,eax,0x273a
  40183a:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  40183e:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  401842:	69 c0 00 97 00 00    	imul   eax,eax,0x9700
  401848:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  40184c:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  401850:	69 c0 55 de 00 00    	imul   eax,eax,0xde55
  401856:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  40185a:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  40185e:	69 c0 24 30 00 00    	imul   eax,eax,0x3024
  401864:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  401868:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  40186c:	69 c0 ad c3 00 00    	imul   eax,eax,0xc3ad
  401872:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  401876:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  40187a:	69 c0 3d 0b 00 00    	imul   eax,eax,0xb3d
  401880:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  401884:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  401888:	69 c0 b4 6c 00 00    	imul   eax,eax,0x6cb4
  40188e:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  401892:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  401896:	69 c0 7a d2 00 00    	imul   eax,eax,0xd27a
  40189c:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  4018a0:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4018a4:	69 c0 d2 d7 00 00    	imul   eax,eax,0xd7d2
  4018aa:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4018ae:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
  4018b2:	69 c0 21 42 00 00    	imul   eax,eax,0x4221
  4018b8:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
  4018bc:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  4018c0:	69 c0 ae 03 00 00    	imul   eax,eax,0x3ae
  4018c6:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
  4018ca:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  4018ce:	69 c0 60 f1 00 00    	imul   eax,eax,0xf160
  4018d4:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  4018d8:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  4018dc:	69 c0 0f 11 00 00    	imul   eax,eax,0x110f
  4018e2:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  4018e6:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  4018ea:	69 c0 c9 c2 00 00    	imul   eax,eax,0xc2c9
  4018f0:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  4018f4:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4018f8:	69 c0 09 de 00 00    	imul   eax,eax,0xde09
  4018fe:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  401902:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  401906:	69 c0 ff 9e 00 00    	imul   eax,eax,0x9eff
  40190c:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  401910:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  401914:	69 c0 21 e5 00 00    	imul   eax,eax,0xe521
  40191a:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  40191e:	ba 00 00 00 00       	mov    edx,0x0
  401923:	b8 00 00 00 00       	mov    eax,0x0
  401928:	eb 0a                	jmp    401934 <scramble+0x5a5>
  40192a:	89 d1                	mov    ecx,edx
  40192c:	8b 0c 8c             	mov    ecx,DWORD PTR [rsp+rcx*4]
  40192f:	01 c8                	add    eax,ecx
  401931:	83 c2 01             	add    edx,0x1
  401934:	83 fa 09             	cmp    edx,0x9
  401937:	76 f1                	jbe    40192a <scramble+0x59b>
  401939:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  40193e:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  401945:	00 00 
  401947:	74 05                	je     40194e <scramble+0x5bf>
  401949:	e8 a2 f3 ff ff       	call   400cf0 <__stack_chk_fail@plt>
  40194e:	48 83 c4 38          	add    rsp,0x38
  401952:	c3                   	ret    

0000000000401953 <getbuf>:
  401953:	48 83 ec 28          	sub    rsp,0x28
  401957:	48 89 e7             	mov    rdi,rsp
  40195a:	e8 7e 02 00 00       	call   401bdd <Gets>
  40195f:	b8 01 00 00 00       	mov    eax,0x1
  401964:	48 83 c4 28          	add    rsp,0x28
  401968:	c3                   	ret    

0000000000401969 <touch1>:
  401969:	48 83 ec 08          	sub    rsp,0x8
  40196d:	c7 05 c5 3e 20 00 01 	mov    DWORD PTR [rip+0x203ec5],0x1        # 60583c <vlevel>
  401974:	00 00 00 
  401977:	bf bc 39 40 00       	mov    edi,0x4039bc
  40197c:	e8 4f f3 ff ff       	call   400cd0 <puts@plt>
  401981:	bf 01 00 00 00       	mov    edi,0x1
  401986:	e8 97 04 00 00       	call   401e22 <validate>
  40198b:	bf 00 00 00 00       	mov    edi,0x0
  401990:	e8 bb f4 ff ff       	call   400e50 <exit@plt>

0000000000401995 <touch2>:
  401995:	48 83 ec 08          	sub    rsp,0x8
  401999:	89 fa                	mov    edx,edi
  40199b:	c7 05 97 3e 20 00 02 	mov    DWORD PTR [rip+0x203e97],0x2        # 60583c <vlevel>
  4019a2:	00 00 00 
  4019a5:	39 3d 99 3e 20 00    	cmp    DWORD PTR [rip+0x203e99],edi        # 605844 <cookie>
  4019ab:	75 20                	jne    4019cd <touch2+0x38>
  4019ad:	be e0 39 40 00       	mov    esi,0x4039e0
  4019b2:	bf 01 00 00 00       	mov    edi,0x1
  4019b7:	b8 00 00 00 00       	mov    eax,0x0
  4019bc:	e8 3f f4 ff ff       	call   400e00 <__printf_chk@plt>
  4019c1:	bf 02 00 00 00       	mov    edi,0x2
  4019c6:	e8 57 04 00 00       	call   401e22 <validate>
  4019cb:	eb 1e                	jmp    4019eb <touch2+0x56>
  4019cd:	be 08 3a 40 00       	mov    esi,0x403a08
  4019d2:	bf 01 00 00 00       	mov    edi,0x1
  4019d7:	b8 00 00 00 00       	mov    eax,0x0
  4019dc:	e8 1f f4 ff ff       	call   400e00 <__printf_chk@plt>
  4019e1:	bf 02 00 00 00       	mov    edi,0x2
  4019e6:	e8 f9 04 00 00       	call   401ee4 <fail>
  4019eb:	bf 00 00 00 00       	mov    edi,0x0
  4019f0:	e8 5b f4 ff ff       	call   400e50 <exit@plt>

00000000004019f5 <hexmatch>:
  4019f5:	41 54                	push   r12
  4019f7:	55                   	push   rbp
  4019f8:	53                   	push   rbx
  4019f9:	48 83 c4 80          	add    rsp,0xffffffffffffff80
  4019fd:	89 fd                	mov    ebp,edi
  4019ff:	48 89 f3             	mov    rbx,rsi
  401a02:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401a09:	00 00 
  401a0b:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  401a10:	31 c0                	xor    eax,eax
  401a12:	e8 a9 f3 ff ff       	call   400dc0 <random@plt>
  401a17:	48 89 c1             	mov    rcx,rax
  401a1a:	48 ba 0b d7 a3 70 3d 	movabs rdx,0xa3d70a3d70a3d70b
  401a21:	0a d7 a3 
  401a24:	48 f7 ea             	imul   rdx
  401a27:	48 01 ca             	add    rdx,rcx
  401a2a:	48 c1 fa 06          	sar    rdx,0x6
  401a2e:	48 89 c8             	mov    rax,rcx
  401a31:	48 c1 f8 3f          	sar    rax,0x3f
  401a35:	48 29 c2             	sub    rdx,rax
  401a38:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  401a3c:	48 8d 14 80          	lea    rdx,[rax+rax*4]
  401a40:	48 8d 04 95 00 00 00 	lea    rax,[rdx*4+0x0]
  401a47:	00 
  401a48:	48 29 c1             	sub    rcx,rax
  401a4b:	4c 8d 24 0c          	lea    r12,[rsp+rcx*1]
  401a4f:	41 89 e8             	mov    r8d,ebp
  401a52:	b9 d9 39 40 00       	mov    ecx,0x4039d9
  401a57:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
  401a5e:	be 01 00 00 00       	mov    esi,0x1
  401a63:	4c 89 e7             	mov    rdi,r12
  401a66:	b8 00 00 00 00       	mov    eax,0x0
  401a6b:	e8 10 f4 ff ff       	call   400e80 <__sprintf_chk@plt>
  401a70:	ba 09 00 00 00       	mov    edx,0x9
  401a75:	4c 89 e6             	mov    rsi,r12
  401a78:	48 89 df             	mov    rdi,rbx
  401a7b:	e8 30 f2 ff ff       	call   400cb0 <strncmp@plt>
  401a80:	85 c0                	test   eax,eax
  401a82:	0f 94 c0             	sete   al
  401a85:	48 8b 5c 24 78       	mov    rbx,QWORD PTR [rsp+0x78]
  401a8a:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  401a91:	00 00 
  401a93:	74 05                	je     401a9a <hexmatch+0xa5>
  401a95:	e8 56 f2 ff ff       	call   400cf0 <__stack_chk_fail@plt>
  401a9a:	0f b6 c0             	movzx  eax,al
  401a9d:	48 83 ec 80          	sub    rsp,0xffffffffffffff80
  401aa1:	5b                   	pop    rbx
  401aa2:	5d                   	pop    rbp
  401aa3:	41 5c                	pop    r12
  401aa5:	c3                   	ret    

0000000000401aa6 <touch3>:
  401aa6:	53                   	push   rbx
  401aa7:	48 89 fb             	mov    rbx,rdi
  401aaa:	c7 05 88 3d 20 00 03 	mov    DWORD PTR [rip+0x203d88],0x3        # 60583c <vlevel>
  401ab1:	00 00 00 
  401ab4:	48 89 fe             	mov    rsi,rdi
  401ab7:	8b 3d 87 3d 20 00    	mov    edi,DWORD PTR [rip+0x203d87]        # 605844 <cookie>
  401abd:	e8 33 ff ff ff       	call   4019f5 <hexmatch>
  401ac2:	85 c0                	test   eax,eax
  401ac4:	74 23                	je     401ae9 <touch3+0x43>
  401ac6:	48 89 da             	mov    rdx,rbx
  401ac9:	be 30 3a 40 00       	mov    esi,0x403a30
  401ace:	bf 01 00 00 00       	mov    edi,0x1
  401ad3:	b8 00 00 00 00       	mov    eax,0x0
  401ad8:	e8 23 f3 ff ff       	call   400e00 <__printf_chk@plt>
  401add:	bf 03 00 00 00       	mov    edi,0x3
  401ae2:	e8 3b 03 00 00       	call   401e22 <validate>
  401ae7:	eb 21                	jmp    401b0a <touch3+0x64>
  401ae9:	48 89 da             	mov    rdx,rbx
  401aec:	be 58 3a 40 00       	mov    esi,0x403a58
  401af1:	bf 01 00 00 00       	mov    edi,0x1
  401af6:	b8 00 00 00 00       	mov    eax,0x0
  401afb:	e8 00 f3 ff ff       	call   400e00 <__printf_chk@plt>
  401b00:	bf 03 00 00 00       	mov    edi,0x3
  401b05:	e8 da 03 00 00       	call   401ee4 <fail>
  401b0a:	bf 00 00 00 00       	mov    edi,0x0
  401b0f:	e8 3c f3 ff ff       	call   400e50 <exit@plt>

0000000000401b14 <test>:
  401b14:	48 83 ec 08          	sub    rsp,0x8
  401b18:	b8 00 00 00 00       	mov    eax,0x0
  401b1d:	e8 31 fe ff ff       	call   401953 <getbuf>
  401b22:	89 c2                	mov    edx,eax
  401b24:	be 80 3a 40 00       	mov    esi,0x403a80
  401b29:	bf 01 00 00 00       	mov    edi,0x1
  401b2e:	b8 00 00 00 00       	mov    eax,0x0
  401b33:	e8 c8 f2 ff ff       	call   400e00 <__printf_chk@plt>
  401b38:	48 83 c4 08          	add    rsp,0x8
  401b3c:	c3                   	ret    

0000000000401b3d <save_char>:
  401b3d:	8b 05 21 49 20 00    	mov    eax,DWORD PTR [rip+0x204921]        # 606464 <gets_cnt>
  401b43:	3d ff 03 00 00       	cmp    eax,0x3ff
  401b48:	7f 49                	jg     401b93 <save_char+0x56>
  401b4a:	8d 14 40             	lea    edx,[rax+rax*2]
  401b4d:	89 f9                	mov    ecx,edi
  401b4f:	c0 e9 04             	shr    cl,0x4
  401b52:	83 e1 0f             	and    ecx,0xf
  401b55:	0f b6 b1 a0 3d 40 00 	movzx  esi,BYTE PTR [rcx+0x403da0]
  401b5c:	48 63 ca             	movsxd rcx,edx
  401b5f:	40 88 b1 60 58 60 00 	mov    BYTE PTR [rcx+0x605860],sil
  401b66:	8d 4a 01             	lea    ecx,[rdx+0x1]
  401b69:	83 e7 0f             	and    edi,0xf
  401b6c:	0f b6 b7 a0 3d 40 00 	movzx  esi,BYTE PTR [rdi+0x403da0]
  401b73:	48 63 c9             	movsxd rcx,ecx
  401b76:	40 88 b1 60 58 60 00 	mov    BYTE PTR [rcx+0x605860],sil
  401b7d:	83 c2 02             	add    edx,0x2
  401b80:	48 63 d2             	movsxd rdx,edx
  401b83:	c6 82 60 58 60 00 20 	mov    BYTE PTR [rdx+0x605860],0x20
  401b8a:	83 c0 01             	add    eax,0x1
  401b8d:	89 05 d1 48 20 00    	mov    DWORD PTR [rip+0x2048d1],eax        # 606464 <gets_cnt>
  401b93:	f3 c3                	repz ret 

0000000000401b95 <save_term>:
  401b95:	8b 05 c9 48 20 00    	mov    eax,DWORD PTR [rip+0x2048c9]        # 606464 <gets_cnt>
  401b9b:	8d 04 40             	lea    eax,[rax+rax*2]
  401b9e:	48 98                	cdqe   
  401ba0:	c6 80 60 58 60 00 00 	mov    BYTE PTR [rax+0x605860],0x0
  401ba7:	c3                   	ret    

0000000000401ba8 <check_fail>:
  401ba8:	48 83 ec 08          	sub    rsp,0x8
  401bac:	0f be 15 b5 48 20 00 	movsx  edx,BYTE PTR [rip+0x2048b5]        # 606468 <target_prefix>
  401bb3:	41 b8 60 58 60 00    	mov    r8d,0x605860
  401bb9:	8b 0d 79 3c 20 00    	mov    ecx,DWORD PTR [rip+0x203c79]        # 605838 <check_level>
  401bbf:	be a3 3a 40 00       	mov    esi,0x403aa3
  401bc4:	bf 01 00 00 00       	mov    edi,0x1
  401bc9:	b8 00 00 00 00       	mov    eax,0x0
  401bce:	e8 2d f2 ff ff       	call   400e00 <__printf_chk@plt>
  401bd3:	bf 01 00 00 00       	mov    edi,0x1
  401bd8:	e8 73 f2 ff ff       	call   400e50 <exit@plt>

0000000000401bdd <Gets>:
  401bdd:	41 54                	push   r12
  401bdf:	55                   	push   rbp
  401be0:	53                   	push   rbx
  401be1:	49 89 fc             	mov    r12,rdi
  401be4:	c7 05 76 48 20 00 00 	mov    DWORD PTR [rip+0x204876],0x0        # 606464 <gets_cnt>
  401beb:	00 00 00 
  401bee:	48 89 fb             	mov    rbx,rdi
  401bf1:	eb 11                	jmp    401c04 <Gets+0x27>
  401bf3:	48 8d 6b 01          	lea    rbp,[rbx+0x1]
  401bf7:	88 03                	mov    BYTE PTR [rbx],al
  401bf9:	0f b6 f8             	movzx  edi,al
  401bfc:	e8 3c ff ff ff       	call   401b3d <save_char>
  401c01:	48 89 eb             	mov    rbp-0x8,rbp
  401c04:	48 8b 3d 25 3c 20 00 	mov    rdi,QWORD PTR [rip+0x203c25]        # 605830 <infile>
  401c0b:	e8 c0 f1 ff ff       	call   400dd0 <_IO_getc@plt>
  401c10:	83 f8 ff             	cmp    eax,0xffffffff
  401c13:	74 05                	je     401c1a <Gets+0x3d>
  401c15:	83 f8 0a             	cmp    eax,0xa
  401c18:	75 d9                	jne    401bf3 <Gets+0x16>
  401c1a:	c6 03 00             	mov    BYTE PTR [rbx],0x0
  401c1d:	b8 00 00 00 00       	mov    eax,0x0
  401c22:	e8 6e ff ff ff       	call   401b95 <save_term>
  401c27:	4c 89 e0             	mov    rax,r12
  401c2a:	5b                   	pop    rbx
  401c2b:	5d                   	pop    rbp
  401c2c:	41 5c                	pop    r12
  401c2e:	c3                   	ret    

0000000000401c2f <notify_server>:
  401c2f:	53                   	push   rbx
  401c30:	48 81 ec 10 40 00 00 	sub    rsp,0x4010
  401c37:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401c3e:	00 00 
  401c40:	48 89 84 24 08 40 00 	mov    QWORD PTR [rsp+0x4008],rax
  401c47:	00 
  401c48:	31 c0                	xor    eax,eax
  401c4a:	83 3d f7 3b 20 00 00 	cmp    DWORD PTR [rip+0x203bf7],0x0        # 605848 <is_checker>
  401c51:	0f 85 aa 01 00 00    	jne    401e01 <notify_server+0x1d2>
  401c57:	89 fb                	mov    ebx,edi
  401c59:	8b 05 05 48 20 00    	mov    eax,DWORD PTR [rip+0x204805]        # 606464 <gets_cnt>
  401c5f:	83 c0 64             	add    eax,0x64
  401c62:	3d 00 20 00 00       	cmp    eax,0x2000
  401c67:	7e 1e                	jle    401c87 <notify_server+0x58>
  401c69:	be d8 3b 40 00       	mov    esi,0x403bd8
  401c6e:	bf 01 00 00 00       	mov    edi,0x1
  401c73:	b8 00 00 00 00       	mov    eax,0x0
  401c78:	e8 83 f1 ff ff       	call   400e00 <__printf_chk@plt>
  401c7d:	bf 01 00 00 00       	mov    edi,0x1
  401c82:	e8 c9 f1 ff ff       	call   400e50 <exit@plt>
  401c87:	0f be 05 da 47 20 00 	movsx  eax,BYTE PTR [rip+0x2047da]        # 606468 <target_prefix>
  401c8e:	83 3d 33 3b 20 00 00 	cmp    DWORD PTR [rip+0x203b33],0x0        # 6057c8 <notify>
  401c95:	74 08                	je     401c9f <notify_server+0x70>
  401c97:	8b 15 a3 3b 20 00    	mov    edx,DWORD PTR [rip+0x203ba3]        # 605840 <authkey>
  401c9d:	eb 05                	jmp    401ca4 <notify_server+0x75>
  401c9f:	ba ff ff ff ff       	mov    edx,0xffffffff
  401ca4:	85 db                	test   ebx,ebx
  401ca6:	74 08                	je     401cb0 <notify_server+0x81>
  401ca8:	41 b9 b9 3a 40 00    	mov    r9d,0x403ab9
  401cae:	eb 06                	jmp    401cb6 <notify_server+0x87>
  401cb0:	41 b9 be 3a 40 00    	mov    r9d,0x403abe
  401cb6:	68 60 58 60 00       	push   0x605860
  401cbb:	56                   	push   rsi
  401cbc:	50                   	push   rax
  401cbd:	52                   	push   rdx
  401cbe:	44 8b 05 a3 34 20 00 	mov    r8d,DWORD PTR [rip+0x2034a3]        # 605168 <target_id>
  401cc5:	b9 c3 3a 40 00       	mov    ecx,0x403ac3
  401cca:	ba 00 20 00 00       	mov    edx,0x2000
  401ccf:	be 01 00 00 00       	mov    esi,0x1
  401cd4:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
  401cd9:	b8 00 00 00 00       	mov    eax,0x0
  401cde:	e8 9d f1 ff ff       	call   400e80 <__sprintf_chk@plt>
  401ce3:	48 83 c4 20          	add    rsp,0x20
  401ce7:	83 3d da 3a 20 00 00 	cmp    DWORD PTR [rip+0x203ada],0x0        # 6057c8 <notify>
  401cee:	0f 84 81 00 00 00    	je     401d75 <notify_server+0x146>
  401cf4:	85 db                	test   ebx,ebx
  401cf6:	74 6e                	je     401d66 <notify_server+0x137>
  401cf8:	4c 8d 8c 24 00 20 00 	lea    r9,[rsp+0x2000]
  401cff:	00 
  401d00:	41 b8 00 00 00 00    	mov    r8d,0x0
  401d06:	48 89 e1             	mov    rcx,rsp
  401d09:	48 8b 15 60 34 20 00 	mov    rdx,QWORD PTR [rip+0x203460]        # 605170 <lab>
  401d10:	48 8b 35 61 34 20 00 	mov    rsi,QWORD PTR [rip+0x203461]        # 605178 <course>
  401d17:	48 8b 3d 42 34 20 00 	mov    rdi,QWORD PTR [rip+0x203442]        # 605160 <user_id>
  401d1e:	e8 ef 10 00 00       	call   402e12 <driver_post>
  401d23:	85 c0                	test   eax,eax
  401d25:	79 26                	jns    401d4d <notify_server+0x11e>
  401d27:	48 8d 94 24 00 20 00 	lea    rdx,[rsp+0x2000]
  401d2e:	00 
  401d2f:	be df 3a 40 00       	mov    esi,0x403adf
  401d34:	bf 01 00 00 00       	mov    edi,0x1
  401d39:	b8 00 00 00 00       	mov    eax,0x0
  401d3e:	e8 bd f0 ff ff       	call   400e00 <__printf_chk@plt>
  401d43:	bf 01 00 00 00       	mov    edi,0x1
  401d48:	e8 03 f1 ff ff       	call   400e50 <exit@plt>
  401d4d:	bf 08 3c 40 00       	mov    edi,0x403c08
  401d52:	e8 79 ef ff ff       	call   400cd0 <puts@plt>
  401d57:	bf eb 3a 40 00       	mov    edi,0x403aeb
  401d5c:	e8 6f ef ff ff       	call   400cd0 <puts@plt>
  401d61:	e9 9b 00 00 00       	jmp    401e01 <notify_server+0x1d2>
  401d66:	bf f5 3a 40 00       	mov    edi,0x403af5
  401d6b:	e8 60 ef ff ff       	call   400cd0 <puts@plt>
  401d70:	e9 8c 00 00 00       	jmp    401e01 <notify_server+0x1d2>
  401d75:	85 db                	test   ebx,ebx
  401d77:	74 07                	je     401d80 <notify_server+0x151>
  401d79:	ba b9 3a 40 00       	mov    edx,0x403ab9
  401d7e:	eb 05                	jmp    401d85 <notify_server+0x156>
  401d80:	ba be 3a 40 00       	mov    edx,0x403abe
  401d85:	be 40 3c 40 00       	mov    esi,0x403c40
  401d8a:	bf 01 00 00 00       	mov    edi,0x1
  401d8f:	b8 00 00 00 00       	mov    eax,0x0
  401d94:	e8 67 f0 ff ff       	call   400e00 <__printf_chk@plt>
  401d99:	48 8b 15 c0 33 20 00 	mov    rdx,QWORD PTR [rip+0x2033c0]        # 605160 <user_id>
  401da0:	be fc 3a 40 00       	mov    esi,0x403afc
  401da5:	bf 01 00 00 00       	mov    edi,0x1
  401daa:	b8 00 00 00 00       	mov    eax,0x0
  401daf:	e8 4c f0 ff ff       	call   400e00 <__printf_chk@plt>
  401db4:	48 8b 15 bd 33 20 00 	mov    rdx,QWORD PTR [rip+0x2033bd]        # 605178 <course>
  401dbb:	be 09 3b 40 00       	mov    esi,0x403b09
  401dc0:	bf 01 00 00 00       	mov    edi,0x1
  401dc5:	b8 00 00 00 00       	mov    eax,0x0
  401dca:	e8 31 f0 ff ff       	call   400e00 <__printf_chk@plt>
  401dcf:	48 8b 15 9a 33 20 00 	mov    rdx,QWORD PTR [rip+0x20339a]        # 605170 <lab>
  401dd6:	be 15 3b 40 00       	mov    esi,0x403b15
  401ddb:	bf 01 00 00 00       	mov    edi,0x1
  401de0:	b8 00 00 00 00       	mov    eax,0x0
  401de5:	e8 16 f0 ff ff       	call   400e00 <__printf_chk@plt>
  401dea:	48 89 e2             	mov    rdx,rsp
  401ded:	be 1e 3b 40 00       	mov    esi,0x403b1e
  401df2:	bf 01 00 00 00       	mov    edi,0x1
  401df7:	b8 00 00 00 00       	mov    eax,0x0
  401dfc:	e8 ff ef ff ff       	call   400e00 <__printf_chk@plt>
  401e01:	48 8b 84 24 08 40 00 	mov    rax,QWORD PTR [rsp+0x4008]
  401e08:	00 
  401e09:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401e10:	00 00 
  401e12:	74 05                	je     401e19 <notify_server+0x1ea>
  401e14:	e8 d7 ee ff ff       	call   400cf0 <__stack_chk_fail@plt>
  401e19:	48 81 c4 10 40 00 00 	add    rsp,0x4010
  401e20:	5b                   	pop    rbx
  401e21:	c3                   	ret    

0000000000401e22 <validate>:
  401e22:	53                   	push   rbx
  401e23:	89 fb                	mov    ebx,edi
  401e25:	83 3d 1c 3a 20 00 00 	cmp    DWORD PTR [rip+0x203a1c],0x0        # 605848 <is_checker>
  401e2c:	74 6b                	je     401e99 <validate+0x77>
  401e2e:	39 3d 08 3a 20 00    	cmp    DWORD PTR [rip+0x203a08],edi        # 60583c <vlevel>
  401e34:	74 14                	je     401e4a <validate+0x28>
  401e36:	bf 2a 3b 40 00       	mov    edi,0x403b2a
  401e3b:	e8 90 ee ff ff       	call   400cd0 <puts@plt>
  401e40:	b8 00 00 00 00       	mov    eax,0x0
  401e45:	e8 5e fd ff ff       	call   401ba8 <check_fail>
  401e4a:	8b 15 e8 39 20 00    	mov    edx,DWORD PTR [rip+0x2039e8]        # 605838 <check_level>
  401e50:	39 d7                	cmp    edi,edx
  401e52:	74 20                	je     401e74 <validate+0x52>
  401e54:	89 f9                	mov    ecx,edi
  401e56:	be 68 3c 40 00       	mov    esi,0x403c68
  401e5b:	bf 01 00 00 00       	mov    edi,0x1
  401e60:	b8 00 00 00 00       	mov    eax,0x0
  401e65:	e8 96 ef ff ff       	call   400e00 <__printf_chk@plt>
  401e6a:	b8 00 00 00 00       	mov    eax,0x0
  401e6f:	e8 34 fd ff ff       	call   401ba8 <check_fail>
  401e74:	0f be 15 ed 45 20 00 	movsx  edx,BYTE PTR [rip+0x2045ed]        # 606468 <target_prefix>
  401e7b:	41 b8 60 58 60 00    	mov    r8d,0x605860
  401e81:	89 f9                	mov    ecx,edi
  401e83:	be 48 3b 40 00       	mov    esi,0x403b48
  401e88:	bf 01 00 00 00       	mov    edi,0x1
  401e8d:	b8 00 00 00 00       	mov    eax,0x0
  401e92:	e8 69 ef ff ff       	call   400e00 <__printf_chk@plt>
  401e97:	eb 49                	jmp    401ee2 <validate+0xc0>
  401e99:	3b 3d 9d 39 20 00    	cmp    edi,DWORD PTR [rip+0x20399d]        # 60583c <vlevel>
  401e9f:	74 18                	je     401eb9 <validate+0x97>
  401ea1:	bf 2a 3b 40 00       	mov    edi,0x403b2a
  401ea6:	e8 25 ee ff ff       	call   400cd0 <puts@plt>
  401eab:	89 de                	mov    esi,ebx
  401ead:	bf 00 00 00 00       	mov    edi,0x0
  401eb2:	e8 78 fd ff ff       	call   401c2f <notify_server>
  401eb7:	eb 29                	jmp    401ee2 <validate+0xc0>
  401eb9:	0f be 0d a8 45 20 00 	movsx  ecx,BYTE PTR [rip+0x2045a8]        # 606468 <target_prefix>
  401ec0:	89 fa                	mov    edx,edi
  401ec2:	be 90 3c 40 00       	mov    esi,0x403c90
  401ec7:	bf 01 00 00 00       	mov    edi,0x1
  401ecc:	b8 00 00 00 00       	mov    eax,0x0
  401ed1:	e8 2a ef ff ff       	call   400e00 <__printf_chk@plt>
  401ed6:	89 de                	mov    esi,ebx
  401ed8:	bf 01 00 00 00       	mov    edi,0x1
  401edd:	e8 4d fd ff ff       	call   401c2f <notify_server>
  401ee2:	5b                   	pop    rbx
  401ee3:	c3                   	ret    

0000000000401ee4 <fail>:
  401ee4:	48 83 ec 08          	sub    rsp,0x8
  401ee8:	83 3d 59 39 20 00 00 	cmp    DWORD PTR [rip+0x203959],0x0        # 605848 <is_checker>
  401eef:	74 0a                	je     401efb <fail+0x17>
  401ef1:	b8 00 00 00 00       	mov    eax,0x0
  401ef6:	e8 ad fc ff ff       	call   401ba8 <check_fail>
  401efb:	89 fe                	mov    esi,edi
  401efd:	bf 00 00 00 00       	mov    edi,0x0
  401f02:	e8 28 fd ff ff       	call   401c2f <notify_server>
  401f07:	48 83 c4 08          	add    rsp,0x8
  401f0b:	c3                   	ret    

0000000000401f0c <bushandler>:
  401f0c:	48 83 ec 08          	sub    rsp,0x8
  401f10:	83 3d 31 39 20 00 00 	cmp    DWORD PTR [rip+0x203931],0x0        # 605848 <is_checker>
  401f17:	74 14                	je     401f2d <bushandler+0x21>
  401f19:	bf 5d 3b 40 00       	mov    edi,0x403b5d
  401f1e:	e8 ad ed ff ff       	call   400cd0 <puts@plt>
  401f23:	b8 00 00 00 00       	mov    eax,0x0
  401f28:	e8 7b fc ff ff       	call   401ba8 <check_fail>
  401f2d:	bf c8 3c 40 00       	mov    edi,0x403cc8
  401f32:	e8 99 ed ff ff       	call   400cd0 <puts@plt>
  401f37:	bf 67 3b 40 00       	mov    edi,0x403b67
  401f3c:	e8 8f ed ff ff       	call   400cd0 <puts@plt>
  401f41:	be 00 00 00 00       	mov    esi,0x0
  401f46:	bf 00 00 00 00       	mov    edi,0x0
  401f4b:	e8 df fc ff ff       	call   401c2f <notify_server>
  401f50:	bf 01 00 00 00       	mov    edi,0x1
  401f55:	e8 f6 ee ff ff       	call   400e50 <exit@plt>

0000000000401f5a <seghandler>:
  401f5a:	48 83 ec 08          	sub    rsp,0x8
  401f5e:	83 3d e3 38 20 00 00 	cmp    DWORD PTR [rip+0x2038e3],0x0        # 605848 <is_checker>
  401f65:	74 14                	je     401f7b <seghandler+0x21>
  401f67:	bf 7d 3b 40 00       	mov    edi,0x403b7d
  401f6c:	e8 5f ed ff ff       	call   400cd0 <puts@plt>
  401f71:	b8 00 00 00 00       	mov    eax,0x0
  401f76:	e8 2d fc ff ff       	call   401ba8 <check_fail>
  401f7b:	bf e8 3c 40 00       	mov    edi,0x403ce8
  401f80:	e8 4b ed ff ff       	call   400cd0 <puts@plt>
  401f85:	bf 67 3b 40 00       	mov    edi,0x403b67
  401f8a:	e8 41 ed ff ff       	call   400cd0 <puts@plt>
  401f8f:	be 00 00 00 00       	mov    esi,0x0
  401f94:	bf 00 00 00 00       	mov    edi,0x0
  401f99:	e8 91 fc ff ff       	call   401c2f <notify_server>
  401f9e:	bf 01 00 00 00       	mov    edi,0x1
  401fa3:	e8 a8 ee ff ff       	call   400e50 <exit@plt>

0000000000401fa8 <illegalhandler>:
  401fa8:	48 83 ec 08          	sub    rsp,0x8
  401fac:	83 3d 95 38 20 00 00 	cmp    DWORD PTR [rip+0x203895],0x0        # 605848 <is_checker>
  401fb3:	74 14                	je     401fc9 <illegalhandler+0x21>
  401fb5:	bf 90 3b 40 00       	mov    edi,0x403b90
  401fba:	e8 11 ed ff ff       	call   400cd0 <puts@plt>
  401fbf:	b8 00 00 00 00       	mov    eax,0x0
  401fc4:	e8 df fb ff ff       	call   401ba8 <check_fail>
  401fc9:	bf 10 3d 40 00       	mov    edi,0x403d10
  401fce:	e8 fd ec ff ff       	call   400cd0 <puts@plt>
  401fd3:	bf 67 3b 40 00       	mov    edi,0x403b67
  401fd8:	e8 f3 ec ff ff       	call   400cd0 <puts@plt>
  401fdd:	be 00 00 00 00       	mov    esi,0x0
  401fe2:	bf 00 00 00 00       	mov    edi,0x0
  401fe7:	e8 43 fc ff ff       	call   401c2f <notify_server>
  401fec:	bf 01 00 00 00       	mov    edi,0x1
  401ff1:	e8 5a ee ff ff       	call   400e50 <exit@plt>

0000000000401ff6 <sigalrmhandler>:
  401ff6:	48 83 ec 08          	sub    rsp,0x8
  401ffa:	83 3d 47 38 20 00 00 	cmp    DWORD PTR [rip+0x203847],0x0        # 605848 <is_checker>
  402001:	74 14                	je     402017 <sigalrmhandler+0x21>
  402003:	bf a4 3b 40 00       	mov    edi,0x403ba4
  402008:	e8 c3 ec ff ff       	call   400cd0 <puts@plt>
  40200d:	b8 00 00 00 00       	mov    eax,0x0
  402012:	e8 91 fb ff ff       	call   401ba8 <check_fail>
  402017:	ba 05 00 00 00       	mov    edx,0x5
  40201c:	be 40 3d 40 00       	mov    esi,0x403d40
  402021:	bf 01 00 00 00       	mov    edi,0x1
  402026:	b8 00 00 00 00       	mov    eax,0x0
  40202b:	e8 d0 ed ff ff       	call   400e00 <__printf_chk@plt>
  402030:	be 00 00 00 00       	mov    esi,0x0
  402035:	bf 00 00 00 00       	mov    edi,0x0
  40203a:	e8 f0 fb ff ff       	call   401c2f <notify_server>
  40203f:	bf 01 00 00 00       	mov    edi,0x1
  402044:	e8 07 ee ff ff       	call   400e50 <exit@plt>

0000000000402049 <launch>:
  402049:	55                   	push   rbp
  40204a:	48 89 e5             	mov    rbp,rsp
  40204d:	48 83 ec 10          	sub    rsp,0x10
  402051:	48 89 fa             	mov    rdx,rdi
  402054:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40205b:	00 00 
  40205d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402061:	31 c0                	xor    eax,eax
  402063:	48 8d 47 1e          	lea    rax,[rdi+0x1e]
  402067:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
  40206b:	48 29 c4             	sub    rsp,rax
  40206e:	48 8d 7c 24 0f       	lea    rdi,[rsp+0xf]
  402073:	48 83 e7 f0          	and    rdi,0xfffffffffffffff0
  402077:	be f4 00 00 00       	mov    esi,0xf4
  40207c:	e8 8f ec ff ff       	call   400d10 <memset@plt>
  402081:	48 8b 05 58 37 20 00 	mov    rax,QWORD PTR [rip+0x203758]        # 6057e0 <stdin@@GLIBC_2.2.5>
  402088:	48 39 05 a1 37 20 00 	cmp    QWORD PTR [rip+0x2037a1],rax        # 605830 <infile>
  40208f:	75 14                	jne    4020a5 <launch+0x5c>
  402091:	be ac 3b 40 00       	mov    esi,0x403bac
  402096:	bf 01 00 00 00       	mov    edi,0x1
  40209b:	b8 00 00 00 00       	mov    eax,0x0
  4020a0:	e8 5b ed ff ff       	call   400e00 <__printf_chk@plt>
  4020a5:	c7 05 8d 37 20 00 00 	mov    DWORD PTR [rip+0x20378d],0x0        # 60583c <vlevel>
  4020ac:	00 00 00 
  4020af:	b8 00 00 00 00       	mov    eax,0x0
  4020b4:	e8 5b fa ff ff       	call   401b14 <test>
  4020b9:	83 3d 88 37 20 00 00 	cmp    DWORD PTR [rip+0x203788],0x0        # 605848 <is_checker>
  4020c0:	74 14                	je     4020d6 <launch+0x8d>
  4020c2:	bf b9 3b 40 00       	mov    edi,0x403bb9
  4020c7:	e8 04 ec ff ff       	call   400cd0 <puts@plt>
  4020cc:	b8 00 00 00 00       	mov    eax,0x0
  4020d1:	e8 d2 fa ff ff       	call   401ba8 <check_fail>
  4020d6:	bf c4 3b 40 00       	mov    edi,0x403bc4
  4020db:	e8 f0 eb ff ff       	call   400cd0 <puts@plt>
  4020e0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4020e4:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4020eb:	00 00 
  4020ed:	74 05                	je     4020f4 <launch+0xab>
  4020ef:	e8 fc eb ff ff       	call   400cf0 <__stack_chk_fail@plt>
  4020f4:	c9                   	leave  
  4020f5:	c3                   	ret    

00000000004020f6 <stable_launch>:
  4020f6:	53                   	push   rbx
  4020f7:	48 89 3d 2a 37 20 00 	mov    QWORD PTR [rip+0x20372a],rdi        # 605828 <global_offset>
  4020fe:	41 b9 00 00 00 00    	mov    r9d,0x0
  402104:	41 b8 00 00 00 00    	mov    r8d,0x0
  40210a:	b9 32 01 00 00       	mov    ecx,0x132
  40210f:	ba 07 00 00 00       	mov    edx,0x7
  402114:	be 00 00 10 00       	mov    esi,0x100000
  402119:	bf 00 60 58 55       	mov    edi,0x55586000
  40211e:	e8 dd eb ff ff       	call   400d00 <mmap@plt>
  402123:	48 89 c3             	mov    rbx,rax
  402126:	48 3d 00 60 58 55    	cmp    rax,0x55586000
  40212c:	74 37                	je     402165 <stable_launch+0x6f>
  40212e:	be 00 00 10 00       	mov    esi,0x100000
  402133:	48 89 c7             	mov    rdi,rax
  402136:	e8 b5 ec ff ff       	call   400df0 <munmap@plt>
  40213b:	b9 00 60 58 55       	mov    ecx,0x55586000
  402140:	ba 78 3d 40 00       	mov    edx,0x403d78
  402145:	be 01 00 00 00       	mov    esi,0x1
  40214a:	48 8b 3d af 36 20 00 	mov    rdi,QWORD PTR [rip+0x2036af]        # 605800 <stderr@@GLIBC_2.2.5>
  402151:	b8 00 00 00 00       	mov    eax,0x0
  402156:	e8 15 ed ff ff       	call   400e70 <__fprintf_chk@plt>
  40215b:	bf 01 00 00 00       	mov    edi,0x1
  402160:	e8 eb ec ff ff       	call   400e50 <exit@plt>
  402165:	48 8d 90 f8 ff 0f 00 	lea    rdx,[rax+0xffff8]
  40216c:	48 89 15 fd 42 20 00 	mov    QWORD PTR [rip+0x2042fd],rdx        # 606470 <stack_top>
  402173:	48 89 e0             	mov    rax,rsp
  402176:	48 89 d4             	mov    rsp,rdx
  402179:	48 89 c2             	mov    rdx,rax
  40217c:	48 89 15 9d 36 20 00 	mov    QWORD PTR [rip+0x20369d],rdx        # 605820 <global_save_stack>
  402183:	48 8b 3d 9e 36 20 00 	mov    rdi,QWORD PTR [rip+0x20369e]        # 605828 <global_offset>
  40218a:	e8 ba fe ff ff       	call   402049 <launch>
  40218f:	48 8b 05 8a 36 20 00 	mov    rax,QWORD PTR [rip+0x20368a]        # 605820 <global_save_stack>
  402196:	48 89 c4             	mov    rsp,rax
  402199:	be 00 00 10 00       	mov    esi,0x100000
  40219e:	48 89 df             	mov    rdi,rbx
  4021a1:	e8 4a ec ff ff       	call   400df0 <munmap@plt>
  4021a6:	5b                   	pop    rbx
  4021a7:	c3                   	ret    

00000000004021a8 <rio_readinitb>:
  4021a8:	89 37                	mov    DWORD PTR [rdi],esi
  4021aa:	c7 47 04 00 00 00 00 	mov    DWORD PTR [rdi+0x4],0x0
  4021b1:	48 8d 47 10          	lea    rax,[rdi+0x10]
  4021b5:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  4021b9:	c3                   	ret    

00000000004021ba <sigalrm_handler>:
  4021ba:	48 83 ec 08          	sub    rsp,0x8
  4021be:	b9 00 00 00 00       	mov    ecx,0x0
  4021c3:	ba b0 3d 40 00       	mov    edx,0x403db0
  4021c8:	be 01 00 00 00       	mov    esi,0x1
  4021cd:	48 8b 3d 2c 36 20 00 	mov    rdi,QWORD PTR [rip+0x20362c]        # 605800 <stderr@@GLIBC_2.2.5>
  4021d4:	b8 00 00 00 00       	mov    eax,0x0
  4021d9:	e8 92 ec ff ff       	call   400e70 <__fprintf_chk@plt>
  4021de:	bf 01 00 00 00       	mov    edi,0x1
  4021e3:	e8 68 ec ff ff       	call   400e50 <exit@plt>

00000000004021e8 <rio_writen>:
  4021e8:	41 55                	push   r13
  4021ea:	41 54                	push   r12
  4021ec:	55                   	push   rbp
  4021ed:	53                   	push   rbx
  4021ee:	48 83 ec 08          	sub    rsp,0x8
  4021f2:	41 89 fc             	mov    r12d,edi
  4021f5:	48 89 f5             	mov    rbp,rsi
  4021f8:	49 89 d5             	mov    r13,rdx
  4021fb:	48 89 d3             	mov    rbx,rdx
  4021fe:	eb 28                	jmp    402228 <rio_writen+0x40>
  402200:	48 89 da             	mov    rdx,rbx
  402203:	48 89 ee             	mov    rsi,rbp
  402206:	44 89 e7             	mov    edi,r12d
  402209:	e8 d2 ea ff ff       	call   400ce0 <write@plt>
  40220e:	48 85 c0             	test   rax,rax
  402211:	7f 0f                	jg     402222 <rio_writen+0x3a>
  402213:	e8 78 ea ff ff       	call   400c90 <__errno_location@plt>
  402218:	83 38 04             	cmp    DWORD PTR [rax],0x4
  40221b:	75 15                	jne    402232 <rio_writen+0x4a>
  40221d:	b8 00 00 00 00       	mov    eax,0x0
  402222:	48 29 c3             	sub    rbx,rax
  402225:	48 01 c5             	add    rbp,rax
  402228:	48 85 db             	test   rbx,rbx
  40222b:	75 d3                	jne    402200 <rio_writen+0x18>
  40222d:	4c 89 e8             	mov    rax,r13
  402230:	eb 07                	jmp    402239 <rio_writen+0x51>
  402232:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  402239:	48 83 c4 08          	add    rsp,0x8
  40223d:	5b                   	pop    rbx
  40223e:	5d                   	pop    rbp
  40223f:	41 5c                	pop    r12
  402241:	41 5d                	pop    r13
  402243:	c3                   	ret    

0000000000402244 <rio_read>:
  402244:	41 55                	push   r13
  402246:	41 54                	push   r12
  402248:	55                   	push   rbp
  402249:	53                   	push   rbx
  40224a:	48 83 ec 08          	sub    rsp,0x8
  40224e:	48 89 fb             	mov    rbx,rdi
  402251:	49 89 f5             	mov    r13,rsi
  402254:	49 89 d4             	mov    r12,rdx
  402257:	eb 2e                	jmp    402287 <rio_read+0x43>
  402259:	48 8d 6b 10          	lea    rbp,[rbx+0x10]
  40225d:	8b 3b                	mov    edi,DWORD PTR [rbx]
  40225f:	ba 00 20 00 00       	mov    edx,0x2000
  402264:	48 89 ee             	mov    rsi,rbp
  402267:	e8 d4 ea ff ff       	call   400d40 <read@plt>
  40226c:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
  40226f:	85 c0                	test   eax,eax
  402271:	79 0c                	jns    40227f <rio_read+0x3b>
  402273:	e8 18 ea ff ff       	call   400c90 <__errno_location@plt>
  402278:	83 38 04             	cmp    DWORD PTR [rax],0x4
  40227b:	74 0a                	je     402287 <rio_read+0x43>
  40227d:	eb 37                	jmp    4022b6 <rio_read+0x72>
  40227f:	85 c0                	test   eax,eax
  402281:	74 3c                	je     4022bf <rio_read+0x7b>
  402283:	48 89 6b 08          	mov    QWORD PTR [rbx+0x8],rbp
  402287:	8b 6b 04             	mov    ebp,DWORD PTR [rbx+0x4]
  40228a:	85 ed                	test   ebp,ebp
  40228c:	7e cb                	jle    402259 <rio_read+0x15>
  40228e:	89 e8                	mov    eax,ebp
  402290:	49 39 c4             	cmp    r12,rax
  402293:	77 03                	ja     402298 <rio_read+0x54>
  402295:	44 89 e5             	mov    ebp,r12d
  402298:	4c 63 e5             	movsxd r12,ebp
  40229b:	48 8b 73 08          	mov    rsi,QWORD PTR [rbx+0x8]
  40229f:	4c 89 e2             	mov    rdx,r12
  4022a2:	4c 89 ef             	mov    rdi,r13
  4022a5:	e8 f6 ea ff ff       	call   400da0 <memcpy@plt>
  4022aa:	4c 01 63 08          	add    QWORD PTR [rbx+0x8],r12
  4022ae:	29 6b 04             	sub    DWORD PTR [rbx+0x4],ebp
  4022b1:	4c 89 e0             	mov    rax,r12
  4022b4:	eb 0e                	jmp    4022c4 <rio_read+0x80>
  4022b6:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  4022bd:	eb 05                	jmp    4022c4 <rio_read+0x80>
  4022bf:	b8 00 00 00 00       	mov    eax,0x0
  4022c4:	48 83 c4 08          	add    rsp,0x8
  4022c8:	5b                   	pop    rbx
  4022c9:	5d                   	pop    rbp
  4022ca:	41 5c                	pop    r12
  4022cc:	41 5d                	pop    r13
  4022ce:	c3                   	ret    

00000000004022cf <rio_readlineb>:
  4022cf:	41 55                	push   r13
  4022d1:	41 54                	push   r12
  4022d3:	55                   	push   rbp
  4022d4:	53                   	push   rbx
  4022d5:	48 83 ec 18          	sub    rsp,0x18
  4022d9:	49 89 fd             	mov    r13,rdi
  4022dc:	48 89 f5             	mov    rbp,rsi
  4022df:	49 89 d4             	mov    r12,rdx
  4022e2:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4022e9:	00 00 
  4022eb:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  4022f0:	31 c0                	xor    eax,eax
  4022f2:	bb 01 00 00 00       	mov    ebx,0x1
  4022f7:	eb 3f                	jmp    402338 <rio_readlineb+0x69>
  4022f9:	ba 01 00 00 00       	mov    edx,0x1
  4022fe:	48 8d 74 24 07       	lea    rsi,[rsp+0x7]
  402303:	4c 89 ef             	mov    rdi,r13
  402306:	e8 39 ff ff ff       	call   402244 <rio_read>
  40230b:	83 f8 01             	cmp    eax,0x1
  40230e:	75 15                	jne    402325 <rio_readlineb+0x56>
  402310:	48 8d 45 01          	lea    rax,[rbp+0x1]
  402314:	0f b6 54 24 07       	movzx  edx,BYTE PTR [rsp+0x7]
  402319:	88 55 00             	mov    BYTE PTR [rbp+0x0],dl
  40231c:	80 7c 24 07 0a       	cmp    BYTE PTR [rsp+0x7],0xa
  402321:	75 0e                	jne    402331 <rio_readlineb+0x62>
  402323:	eb 1a                	jmp    40233f <rio_readlineb+0x70>
  402325:	85 c0                	test   eax,eax
  402327:	75 22                	jne    40234b <rio_readlineb+0x7c>
  402329:	48 83 fb 01          	cmp    rbx,0x1
  40232d:	75 13                	jne    402342 <rio_readlineb+0x73>
  40232f:	eb 23                	jmp    402354 <rio_readlineb+0x85>
  402331:	48 83 c3 01          	add    rbx,0x1
  402335:	48 89 c5             	mov    rbp,rax
  402338:	4c 39 e3             	cmp    rbx,r12
  40233b:	72 bc                	jb     4022f9 <rio_readlineb+0x2a>
  40233d:	eb 03                	jmp    402342 <rio_readlineb+0x73>
  40233f:	48 89 c5             	mov    rbp,rax
  402342:	c6 45 00 00          	mov    BYTE PTR [rbp+0x0],0x0
  402346:	48 89 d8             	mov    rax,rbx
  402349:	eb 0e                	jmp    402359 <rio_readlineb+0x8a>
  40234b:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  402352:	eb 05                	jmp    402359 <rio_readlineb+0x8a>
  402354:	b8 00 00 00 00       	mov    eax,0x0
  402359:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  40235e:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  402365:	00 00 
  402367:	74 05                	je     40236e <rio_readlineb+0x9f>
  402369:	e8 82 e9 ff ff       	call   400cf0 <__stack_chk_fail@plt>
  40236e:	48 83 c4 18          	add    rsp,0x18
  402372:	5b                   	pop    rbx
  402373:	5d                   	pop    rbp
  402374:	41 5c                	pop    r12
  402376:	41 5d                	pop    r13
  402378:	c3                   	ret    

0000000000402379 <urlencode>:
  402379:	41 54                	push   r12
  40237b:	55                   	push   rbp
  40237c:	53                   	push   rbx
  40237d:	48 83 ec 10          	sub    rsp,0x10
  402381:	48 89 fb             	mov    rbx,rdi
  402384:	48 89 f5             	mov    rbp,rsi
  402387:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40238e:	00 00 
  402390:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  402395:	31 c0                	xor    eax,eax
  402397:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  40239e:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  4023a0:	48 f7 d1             	not    rcx
  4023a3:	8d 41 ff             	lea    eax,[rcx-0x1]
  4023a6:	e9 aa 00 00 00       	jmp    402455 <urlencode+0xdc>
  4023ab:	44 0f b6 03          	movzx  r8d,BYTE PTR [rbx]
  4023af:	41 80 f8 2a          	cmp    r8b,0x2a
  4023b3:	0f 94 c2             	sete   dl
  4023b6:	41 80 f8 2d          	cmp    r8b,0x2d
  4023ba:	0f 94 c0             	sete   al
  4023bd:	08 c2                	or     dl,al
  4023bf:	75 24                	jne    4023e5 <urlencode+0x6c>
  4023c1:	41 80 f8 2e          	cmp    r8b,0x2e
  4023c5:	74 1e                	je     4023e5 <urlencode+0x6c>
  4023c7:	41 80 f8 5f          	cmp    r8b,0x5f
  4023cb:	74 18                	je     4023e5 <urlencode+0x6c>
  4023cd:	41 8d 40 d0          	lea    eax,[r8-0x30]
  4023d1:	3c 09                	cmp    al,0x9
  4023d3:	76 10                	jbe    4023e5 <urlencode+0x6c>
  4023d5:	41 8d 40 bf          	lea    eax,[r8-0x41]
  4023d9:	3c 19                	cmp    al,0x19
  4023db:	76 08                	jbe    4023e5 <urlencode+0x6c>
  4023dd:	41 8d 40 9f          	lea    eax,[r8-0x61]
  4023e1:	3c 19                	cmp    al,0x19
  4023e3:	77 0a                	ja     4023ef <urlencode+0x76>
  4023e5:	44 88 45 00          	mov    BYTE PTR [rbp+0x0],r8b
  4023e9:	48 8d 6d 01          	lea    rbp,[rbp+0x1]
  4023ed:	eb 5f                	jmp    40244e <urlencode+0xd5>
  4023ef:	41 80 f8 20          	cmp    r8b,0x20
  4023f3:	75 0a                	jne    4023ff <urlencode+0x86>
  4023f5:	c6 45 00 2b          	mov    BYTE PTR [rbp+0x0],0x2b
  4023f9:	48 8d 6d 01          	lea    rbp,[rbp+0x1]
  4023fd:	eb 4f                	jmp    40244e <urlencode+0xd5>
  4023ff:	41 8d 40 e0          	lea    eax,[r8-0x20]
  402403:	3c 5f                	cmp    al,0x5f
  402405:	0f 96 c2             	setbe  dl
  402408:	41 80 f8 09          	cmp    r8b,0x9
  40240c:	0f 94 c0             	sete   al
  40240f:	08 c2                	or     dl,al
  402411:	74 50                	je     402463 <urlencode+0xea>
  402413:	45 0f b6 c0          	movzx  r8d,r8b
  402417:	b9 48 3e 40 00       	mov    ecx,0x403e48
  40241c:	ba 08 00 00 00       	mov    edx,0x8
  402421:	be 01 00 00 00       	mov    esi,0x1
  402426:	48 89 e7             	mov    rdi,rsp
  402429:	b8 00 00 00 00       	mov    eax,0x0
  40242e:	e8 4d ea ff ff       	call   400e80 <__sprintf_chk@plt>
  402433:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
  402437:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
  40243a:	0f b6 44 24 01       	movzx  eax,BYTE PTR [rsp+0x1]
  40243f:	88 45 01             	mov    BYTE PTR [rbp+0x1],al
  402442:	0f b6 44 24 02       	movzx  eax,BYTE PTR [rsp+0x2]
  402447:	88 45 02             	mov    BYTE PTR [rbp+0x2],al
  40244a:	48 8d 6d 03          	lea    rbp,[rbp+0x3]
  40244e:	48 83 c3 01          	add    rbx,0x1
  402452:	44 89 e0             	mov    eax,r12d
  402455:	44 8d 60 ff          	lea    r12d,[rax-0x1]
  402459:	85 c0                	test   eax,eax
  40245b:	0f 85 4a ff ff ff    	jne    4023ab <urlencode+0x32>
  402461:	eb 05                	jmp    402468 <urlencode+0xef>
  402463:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402468:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  40246d:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  402474:	00 00 
  402476:	74 05                	je     40247d <urlencode+0x104>
  402478:	e8 73 e8 ff ff       	call   400cf0 <__stack_chk_fail@plt>
  40247d:	48 83 c4 10          	add    rsp,0x10
  402481:	5b                   	pop    rbx
  402482:	5d                   	pop    rbp
  402483:	41 5c                	pop    r12
  402485:	c3                   	ret    

0000000000402486 <submitr>:
  402486:	41 57                	push   r15
  402488:	41 56                	push   r14
  40248a:	41 55                	push   r13
  40248c:	41 54                	push   r12
  40248e:	55                   	push   rbp
  40248f:	53                   	push   rbx
  402490:	48 81 ec 58 a0 00 00 	sub    rsp,0xa058
  402497:	49 89 fc             	mov    r12,rdi
  40249a:	89 74 24 04          	mov    DWORD PTR [rsp+0x4],esi
  40249e:	49 89 d7             	mov    r15,rdx
  4024a1:	49 89 ce             	mov    r14,rcx
  4024a4:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
  4024a9:	4d 89 cd             	mov    r13,r9
  4024ac:	48 8b 9c 24 90 a0 00 	mov    rbx,QWORD PTR [rsp+0xa090]
  4024b3:	00 
  4024b4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4024bb:	00 00 
  4024bd:	48 89 84 24 48 a0 00 	mov    QWORD PTR [rsp+0xa048],rax
  4024c4:	00 
  4024c5:	31 c0                	xor    eax,eax
  4024c7:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [rsp+0x1c],0x0
  4024ce:	00 
  4024cf:	ba 00 00 00 00       	mov    edx,0x0
  4024d4:	be 01 00 00 00       	mov    esi,0x1
  4024d9:	bf 02 00 00 00       	mov    edi,0x2
  4024de:	e8 ad e9 ff ff       	call   400e90 <socket@plt>
  4024e3:	85 c0                	test   eax,eax
  4024e5:	79 4e                	jns    402535 <submitr+0xaf>
  4024e7:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  4024ee:	3a 20 43 
  4024f1:	48 89 03             	mov    QWORD PTR [rbx],rax
  4024f4:	48 b8 6c 69 65 6e 74 	movabs rax,0x6e7520746e65696c
  4024fb:	20 75 6e 
  4024fe:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  402502:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  402509:	74 6f 20 
  40250c:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  402510:	48 b8 63 72 65 61 74 	movabs rax,0x7320657461657263
  402517:	65 20 73 
  40251a:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  40251e:	c7 43 20 6f 63 6b 65 	mov    DWORD PTR [rbx+0x20],0x656b636f
  402525:	66 c7 43 24 74 00    	mov    WORD PTR [rbx+0x24],0x74
  40252b:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402530:	e9 97 06 00 00       	jmp    402bcc <submitr+0x746>
  402535:	89 c5                	mov    ebp,eax
  402537:	4c 89 e7             	mov    rdi,r12
  40253a:	e8 31 e8 ff ff       	call   400d70 <gethostbyname@plt>
  40253f:	48 85 c0             	test   rax,rax
  402542:	75 67                	jne    4025ab <submitr+0x125>
  402544:	48 b8 45 72 72 6f 72 	movabs rax,0x44203a726f727245
  40254b:	3a 20 44 
  40254e:	48 89 03             	mov    QWORD PTR [rbx],rax
  402551:	48 b8 4e 53 20 69 73 	movabs rax,0x6e7520736920534e
  402558:	20 75 6e 
  40255b:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  40255f:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  402566:	74 6f 20 
  402569:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  40256d:	48 b8 72 65 73 6f 6c 	movabs rax,0x2065766c6f736572
  402574:	76 65 20 
  402577:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  40257b:	48 b8 73 65 72 76 65 	movabs rax,0x6120726576726573
  402582:	72 20 61 
  402585:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  402589:	c7 43 28 64 64 72 65 	mov    DWORD PTR [rbx+0x28],0x65726464
  402590:	66 c7 43 2c 73 73    	mov    WORD PTR [rbx+0x2c],0x7373
  402596:	c6 43 2e 00          	mov    BYTE PTR [rbx+0x2e],0x0
  40259a:	89 ef                	mov    edi,ebp
  40259c:	e8 8f e7 ff ff       	call   400d30 <close@plt>
  4025a1:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4025a6:	e9 21 06 00 00       	jmp    402bcc <submitr+0x746>
  4025ab:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
  4025b2:	00 00 
  4025b4:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  4025bb:	00 00 
  4025bd:	66 c7 44 24 20 02 00 	mov    WORD PTR [rsp+0x20],0x2
  4025c4:	48 63 50 14          	movsxd rdx,DWORD PTR [rax+0x14]
  4025c8:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  4025cc:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  4025cf:	48 8d 7c 24 24       	lea    rdi,[rsp+0x24]
  4025d4:	b9 0c 00 00 00       	mov    ecx,0xc
  4025d9:	e8 a2 e7 ff ff       	call   400d80 <__memmove_chk@plt>
  4025de:	0f b7 44 24 04       	movzx  eax,WORD PTR [rsp+0x4]
  4025e3:	66 c1 c8 08          	ror    ax,0x8
  4025e7:	66 89 44 24 22       	mov    WORD PTR [rsp+0x22],ax
  4025ec:	ba 10 00 00 00       	mov    edx,0x10
  4025f1:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
  4025f6:	89 ef                	mov    edi,ebp
  4025f8:	e8 63 e8 ff ff       	call   400e60 <connect@plt>
  4025fd:	85 c0                	test   eax,eax
  4025ff:	79 59                	jns    40265a <submitr+0x1d4>
  402601:	48 b8 45 72 72 6f 72 	movabs rax,0x55203a726f727245
  402608:	3a 20 55 
  40260b:	48 89 03             	mov    QWORD PTR [rbx],rax
  40260e:	48 b8 6e 61 62 6c 65 	movabs rax,0x6f7420656c62616e
  402615:	20 74 6f 
  402618:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  40261c:	48 b8 20 63 6f 6e 6e 	movabs rax,0x7463656e6e6f6320
  402623:	65 63 74 
  402626:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  40262a:	48 b8 20 74 6f 20 74 	movabs rax,0x20656874206f7420
  402631:	68 65 20 
  402634:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  402638:	c7 43 20 73 65 72 76 	mov    DWORD PTR [rbx+0x20],0x76726573
  40263f:	66 c7 43 24 65 72    	mov    WORD PTR [rbx+0x24],0x7265
  402645:	c6 43 26 00          	mov    BYTE PTR [rbx+0x26],0x0
  402649:	89 ef                	mov    edi,ebp
  40264b:	e8 e0 e6 ff ff       	call   400d30 <close@plt>
  402650:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402655:	e9 72 05 00 00       	jmp    402bcc <submitr+0x746>
  40265a:	48 c7 c6 ff ff ff ff 	mov    rsi,0xffffffffffffffff
  402661:	b8 00 00 00 00       	mov    eax,0x0
  402666:	48 89 f1             	mov    rcx,rsi
  402669:	4c 89 ef             	mov    rdi,r13
  40266c:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40266e:	48 f7 d1             	not    rcx
  402671:	48 89 ca             	mov    rdx,rcx
  402674:	48 89 f1             	mov    rcx,rsi
  402677:	4c 89 ff             	mov    rdi,r15
  40267a:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40267c:	48 f7 d1             	not    rcx
  40267f:	49 89 c8             	mov    r8,rcx
  402682:	48 89 f1             	mov    rcx,rsi
  402685:	4c 89 f7             	mov    rdi,r14
  402688:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40268a:	48 f7 d1             	not    rcx
  40268d:	4d 8d 44 08 fe       	lea    r8,[r8+rcx*1-0x2]
  402692:	48 89 f1             	mov    rcx,rsi
  402695:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40269a:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40269c:	48 89 c8             	mov    rax,rcx
  40269f:	48 f7 d0             	not    rax
  4026a2:	49 8d 4c 00 ff       	lea    rcx,[r8+rax*1-0x1]
  4026a7:	48 8d 44 52 fd       	lea    rax,[rdx+rdx*2-0x3]
  4026ac:	48 8d 84 01 80 00 00 	lea    rax,[rcx+rax*1+0x80]
  4026b3:	00 
  4026b4:	48 3d 00 20 00 00    	cmp    rax,0x2000
  4026ba:	76 72                	jbe    40272e <submitr+0x2a8>
  4026bc:	48 b8 45 72 72 6f 72 	movabs rax,0x52203a726f727245
  4026c3:	3a 20 52 
  4026c6:	48 89 03             	mov    QWORD PTR [rbx],rax
  4026c9:	48 b8 65 73 75 6c 74 	movabs rax,0x747320746c757365
  4026d0:	20 73 74 
  4026d3:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  4026d7:	48 b8 72 69 6e 67 20 	movabs rax,0x6f6f7420676e6972
  4026de:	74 6f 6f 
  4026e1:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  4026e5:	48 b8 20 6c 61 72 67 	movabs rax,0x202e656772616c20
  4026ec:	65 2e 20 
  4026ef:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  4026f3:	48 b8 49 6e 63 72 65 	movabs rax,0x6573616572636e49
  4026fa:	61 73 65 
  4026fd:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  402701:	48 b8 20 53 55 42 4d 	movabs rax,0x5254494d42555320
  402708:	49 54 52 
  40270b:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  40270f:	48 b8 5f 4d 41 58 42 	movabs rax,0x46554258414d5f
  402716:	55 46 00 
  402719:	48 89 43 30          	mov    QWORD PTR [rbx+0x30],rax
  40271d:	89 ef                	mov    edi,ebp
  40271f:	e8 0c e6 ff ff       	call   400d30 <close@plt>
  402724:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402729:	e9 9e 04 00 00       	jmp    402bcc <submitr+0x746>
  40272e:	48 8d b4 24 40 40 00 	lea    rsi,[rsp+0x4040]
  402735:	00 
  402736:	b9 00 04 00 00       	mov    ecx,0x400
  40273b:	b8 00 00 00 00       	mov    eax,0x0
  402740:	48 89 f7             	mov    rdi,rsi
  402743:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  402746:	4c 89 ef             	mov    rdi,r13
  402749:	e8 2b fc ff ff       	call   402379 <urlencode>
  40274e:	85 c0                	test   eax,eax
  402750:	0f 89 8a 00 00 00    	jns    4027e0 <submitr+0x35a>
  402756:	48 b8 45 72 72 6f 72 	movabs rax,0x52203a726f727245
  40275d:	3a 20 52 
  402760:	48 89 03             	mov    QWORD PTR [rbx],rax
  402763:	48 b8 65 73 75 6c 74 	movabs rax,0x747320746c757365
  40276a:	20 73 74 
  40276d:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  402771:	48 b8 72 69 6e 67 20 	movabs rax,0x6e6f6320676e6972
  402778:	63 6f 6e 
  40277b:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  40277f:	48 b8 74 61 69 6e 73 	movabs rax,0x6e6120736e696174
  402786:	20 61 6e 
  402789:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  40278d:	48 b8 20 69 6c 6c 65 	movabs rax,0x6c6167656c6c6920
  402794:	67 61 6c 
  402797:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  40279b:	48 b8 20 6f 72 20 75 	movabs rax,0x72706e7520726f20
  4027a2:	6e 70 72 
  4027a5:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  4027a9:	48 b8 69 6e 74 61 62 	movabs rax,0x20656c6261746e69
  4027b0:	6c 65 20 
  4027b3:	48 89 43 30          	mov    QWORD PTR [rbx+0x30],rax
  4027b7:	48 b8 63 68 61 72 61 	movabs rax,0x6574636172616863
  4027be:	63 74 65 
  4027c1:	48 89 43 38          	mov    QWORD PTR [rbx+0x38],rax
  4027c5:	66 c7 43 40 72 2e    	mov    WORD PTR [rbx+0x40],0x2e72
  4027cb:	c6 43 42 00          	mov    BYTE PTR [rbx+0x42],0x0
  4027cf:	89 ef                	mov    edi,ebp
  4027d1:	e8 5a e5 ff ff       	call   400d30 <close@plt>
  4027d6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4027db:	e9 ec 03 00 00       	jmp    402bcc <submitr+0x746>
  4027e0:	4c 8d ac 24 40 20 00 	lea    r13,[rsp+0x2040]
  4027e7:	00 
  4027e8:	41 54                	push   r12
  4027ea:	48 8d 84 24 48 40 00 	lea    rax,[rsp+0x4048]
  4027f1:	00 
  4027f2:	50                   	push   rax
  4027f3:	4d 89 f9             	mov    r9,r15
  4027f6:	4d 89 f0             	mov    r8,r14
  4027f9:	b9 d8 3d 40 00       	mov    ecx,0x403dd8
  4027fe:	ba 00 20 00 00       	mov    edx,0x2000
  402803:	be 01 00 00 00       	mov    esi,0x1
  402808:	4c 89 ef             	mov    rdi,r13
  40280b:	b8 00 00 00 00       	mov    eax,0x0
  402810:	e8 6b e6 ff ff       	call   400e80 <__sprintf_chk@plt>
  402815:	b8 00 00 00 00       	mov    eax,0x0
  40281a:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  402821:	4c 89 ef             	mov    rdi,r13
  402824:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  402826:	48 f7 d1             	not    rcx
  402829:	48 8d 51 ff          	lea    rdx,[rcx-0x1]
  40282d:	4c 89 ee             	mov    rsi,r13
  402830:	89 ef                	mov    edi,ebp
  402832:	e8 b1 f9 ff ff       	call   4021e8 <rio_writen>
  402837:	48 83 c4 10          	add    rsp,0x10
  40283b:	48 85 c0             	test   rax,rax
  40283e:	79 6e                	jns    4028ae <submitr+0x428>
  402840:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  402847:	3a 20 43 
  40284a:	48 89 03             	mov    QWORD PTR [rbx],rax
  40284d:	48 b8 6c 69 65 6e 74 	movabs rax,0x6e7520746e65696c
  402854:	20 75 6e 
  402857:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  40285b:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  402862:	74 6f 20 
  402865:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  402869:	48 b8 77 72 69 74 65 	movabs rax,0x6f74206574697277
  402870:	20 74 6f 
  402873:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  402877:	48 b8 20 74 68 65 20 	movabs rax,0x7365722065687420
  40287e:	72 65 73 
  402881:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  402885:	48 b8 75 6c 74 20 73 	movabs rax,0x7672657320746c75
  40288c:	65 72 76 
  40288f:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  402893:	66 c7 43 30 65 72    	mov    WORD PTR [rbx+0x30],0x7265
  402899:	c6 43 32 00          	mov    BYTE PTR [rbx+0x32],0x0
  40289d:	89 ef                	mov    edi,ebp
  40289f:	e8 8c e4 ff ff       	call   400d30 <close@plt>
  4028a4:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4028a9:	e9 1e 03 00 00       	jmp    402bcc <submitr+0x746>
  4028ae:	89 ee                	mov    esi,ebp
  4028b0:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  4028b5:	e8 ee f8 ff ff       	call   4021a8 <rio_readinitb>
  4028ba:	ba 00 20 00 00       	mov    edx,0x2000
  4028bf:	48 8d b4 24 40 20 00 	lea    rsi,[rsp+0x2040]
  4028c6:	00 
  4028c7:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  4028cc:	e8 fe f9 ff ff       	call   4022cf <rio_readlineb>
  4028d1:	48 85 c0             	test   rax,rax
  4028d4:	7f 7d                	jg     402953 <submitr+0x4cd>
  4028d6:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  4028dd:	3a 20 43 
  4028e0:	48 89 03             	mov    QWORD PTR [rbx],rax
  4028e3:	48 b8 6c 69 65 6e 74 	movabs rax,0x6e7520746e65696c
  4028ea:	20 75 6e 
  4028ed:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  4028f1:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  4028f8:	74 6f 20 
  4028fb:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  4028ff:	48 b8 72 65 61 64 20 	movabs rax,0x7269662064616572
  402906:	66 69 72 
  402909:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  40290d:	48 b8 73 74 20 68 65 	movabs rax,0x6564616568207473
  402914:	61 64 65 
  402917:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  40291b:	48 b8 72 20 66 72 6f 	movabs rax,0x72206d6f72662072
  402922:	6d 20 72 
  402925:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  402929:	48 b8 65 73 75 6c 74 	movabs rax,0x657320746c757365
  402930:	20 73 65 
  402933:	48 89 43 30          	mov    QWORD PTR [rbx+0x30],rax
  402937:	c7 43 38 72 76 65 72 	mov    DWORD PTR [rbx+0x38],0x72657672
  40293e:	c6 43 3c 00          	mov    BYTE PTR [rbx+0x3c],0x0
  402942:	89 ef                	mov    edi,ebp
  402944:	e8 e7 e3 ff ff       	call   400d30 <close@plt>
  402949:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40294e:	e9 79 02 00 00       	jmp    402bcc <submitr+0x746>
  402953:	4c 8d 84 24 40 80 00 	lea    r8,[rsp+0x8040]
  40295a:	00 
  40295b:	48 8d 4c 24 1c       	lea    rcx,[rsp+0x1c]
  402960:	48 8d 94 24 40 60 00 	lea    rdx,[rsp+0x6040]
  402967:	00 
  402968:	be 4f 3e 40 00       	mov    esi,0x403e4f
  40296d:	48 8d bc 24 40 20 00 	lea    rdi,[rsp+0x2040]
  402974:	00 
  402975:	b8 00 00 00 00       	mov    eax,0x0
  40297a:	e8 61 e4 ff ff       	call   400de0 <__isoc99_sscanf@plt>
  40297f:	e9 95 00 00 00       	jmp    402a19 <submitr+0x593>
  402984:	ba 00 20 00 00       	mov    edx,0x2000
  402989:	48 8d b4 24 40 20 00 	lea    rsi,[rsp+0x2040]
  402990:	00 
  402991:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  402996:	e8 34 f9 ff ff       	call   4022cf <rio_readlineb>
  40299b:	48 85 c0             	test   rax,rax
  40299e:	7f 79                	jg     402a19 <submitr+0x593>
  4029a0:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  4029a7:	3a 20 43 
  4029aa:	48 89 03             	mov    QWORD PTR [rbx],rax
  4029ad:	48 b8 6c 69 65 6e 74 	movabs rax,0x6e7520746e65696c
  4029b4:	20 75 6e 
  4029b7:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  4029bb:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  4029c2:	74 6f 20 
  4029c5:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  4029c9:	48 b8 72 65 61 64 20 	movabs rax,0x6165682064616572
  4029d0:	68 65 61 
  4029d3:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  4029d7:	48 b8 64 65 72 73 20 	movabs rax,0x6f72662073726564
  4029de:	66 72 6f 
  4029e1:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  4029e5:	48 b8 6d 20 74 68 65 	movabs rax,0x657220656874206d
  4029ec:	20 72 65 
  4029ef:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  4029f3:	48 b8 73 75 6c 74 20 	movabs rax,0x72657320746c7573
  4029fa:	73 65 72 
  4029fd:	48 89 43 30          	mov    QWORD PTR [rbx+0x30],rax
  402a01:	c7 43 38 76 65 72 00 	mov    DWORD PTR [rbx+0x38],0x726576
  402a08:	89 ef                	mov    edi,ebp
  402a0a:	e8 21 e3 ff ff       	call   400d30 <close@plt>
  402a0f:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402a14:	e9 b3 01 00 00       	jmp    402bcc <submitr+0x746>
  402a19:	0f b6 94 24 40 20 00 	movzx  edx,BYTE PTR [rsp+0x2040]
  402a20:	00 
  402a21:	b8 0d 00 00 00       	mov    eax,0xd
  402a26:	29 d0                	sub    eax,edx
  402a28:	75 1b                	jne    402a45 <submitr+0x5bf>
  402a2a:	0f b6 94 24 41 20 00 	movzx  edx,BYTE PTR [rsp+0x2041]
  402a31:	00 
  402a32:	b8 0a 00 00 00       	mov    eax,0xa
  402a37:	29 d0                	sub    eax,edx
  402a39:	75 0a                	jne    402a45 <submitr+0x5bf>
  402a3b:	0f b6 84 24 42 20 00 	movzx  eax,BYTE PTR [rsp+0x2042]
  402a42:	00 
  402a43:	f7 d8                	neg    eax
  402a45:	85 c0                	test   eax,eax
  402a47:	0f 85 37 ff ff ff    	jne    402984 <submitr+0x4fe>
  402a4d:	ba 00 20 00 00       	mov    edx,0x2000
  402a52:	48 8d b4 24 40 20 00 	lea    rsi,[rsp+0x2040]
  402a59:	00 
  402a5a:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  402a5f:	e8 6b f8 ff ff       	call   4022cf <rio_readlineb>
  402a64:	48 85 c0             	test   rax,rax
  402a67:	0f 8f 83 00 00 00    	jg     402af0 <submitr+0x66a>
  402a6d:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  402a74:	3a 20 43 
  402a77:	48 89 03             	mov    QWORD PTR [rbx],rax
  402a7a:	48 b8 6c 69 65 6e 74 	movabs rax,0x6e7520746e65696c
  402a81:	20 75 6e 
  402a84:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  402a88:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  402a8f:	74 6f 20 
  402a92:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  402a96:	48 b8 72 65 61 64 20 	movabs rax,0x6174732064616572
  402a9d:	73 74 61 
  402aa0:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  402aa4:	48 b8 74 75 73 20 6d 	movabs rax,0x7373656d20737574
  402aab:	65 73 73 
  402aae:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  402ab2:	48 b8 61 67 65 20 66 	movabs rax,0x6d6f726620656761
  402ab9:	72 6f 6d 
  402abc:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  402ac0:	48 b8 20 72 65 73 75 	movabs rax,0x20746c7573657220
  402ac7:	6c 74 20 
  402aca:	48 89 43 30          	mov    QWORD PTR [rbx+0x30],rax
  402ace:	c7 43 38 73 65 72 76 	mov    DWORD PTR [rbx+0x38],0x76726573
  402ad5:	66 c7 43 3c 65 72    	mov    WORD PTR [rbx+0x3c],0x7265
  402adb:	c6 43 3e 00          	mov    BYTE PTR [rbx+0x3e],0x0
  402adf:	89 ef                	mov    edi,ebp
  402ae1:	e8 4a e2 ff ff       	call   400d30 <close@plt>
  402ae6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402aeb:	e9 dc 00 00 00       	jmp    402bcc <submitr+0x746>
  402af0:	44 8b 44 24 1c       	mov    r8d,DWORD PTR [rsp+0x1c]
  402af5:	41 81 f8 c8 00 00 00 	cmp    r8d,0xc8
  402afc:	74 37                	je     402b35 <submitr+0x6af>
  402afe:	4c 8d 8c 24 40 80 00 	lea    r9,[rsp+0x8040]
  402b05:	00 
  402b06:	b9 18 3e 40 00       	mov    ecx,0x403e18
  402b0b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
  402b12:	be 01 00 00 00       	mov    esi,0x1
  402b17:	48 89 df             	mov    rdi,rbx
  402b1a:	b8 00 00 00 00       	mov    eax,0x0
  402b1f:	e8 5c e3 ff ff       	call   400e80 <__sprintf_chk@plt>
  402b24:	89 ef                	mov    edi,ebp
  402b26:	e8 05 e2 ff ff       	call   400d30 <close@plt>
  402b2b:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402b30:	e9 97 00 00 00       	jmp    402bcc <submitr+0x746>
  402b35:	48 8d b4 24 40 20 00 	lea    rsi,[rsp+0x2040]
  402b3c:	00 
  402b3d:	48 89 df             	mov    rdi,rbx
  402b40:	e8 7b e1 ff ff       	call   400cc0 <strcpy@plt>
  402b45:	89 ef                	mov    edi,ebp
  402b47:	e8 e4 e1 ff ff       	call   400d30 <close@plt>
  402b4c:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
  402b4f:	ba 4f 00 00 00       	mov    edx,0x4f
  402b54:	29 c2                	sub    edx,eax
  402b56:	75 22                	jne    402b7a <submitr+0x6f4>
  402b58:	0f b6 4b 01          	movzx  ecx,BYTE PTR [rbx+0x1]
  402b5c:	b8 4b 00 00 00       	mov    eax,0x4b
  402b61:	29 c8                	sub    eax,ecx
  402b63:	75 17                	jne    402b7c <submitr+0x6f6>
  402b65:	0f b6 4b 02          	movzx  ecx,BYTE PTR [rbx+0x2]
  402b69:	b8 0a 00 00 00       	mov    eax,0xa
  402b6e:	29 c8                	sub    eax,ecx
  402b70:	75 0a                	jne    402b7c <submitr+0x6f6>
  402b72:	0f b6 43 03          	movzx  eax,BYTE PTR [rbx+0x3]
  402b76:	f7 d8                	neg    eax
  402b78:	eb 02                	jmp    402b7c <submitr+0x6f6>
  402b7a:	89 d0                	mov    eax,edx
  402b7c:	85 c0                	test   eax,eax
  402b7e:	74 40                	je     402bc0 <submitr+0x73a>
  402b80:	bf 60 3e 40 00       	mov    edi,0x403e60
  402b85:	b9 05 00 00 00       	mov    ecx,0x5
  402b8a:	48 89 de             	mov    rsi,rbx
  402b8d:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  402b8f:	0f 97 c0             	seta   al
  402b92:	0f 92 c1             	setb   cl
  402b95:	29 c8                	sub    eax,ecx
  402b97:	0f be c0             	movsx  eax,al
  402b9a:	85 c0                	test   eax,eax
  402b9c:	74 2e                	je     402bcc <submitr+0x746>
  402b9e:	85 d2                	test   edx,edx
  402ba0:	75 13                	jne    402bb5 <submitr+0x72f>
  402ba2:	0f b6 43 01          	movzx  eax,BYTE PTR [rbx+0x1]
  402ba6:	ba 4b 00 00 00       	mov    edx,0x4b
  402bab:	29 c2                	sub    edx,eax
  402bad:	75 06                	jne    402bb5 <submitr+0x72f>
  402baf:	0f b6 53 02          	movzx  edx,BYTE PTR [rbx+0x2]
  402bb3:	f7 da                	neg    edx
  402bb5:	85 d2                	test   edx,edx
  402bb7:	75 0e                	jne    402bc7 <submitr+0x741>
  402bb9:	b8 00 00 00 00       	mov    eax,0x0
  402bbe:	eb 0c                	jmp    402bcc <submitr+0x746>
  402bc0:	b8 00 00 00 00       	mov    eax,0x0
  402bc5:	eb 05                	jmp    402bcc <submitr+0x746>
  402bc7:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402bcc:	48 8b 9c 24 48 a0 00 	mov    rbx,QWORD PTR [rsp+0xa048]
  402bd3:	00 
  402bd4:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  402bdb:	00 00 
  402bdd:	74 05                	je     402be4 <submitr+0x75e>
  402bdf:	e8 0c e1 ff ff       	call   400cf0 <__stack_chk_fail@plt>
  402be4:	48 81 c4 58 a0 00 00 	add    rsp,0xa058
  402beb:	5b                   	pop    rbx
  402bec:	5d                   	pop    rbp
  402bed:	41 5c                	pop    r12
  402bef:	41 5d                	pop    r13
  402bf1:	41 5e                	pop    r14
  402bf3:	41 5f                	pop    r15
  402bf5:	c3                   	ret    

0000000000402bf6 <init_timeout>:
  402bf6:	85 ff                	test   edi,edi
  402bf8:	74 23                	je     402c1d <init_timeout+0x27>
  402bfa:	53                   	push   rbx
  402bfb:	89 fb                	mov    ebx,edi
  402bfd:	85 ff                	test   edi,edi
  402bff:	79 05                	jns    402c06 <init_timeout+0x10>
  402c01:	bb 00 00 00 00       	mov    ebx,0x0
  402c06:	be ba 21 40 00       	mov    esi,0x4021ba
  402c0b:	bf 0e 00 00 00       	mov    edi,0xe
  402c10:	e8 4b e1 ff ff       	call   400d60 <signal@plt>
  402c15:	89 df                	mov    edi,ebx
  402c17:	e8 04 e1 ff ff       	call   400d20 <alarm@plt>
  402c1c:	5b                   	pop    rbx
  402c1d:	f3 c3                	repz ret 

0000000000402c1f <init_driver>:
  402c1f:	55                   	push   rbp
  402c20:	53                   	push   rbx
  402c21:	48 83 ec 28          	sub    rsp,0x28
  402c25:	48 89 fd             	mov    rbp,rdi
  402c28:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402c2f:	00 00 
  402c31:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  402c36:	31 c0                	xor    eax,eax
  402c38:	be 01 00 00 00       	mov    esi,0x1
  402c3d:	bf 0d 00 00 00       	mov    edi,0xd
  402c42:	e8 19 e1 ff ff       	call   400d60 <signal@plt>
  402c47:	be 01 00 00 00       	mov    esi,0x1
  402c4c:	bf 1d 00 00 00       	mov    edi,0x1d
  402c51:	e8 0a e1 ff ff       	call   400d60 <signal@plt>
  402c56:	be 01 00 00 00       	mov    esi,0x1
  402c5b:	bf 1d 00 00 00       	mov    edi,0x1d
  402c60:	e8 fb e0 ff ff       	call   400d60 <signal@plt>
  402c65:	ba 00 00 00 00       	mov    edx,0x0
  402c6a:	be 01 00 00 00       	mov    esi,0x1
  402c6f:	bf 02 00 00 00       	mov    edi,0x2
  402c74:	e8 17 e2 ff ff       	call   400e90 <socket@plt>
  402c79:	85 c0                	test   eax,eax
  402c7b:	79 4f                	jns    402ccc <init_driver+0xad>
  402c7d:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
  402c84:	3a 20 43 
  402c87:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  402c8b:	48 b8 6c 69 65 6e 74 	movabs rax,0x6e7520746e65696c
  402c92:	20 75 6e 
  402c95:	48 89 45 08          	mov    QWORD PTR [rbp+0x8],rax
  402c99:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  402ca0:	74 6f 20 
  402ca3:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  402ca7:	48 b8 63 72 65 61 74 	movabs rax,0x7320657461657263
  402cae:	65 20 73 
  402cb1:	48 89 45 18          	mov    QWORD PTR [rbp+0x18],rax
  402cb5:	c7 45 20 6f 63 6b 65 	mov    DWORD PTR [rbp+0x20],0x656b636f
  402cbc:	66 c7 45 24 74 00    	mov    WORD PTR [rbp+0x24],0x74
  402cc2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402cc7:	e9 2a 01 00 00       	jmp    402df6 <init_driver+0x1d7>
  402ccc:	89 c3                	mov    ebx,eax
  402cce:	bf 65 3e 40 00       	mov    edi,0x403e65
  402cd3:	e8 98 e0 ff ff       	call   400d70 <gethostbyname@plt>
  402cd8:	48 85 c0             	test   rax,rax
  402cdb:	75 68                	jne    402d45 <init_driver+0x126>
  402cdd:	48 b8 45 72 72 6f 72 	movabs rax,0x44203a726f727245
  402ce4:	3a 20 44 
  402ce7:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  402ceb:	48 b8 4e 53 20 69 73 	movabs rax,0x6e7520736920534e
  402cf2:	20 75 6e 
  402cf5:	48 89 45 08          	mov    QWORD PTR [rbp+0x8],rax
  402cf9:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
  402d00:	74 6f 20 
  402d03:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  402d07:	48 b8 72 65 73 6f 6c 	movabs rax,0x2065766c6f736572
  402d0e:	76 65 20 
  402d11:	48 89 45 18          	mov    QWORD PTR [rbp+0x18],rax
  402d15:	48 b8 73 65 72 76 65 	movabs rax,0x6120726576726573
  402d1c:	72 20 61 
  402d1f:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
  402d23:	c7 45 28 64 64 72 65 	mov    DWORD PTR [rbp+0x28],0x65726464
  402d2a:	66 c7 45 2c 73 73    	mov    WORD PTR [rbp+0x2c],0x7373
  402d30:	c6 45 2e 00          	mov    BYTE PTR [rbp+0x2e],0x0
  402d34:	89 df                	mov    edi,ebx
  402d36:	e8 f5 df ff ff       	call   400d30 <close@plt>
  402d3b:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402d40:	e9 b1 00 00 00       	jmp    402df6 <init_driver+0x1d7>
  402d45:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  402d4c:	00 
  402d4d:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x0
  402d54:	00 00 
  402d56:	66 c7 04 24 02 00    	mov    WORD PTR [rsp],0x2
  402d5c:	48 63 50 14          	movsxd rdx,DWORD PTR [rax+0x14]
  402d60:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  402d64:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  402d67:	48 8d 7c 24 04       	lea    rdi,[rsp+0x4]
  402d6c:	b9 0c 00 00 00       	mov    ecx,0xc
  402d71:	e8 0a e0 ff ff       	call   400d80 <__memmove_chk@plt>
  402d76:	66 c7 44 24 02 3c 9a 	mov    WORD PTR [rsp+0x2],0x9a3c
  402d7d:	ba 10 00 00 00       	mov    edx,0x10
  402d82:	48 89 e6             	mov    rsi,rsp
  402d85:	89 df                	mov    edi,ebx
  402d87:	e8 d4 e0 ff ff       	call   400e60 <connect@plt>
  402d8c:	85 c0                	test   eax,eax
  402d8e:	79 50                	jns    402de0 <init_driver+0x1c1>
  402d90:	48 b8 45 72 72 6f 72 	movabs rax,0x55203a726f727245
  402d97:	3a 20 55 
  402d9a:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
  402d9e:	48 b8 6e 61 62 6c 65 	movabs rax,0x6f7420656c62616e
  402da5:	20 74 6f 
  402da8:	48 89 45 08          	mov    QWORD PTR [rbp+0x8],rax
  402dac:	48 b8 20 63 6f 6e 6e 	movabs rax,0x7463656e6e6f6320
  402db3:	65 63 74 
  402db6:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
  402dba:	48 b8 20 74 6f 20 73 	movabs rax,0x76726573206f7420
  402dc1:	65 72 76 
  402dc4:	48 89 45 18          	mov    QWORD PTR [rbp+0x18],rax
  402dc8:	66 c7 45 20 65 72    	mov    WORD PTR [rbp+0x20],0x7265
  402dce:	c6 45 22 00          	mov    BYTE PTR [rbp+0x22],0x0
  402dd2:	89 df                	mov    edi,ebx
  402dd4:	e8 57 df ff ff       	call   400d30 <close@plt>
  402dd9:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402dde:	eb 16                	jmp    402df6 <init_driver+0x1d7>
  402de0:	89 df                	mov    edi,ebx
  402de2:	e8 49 df ff ff       	call   400d30 <close@plt>
  402de7:	66 c7 45 00 4f 4b    	mov    WORD PTR [rbp+0x0],0x4b4f
  402ded:	c6 45 02 00          	mov    BYTE PTR [rbp+0x2],0x0
  402df1:	b8 00 00 00 00       	mov    eax,0x0
  402df6:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
  402dfb:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  402e02:	00 00 
  402e04:	74 05                	je     402e0b <init_driver+0x1ec>
  402e06:	e8 e5 de ff ff       	call   400cf0 <__stack_chk_fail@plt>
  402e0b:	48 83 c4 28          	add    rsp,0x28
  402e0f:	5b                   	pop    rbx
  402e10:	5d                   	pop    rbp
  402e11:	c3                   	ret    

0000000000402e12 <driver_post>:
  402e12:	53                   	push   rbx
  402e13:	4c 89 cb             	mov    rbx,r9
  402e16:	45 85 c0             	test   r8d,r8d
  402e19:	74 27                	je     402e42 <driver_post+0x30>
  402e1b:	48 89 ca             	mov    rdx,rcx
  402e1e:	be 75 3e 40 00       	mov    esi,0x403e75
  402e23:	bf 01 00 00 00       	mov    edi,0x1
  402e28:	b8 00 00 00 00       	mov    eax,0x0
  402e2d:	e8 ce df ff ff       	call   400e00 <__printf_chk@plt>
  402e32:	66 c7 03 4f 4b       	mov    WORD PTR [rbx],0x4b4f
  402e37:	c6 43 02 00          	mov    BYTE PTR [rbx+0x2],0x0
  402e3b:	b8 00 00 00 00       	mov    eax,0x0
  402e40:	eb 3f                	jmp    402e81 <driver_post+0x6f>
  402e42:	48 85 ff             	test   rdi,rdi
  402e45:	74 2c                	je     402e73 <driver_post+0x61>
  402e47:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  402e4a:	74 27                	je     402e73 <driver_post+0x61>
  402e4c:	48 83 ec 08          	sub    rsp,0x8
  402e50:	41 51                	push   r9
  402e52:	49 89 c9             	mov    r9,rcx
  402e55:	49 89 d0             	mov    r8,rdx
  402e58:	48 89 f9             	mov    rcx,rdi
  402e5b:	48 89 f2             	mov    rdx,rsi
  402e5e:	be 9a 3c 00 00       	mov    esi,0x3c9a
  402e63:	bf 65 3e 40 00       	mov    edi,0x403e65
  402e68:	e8 19 f6 ff ff       	call   402486 <submitr>
  402e6d:	48 83 c4 10          	add    rsp,0x10
  402e71:	eb 0e                	jmp    402e81 <driver_post+0x6f>
  402e73:	66 c7 03 4f 4b       	mov    WORD PTR [rbx],0x4b4f
  402e78:	c6 43 02 00          	mov    BYTE PTR [rbx+0x2],0x0
  402e7c:	b8 00 00 00 00       	mov    eax,0x0
  402e81:	5b                   	pop    rbx
  402e82:	c3                   	ret    

0000000000402e83 <check>:
  402e83:	89 f8                	mov    eax,edi
  402e85:	c1 e8 1c             	shr    eax,0x1c
  402e88:	85 c0                	test   eax,eax
  402e8a:	74 1d                	je     402ea9 <check+0x26>
  402e8c:	b9 00 00 00 00       	mov    ecx,0x0
  402e91:	eb 0b                	jmp    402e9e <check+0x1b>
  402e93:	89 f8                	mov    eax,edi
  402e95:	d3 e8                	shr    eax,cl
  402e97:	3c 0a                	cmp    al,0xa
  402e99:	74 14                	je     402eaf <check+0x2c>
  402e9b:	83 c1 08             	add    ecx,0x8
  402e9e:	83 f9 1f             	cmp    ecx,0x1f
  402ea1:	7e f0                	jle    402e93 <check+0x10>
  402ea3:	b8 01 00 00 00       	mov    eax,0x1
  402ea8:	c3                   	ret    
  402ea9:	b8 00 00 00 00       	mov    eax,0x0
  402eae:	c3                   	ret    
  402eaf:	b8 00 00 00 00       	mov    eax,0x0
  402eb4:	c3                   	ret    

0000000000402eb5 <gencookie>:
  402eb5:	53                   	push   rbx
  402eb6:	83 c7 01             	add    edi,0x1
  402eb9:	e8 e2 dd ff ff       	call   400ca0 <srandom@plt>
  402ebe:	e8 fd de ff ff       	call   400dc0 <random@plt>
  402ec3:	89 c3                	mov    ebx,eax
  402ec5:	89 c7                	mov    edi,eax
  402ec7:	e8 b7 ff ff ff       	call   402e83 <check>
  402ecc:	85 c0                	test   eax,eax
  402ece:	74 ee                	je     402ebe <gencookie+0x9>
  402ed0:	89 d8                	mov    eax,ebx
  402ed2:	5b                   	pop    rbx
  402ed3:	c3                   	ret    
  402ed4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402edb:	00 00 00 
  402ede:	66 90                	xchg   ax,ax

0000000000402ee0 <__libc_csu_init>:
  402ee0:	41 57                	push   r15
  402ee2:	41 56                	push   r14
  402ee4:	41 89 ff             	mov    r15d,edi
  402ee7:	41 55                	push   r13
  402ee9:	41 54                	push   r12
  402eeb:	4c 8d 25 1e 1f 20 00 	lea    r12,[rip+0x201f1e]        # 604e10 <__frame_dummy_init_array_entry>
  402ef2:	55                   	push   rbp
  402ef3:	48 8d 2d 1e 1f 20 00 	lea    rbp,[rip+0x201f1e]        # 604e18 <__init_array_end>
  402efa:	53                   	push   rbx
  402efb:	49 89 f6             	mov    r14,rsi
  402efe:	49 89 d5             	mov    r13,rdx
  402f01:	4c 29 e5             	sub    rbp,r12
  402f04:	48 83 ec 08          	sub    rsp,0x8
  402f08:	48 c1 fd 03          	sar    rbp,0x3
  402f0c:	e8 37 dd ff ff       	call   400c48 <_init>
  402f11:	48 85 ed             	test   rbp,rbp
  402f14:	74 20                	je     402f36 <__libc_csu_init+0x56>
  402f16:	31 db                	xor    ebx,ebx
  402f18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  402f1f:	00 
  402f20:	4c 89 ea             	mov    rdx,r13
  402f23:	4c 89 f6             	mov    rsi,r14
  402f26:	44 89 ff             	mov    edi,r15d
  402f29:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  402f2d:	48 83 c3 01          	add    rbx,0x1
  402f31:	48 39 eb             	cmp    rbx,rbp
  402f34:	75 ea                	jne    402f20 <__libc_csu_init+0x40>
  402f36:	48 83 c4 08          	add    rsp,0x8
  402f3a:	5b                   	pop    rbx
  402f3b:	5d                   	pop    rbp
  402f3c:	41 5c                	pop    r12
  402f3e:	41 5d                	pop    r13
  402f40:	41 5e                	pop    r14
  402f42:	41 5f                	pop    r15
  402f44:	c3                   	ret    
  402f45:	90                   	nop
  402f46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402f4d:	00 00 00 

0000000000402f50 <__libc_csu_fini>:
  402f50:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402f54 <_fini>:
  402f54:	48 83 ec 08          	sub    rsp,0x8
  402f58:	48 83 c4 08          	add    rsp,0x8
  402f5c:	c3                   	ret    
