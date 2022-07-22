
kernels.o:     file format elf32-i386


Disassembly of section .text:

00000000 <naive_rotate>:
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	57                   	push   %edi
   6:	56                   	push   %esi
   7:	53                   	push   %ebx
   8:	83 ec 08             	sub    $0x8,%esp
   b:	8b 44 24 1c          	mov    0x1c(%esp),%eax 
   f:	85 c0                	test   %eax,%eax
  11:	7e 79                	jle    8c <naive_rotate+0x8c>
  13:	8b 44 24 1c          	mov    0x1c(%esp),%eax dim
  17:	8b 4c 24 20          	mov    0x20(%esp),%ecx *src
  1b:	31 f6                	xor    %esi,%esi
  1d:	31 ff                	xor    %edi,%edi
  1f:	6b 5c 24 1c fa       	imul   $0xfffffffa,0x1c(%esp),%ebx
  24:	83 e8 01             	sub    $0x1,%eax dim-1
  27:	0f af 44 24 1c       	imul   0x1c(%esp),%eax dim
  2c:	8d 14 40             	lea    (%eax,%eax,2),%edx 3*dim
  2f:	8b 44 24 24          	mov    0x24(%esp),%eax dst
  33:	8d 2c 50             	lea    (%eax,%edx,2),%ebp dst + 3*dim*2
  36:	8b 44 24 1c          	mov    0x1c(%esp),%eax dim
  3a:	8d 04 40             	lea    (%eax,%eax,2),%eax 3*dim
  3d:	01 c0                	add    %eax,%eax 6*dim
  3f:	89 44 24 04          	mov    %eax,0x4(%esp) 
  43:	01 c1                	add    %eax,%ecx *src +  6*dim
  45:	8d 76 00             	lea    0x0(%esi),%esi
  48:	8b 54 24 20          	mov    0x20(%esp),%edx
  4c:	89 34 24             	mov    %esi,(%esp)
  4f:	8d 04 76             	lea    (%esi,%esi,2),%eax
  52:	8d 04 42             	lea    (%edx,%eax,2),%eax
  55:	89 ea                	mov    %ebp,%edx
  57:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  5e:	66 90                	xchg   %ax,%ax
  60:	8b 30                	mov    (%eax),%esi
  62:	83 c0 06             	add    $0x6,%eax
  65:	89 32                	mov    %esi,(%edx)
  67:	0f b7 70 fe          	movzwl -0x2(%eax),%esi
  6b:	66 89 72 04          	mov    %si,0x4(%edx)
  6f:	01 da                	add    %ebx,%edx
  71:	39 c8                	cmp    %ecx,%eax
  73:	75 eb                	jne    60 <naive_rotate+0x60>
  75:	8b 34 24             	mov    (%esp),%esi
  78:	83 c7 01             	add    $0x1,%edi
  7b:	83 c5 06             	add    $0x6,%ebp
  7e:	03 74 24 1c          	add    0x1c(%esp),%esi
  82:	03 4c 24 04          	add    0x4(%esp),%ecx
  86:	39 7c 24 1c          	cmp    %edi,0x1c(%esp)
  8a:	75 bc                	jne    48 <naive_rotate+0x48>
  8c:	83 c4 08             	add    $0x8,%esp
  8f:	5b                   	pop    %ebx
  90:	5e                   	pop    %esi
  91:	5f                   	pop    %edi
  92:	5d                   	pop    %ebp
  93:	c3                   	ret    
  94:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  9f:	90                   	nop

000000a0 <rotate>:
  a0:	f3 0f 1e fb          	endbr32 
  a4:	55                   	push   %ebp
  a5:	57                   	push   %edi
  a6:	56                   	push   %esi
  a7:	53                   	push   %ebx
  a8:	83 ec 04             	sub    $0x4,%esp
  ab:	8b 6c 24 18          	mov    0x18(%esp),%ebp
  af:	85 ed                	test   %ebp,%ebp
  b1:	7e 5a                	jle    10d <rotate+0x6d>
  b3:	8b 4c 24 20          	mov    0x20(%esp),%ecx
  b7:	8d 5c 6d 00          	lea    0x0(%ebp,%ebp,2),%ebx
  bb:	8d 75 ff             	lea    -0x1(%ebp),%esi
  be:	31 ff                	xor    %edi,%edi
  c0:	01 db                	add    %ebx,%ebx
  c2:	01 d9                	add    %ebx,%ecx
  c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  c8:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  cc:	8d 04 76             	lea    (%esi,%esi,2),%eax
  cf:	8d 04 42             	lea    (%edx,%eax,2),%eax
  d2:	8b 54 24 20          	mov    0x20(%esp),%edx
  d6:	89 04 24             	mov    %eax,(%esp)
  d9:	8d 04 7f             	lea    (%edi,%edi,2),%eax
  dc:	8d 04 42             	lea    (%edx,%eax,2),%eax
  df:	8b 14 24             	mov    (%esp),%edx
  e2:	89 34 24             	mov    %esi,(%esp)
  e5:	8d 76 00             	lea    0x0(%esi),%esi
  e8:	8b 32                	mov    (%edx),%esi
  ea:	83 c0 06             	add    $0x6,%eax
  ed:	89 70 fa             	mov    %esi,-0x6(%eax)
  f0:	0f b7 72 04          	movzwl 0x4(%edx),%esi
  f4:	01 da                	add    %ebx,%edx
  f6:	66 89 70 fe          	mov    %si,-0x2(%eax)
  fa:	39 c8                	cmp    %ecx,%eax
  fc:	75 ea                	jne    e8 <rotate+0x48>
  fe:	8b 34 24             	mov    (%esp),%esi
 101:	01 ef                	add    %ebp,%edi
 103:	01 d9                	add    %ebx,%ecx
 105:	83 ee 01             	sub    $0x1,%esi
 108:	83 fe ff             	cmp    $0xffffffff,%esi
 10b:	75 bb                	jne    c8 <rotate+0x28>
 10d:	83 c4 04             	add    $0x4,%esp
 110:	5b                   	pop    %ebx
 111:	5e                   	pop    %esi
 112:	5f                   	pop    %edi
 113:	5d                   	pop    %ebp
 114:	c3                   	ret    
 115:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000120 <naive_smooth>:
 120:	f3 0f 1e fb          	endbr32 
 124:	55                   	push   %ebp
 125:	57                   	push   %edi
 126:	56                   	push   %esi
 127:	53                   	push   %ebx
 128:	83 ec 48             	sub    $0x48,%esp
 12b:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 12f:	85 c0                	test   %eax,%eax
 131:	0f 8e 9f 01 00 00    	jle    2d6 <naive_smooth+0x1b6>
 137:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 13b:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 142:	00 
 143:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%esp)
 14a:	00 
 14b:	83 e8 01             	sub    $0x1,%eax
 14e:	89 44 24 28          	mov    %eax,0x28(%esp)
 152:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 156:	8d 04 40             	lea    (%eax,%eax,2),%eax
 159:	01 c0                	add    %eax,%eax
 15b:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 15f:	90                   	nop
 160:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 164:	ba 00 00 00 00       	mov    $0x0,%edx
 169:	8b 7c 24 64          	mov    0x64(%esp),%edi
 16d:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 174:	00 
 175:	89 d8                	mov    %ebx,%eax
 177:	89 5c 24 44          	mov    %ebx,0x44(%esp)
 17b:	83 e8 01             	sub    $0x1,%eax
 17e:	0f 49 d0             	cmovns %eax,%edx
 181:	8b 44 24 28          	mov    0x28(%esp),%eax
 185:	83 c3 01             	add    $0x1,%ebx
 188:	89 5c 24 40          	mov    %ebx,0x40(%esp)
 18c:	39 d8                	cmp    %ebx,%eax
 18e:	89 54 24 34          	mov    %edx,0x34(%esp)
 192:	0f 4e d8             	cmovle %eax,%ebx
 195:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 199:	0f af 54 24 5c       	imul   0x5c(%esp),%edx
 19e:	8d 04 40             	lea    (%eax,%eax,2),%eax
 1a1:	89 5c 24 38          	mov    %ebx,0x38(%esp)
 1a5:	8d 3c 47             	lea    (%edi,%eax,2),%edi
 1a8:	8d 43 01             	lea    0x1(%ebx),%eax
 1ab:	89 54 24 30          	mov    %edx,0x30(%esp)
 1af:	89 44 24 24          	mov    %eax,0x24(%esp)
 1b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1b7:	90                   	nop
 1b8:	8b 4c 24 34          	mov    0x34(%esp),%ecx
 1bc:	8b 44 24 38          	mov    0x38(%esp),%eax
 1c0:	39 c1                	cmp    %eax,%ecx
 1c2:	0f 8f fc ff ff ff    	jg     1c4 <naive_smooth+0xa4>
 1c8:	8b 44 24 20          	mov    0x20(%esp),%eax
 1cc:	bb 00 00 00 00       	mov    $0x0,%ebx
 1d1:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 1d8:	00 
 1d9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 1e0:	00 
 1e1:	8d 70 01             	lea    0x1(%eax),%esi
 1e4:	89 c2                	mov    %eax,%edx
 1e6:	8b 44 24 28          	mov    0x28(%esp),%eax
 1ea:	89 0c 24             	mov    %ecx,(%esp)
 1ed:	83 ea 01             	sub    $0x1,%edx
 1f0:	89 74 24 14          	mov    %esi,0x14(%esp)
 1f4:	0f 48 d3             	cmovs  %ebx,%edx
 1f7:	39 f0                	cmp    %esi,%eax
 1f9:	8b 5c 24 60          	mov    0x60(%esp),%ebx
 1fd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 204:	00 
 205:	0f 4e f0             	cmovle %eax,%esi
 208:	8b 44 24 30          	mov    0x30(%esp),%eax
 20c:	31 c9                	xor    %ecx,%ecx
 20e:	89 74 24 04          	mov    %esi,0x4(%esp)
 212:	01 d0                	add    %edx,%eax
 214:	29 d6                	sub    %edx,%esi
 216:	8d 04 40             	lea    (%eax,%eax,2),%eax
 219:	83 c6 01             	add    $0x1,%esi
 21c:	8d 1c 43             	lea    (%ebx,%eax,2),%ebx
 21f:	8d 04 36             	lea    (%esi,%esi,1),%eax
 222:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 226:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22d:	8d 76 00             	lea    0x0(%esi),%esi
 230:	3b 54 24 04          	cmp    0x4(%esp),%edx
 234:	7f 3c                	jg     272 <naive_smooth+0x152>
 236:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 23a:	01 f0                	add    %esi,%eax
 23c:	8d 04 43             	lea    (%ebx,%eax,2),%eax
 23f:	89 44 24 18          	mov    %eax,0x18(%esp)
 243:	89 d8                	mov    %ebx,%eax
 245:	8d 76 00             	lea    0x0(%esi),%esi
 248:	0f b7 28             	movzwl (%eax),%ebp
 24b:	83 c0 06             	add    $0x6,%eax
 24e:	01 6c 24 08          	add    %ebp,0x8(%esp)
 252:	0f b7 68 fc          	movzwl -0x4(%eax),%ebp
 256:	01 6c 24 0c          	add    %ebp,0xc(%esp)
 25a:	0f b7 68 fe          	movzwl -0x2(%eax),%ebp
 25e:	01 6c 24 10          	add    %ebp,0x10(%esp)
 262:	3b 44 24 18          	cmp    0x18(%esp),%eax
 266:	75 e0                	jne    248 <naive_smooth+0x128>
 268:	8b 44 24 04          	mov    0x4(%esp),%eax
 26c:	29 d1                	sub    %edx,%ecx
 26e:	8d 4c 01 01          	lea    0x1(%ecx,%eax,1),%ecx
 272:	83 04 24 01          	addl   $0x1,(%esp)
 276:	03 5c 24 2c          	add    0x2c(%esp),%ebx
 27a:	8b 04 24             	mov    (%esp),%eax
 27d:	39 44 24 24          	cmp    %eax,0x24(%esp)
 281:	75 ad                	jne    230 <naive_smooth+0x110>
 283:	8b 44 24 08          	mov    0x8(%esp),%eax
 287:	83 c7 06             	add    $0x6,%edi
 28a:	99                   	cltd   
 28b:	f7 f9                	idiv   %ecx
 28d:	66 89 47 fa          	mov    %ax,-0x6(%edi)
 291:	8b 44 24 0c          	mov    0xc(%esp),%eax
 295:	99                   	cltd   
 296:	f7 f9                	idiv   %ecx
 298:	66 89 47 fc          	mov    %ax,-0x4(%edi)
 29c:	8b 44 24 10          	mov    0x10(%esp),%eax
 2a0:	99                   	cltd   
 2a1:	f7 f9                	idiv   %ecx
 2a3:	66 89 47 fe          	mov    %ax,-0x2(%edi)
 2a7:	8b 44 24 14          	mov    0x14(%esp),%eax
 2ab:	39 44 24 5c          	cmp    %eax,0x5c(%esp)
 2af:	74 0f                	je     2c0 <naive_smooth+0x1a0>
 2b1:	8b 44 24 14          	mov    0x14(%esp),%eax
 2b5:	89 44 24 20          	mov    %eax,0x20(%esp)
 2b9:	e9 fa fe ff ff       	jmp    1b8 <naive_smooth+0x98>
 2be:	66 90                	xchg   %ax,%ax
 2c0:	8b 7c 24 5c          	mov    0x5c(%esp),%edi
 2c4:	01 7c 24 3c          	add    %edi,0x3c(%esp)
 2c8:	8b 7c 24 20          	mov    0x20(%esp),%edi
 2cc:	39 7c 24 44          	cmp    %edi,0x44(%esp)
 2d0:	0f 85 8a fe ff ff    	jne    160 <naive_smooth+0x40>
 2d6:	83 c4 48             	add    $0x48,%esp
 2d9:	5b                   	pop    %ebx
 2da:	5e                   	pop    %esi
 2db:	5f                   	pop    %edi
 2dc:	5d                   	pop    %ebp
 2dd:	c3                   	ret    
 2de:	66 90                	xchg   %ax,%ax

000002e0 <smooth>:
 2e0:	f3 0f 1e fb          	endbr32 
 2e4:	e9 37 fe ff ff       	jmp    120 <naive_smooth>
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002f0 <register_rotate_functions>:
 2f0:	f3 0f 1e fb          	endbr32 
 2f4:	53                   	push   %ebx
 2f5:	e8 fc ff ff ff       	call   2f6 <register_rotate_functions+0x6>
 2fa:	81 c3 02 00 00 00    	add    $0x2,%ebx
 300:	83 ec 10             	sub    $0x10,%esp
 303:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 309:	50                   	push   %eax
 30a:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 310:	50                   	push   %eax
 311:	e8 fc ff ff ff       	call   312 <register_rotate_functions+0x22>
 316:	58                   	pop    %eax
 317:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 31d:	5a                   	pop    %edx
 31e:	50                   	push   %eax
 31f:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 325:	50                   	push   %eax
 326:	e8 fc ff ff ff       	call   327 <register_rotate_functions+0x37>
 32b:	83 c4 18             	add    $0x18,%esp
 32e:	5b                   	pop    %ebx
 32f:	c3                   	ret    

00000330 <register_smooth_functions>:
 330:	f3 0f 1e fb          	endbr32 
 334:	53                   	push   %ebx
 335:	e8 fc ff ff ff       	call   336 <register_smooth_functions+0x6>
 33a:	81 c3 02 00 00 00    	add    $0x2,%ebx
 340:	83 ec 10             	sub    $0x10,%esp
 343:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 349:	50                   	push   %eax
 34a:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 350:	50                   	push   %eax
 351:	e8 fc ff ff ff       	call   352 <register_smooth_functions+0x22>
 356:	58                   	pop    %eax
 357:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 35d:	5a                   	pop    %edx
 35e:	50                   	push   %eax
 35f:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
 365:	50                   	push   %eax
 366:	e8 fc ff ff ff       	call   367 <register_smooth_functions+0x37>
 36b:	83 c4 18             	add    $0x18,%esp
 36e:	5b                   	pop    %ebx
 36f:	c3                   	ret    

Disassembly of section .text.unlikely:

00000000 <naive_smooth.cold>:
   0:	0f 0b                	ud2    

Disassembly of section .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	mov    (%esp),%ebx
   3:	c3                   	ret    
