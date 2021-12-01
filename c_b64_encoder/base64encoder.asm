
b64_encoder:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <_init-0xcab>
 328:	78 38                	js     362 <_init-0xc9e>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	10 00                	adc    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	00 00                	add    %al,(%rax)
 34b:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 34f:	00 03                	add    %al,(%rbx)
 351:	00 00                	add    %al,(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000358 <.note.gnu.build-id>:
 358:	04 00                	add    $0x0,%al
 35a:	00 00                	add    %al,(%rax)
 35c:	14 00                	adc    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	03 00                	add    (%rax),%eax
 362:	00 00                	add    %al,(%rax)
 364:	47                   	rex.RXB
 365:	4e 55                	rex.WRX push %rbp
 367:	00 68 55             	add    %ch,0x55(%rax)
 36a:	02 f3                	add    %bl,%dh
 36c:	26 45                	es rex.RB
 36e:	47 54                	rex.RXB push %r12
 370:	87 5e 5f             	xchg   %ebx,0x5f(%rsi)
 373:	9d                   	popfq  
 374:	42 74 04             	rex.X je 37b <_init-0xc85>
 377:	87 29                	xchg   %ebp,(%rcx)
 379:	a3                   	.byte 0xa3
 37a:	2c ce                	sub    $0xce,%al

Disassembly of section .note.ABI-tag:

000000000000037c <.note.ABI-tag>:
 37c:	04 00                	add    $0x0,%al
 37e:	00 00                	add    %al,(%rax)
 380:	10 00                	adc    %al,(%rax)
 382:	00 00                	add    %al,(%rax)
 384:	01 00                	add    %eax,(%rax)
 386:	00 00                	add    %al,(%rax)
 388:	47                   	rex.RXB
 389:	4e 55                	rex.WRX push %rbp
 38b:	00 00                	add    %al,(%rax)
 38d:	00 00                	add    %al,(%rax)
 38f:	00 03                	add    %al,(%rbx)
 391:	00 00                	add    %al,(%rax)
 393:	00 02                	add    %al,(%rdx)
 395:	00 00                	add    %al,(%rax)
 397:	00 00                	add    %al,(%rax)
 399:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003a0 <.gnu.hash>:
 3a0:	02 00                	add    (%rax),%al
 3a2:	00 00                	add    %al,(%rax)
 3a4:	0c 00                	or     $0x0,%al
 3a6:	00 00                	add    %al,(%rax)
 3a8:	01 00                	add    %eax,(%rax)
 3aa:	00 00                	add    %al,(%rax)
 3ac:	06                   	(bad)  
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 00                	add    %al,(%rax)
 3b1:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
 3b7:	00 0c 00             	add    %cl,(%rax,%rax,1)
 3ba:	00 00                	add    %al,(%rax)
 3bc:	00 00                	add    %al,(%rax)
 3be:	00 00                	add    %al,(%rax)
 3c0:	d1 65 ce             	shll   -0x32(%rbp)
 3c3:	6d                   	insl   (%dx),%es:(%rdi)

Disassembly of section .dynsym:

00000000000003c8 <.dynsym>:
	...
 3e0:	0b 00                	or     (%rax),%eax
 3e2:	00 00                	add    %al,(%rax)
 3e4:	20 00                	and    %al,(%rax)
	...
 3f6:	00 00                	add    %al,(%rax)
 3f8:	55                   	push   %rbp
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 12                	add    %dl,(%rdx)
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 7b 00             	add    %bh,0x0(%rbx)
 412:	00 00                	add    %al,(%rax)
 414:	12 00                	adc    (%rax),%al
	...
 426:	00 00                	add    %al,(%rax)
 428:	63 00                	movslq (%rax),%eax
 42a:	00 00                	add    %al,(%rax)
 42c:	12 00                	adc    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	74 00                	je     442 <_init-0xbbe>
 442:	00 00                	add    %al,(%rax)
 444:	12 00                	adc    (%rax),%al
	...
 456:	00 00                	add    %al,(%rax)
 458:	82                   	(bad)  
 459:	00 00                	add    %al,(%rax)
 45b:	00 12                	add    %dl,(%rdx)
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 9f 00 00 00 12    	add    %bl,0x12000000(%rdi)
	...
 485:	00 00                	add    %al,(%rax)
 487:	00 27                	add    %ah,(%rdi)
 489:	00 00                	add    %al,(%rax)
 48b:	00 20                	add    %ah,(%rax)
	...
 49d:	00 00                	add    %al,(%rax)
 49f:	00 89 00 00 00 12    	add    %cl,0x12000000(%rcx)
	...
 4b5:	00 00                	add    %al,(%rax)
 4b7:	00 36                	add    %dh,(%rsi)
 4b9:	00 00                	add    %al,(%rax)
 4bb:	00 20                	add    %ah,(%rax)
	...
 4cd:	00 00                	add    %al,(%rax)
 4cf:	00 50 00             	add    %dl,0x0(%rax)
 4d2:	00 00                	add    %al,(%rax)
 4d4:	12 00                	adc    (%rax),%al
	...
 4e6:	00 00                	add    %al,(%rax)
 4e8:	90                   	nop
 4e9:	00 00                	add    %al,(%rax)
 4eb:	00 22                	add    %ah,(%rdx)
	...

Disassembly of section .dynstr:

0000000000000500 <.dynstr>:
 500:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 504:	6d                   	insl   (%dx),%es:(%rdi)
 505:	2e 73 6f             	jae,pn 577 <_init-0xa89>
 508:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%rdi)
 50d:	54                   	push   %rsp
 50e:	4d 5f                	rex.WRB pop %r15
 510:	64 65 72 65          	fs gs jb 579 <_init-0xa87>
 514:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 51b:	4d 
 51c:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 51e:	6f                   	outsl  %ds:(%rsi),(%dx)
 51f:	6e                   	outsb  %ds:(%rsi),(%dx)
 520:	65 54                	gs push %rsp
 522:	61                   	(bad)  
 523:	62                   	(bad)  
 524:	6c                   	insb   (%dx),%es:(%rdi)
 525:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 529:	67 6d                	insl   (%dx),%es:(%edi)
 52b:	6f                   	outsl  %ds:(%rsi),(%dx)
 52c:	6e                   	outsb  %ds:(%rsi),(%dx)
 52d:	5f                   	pop    %rdi
 52e:	73 74                	jae    5a4 <_init-0xa5c>
 530:	61                   	(bad)  
 531:	72 74                	jb     5a7 <_init-0xa59>
 533:	5f                   	pop    %rdi
 534:	5f                   	pop    %rdi
 535:	00 5f 49             	add    %bl,0x49(%rdi)
 538:	54                   	push   %rsp
 539:	4d 5f                	rex.WRB pop %r15
 53b:	72 65                	jb     5a2 <_init-0xa5e>
 53d:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 544:	4d 
 545:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 547:	6f                   	outsl  %ds:(%rsi),(%dx)
 548:	6e                   	outsb  %ds:(%rsi),(%dx)
 549:	65 54                	gs push %rsp
 54b:	61                   	(bad)  
 54c:	62                   	(bad)  
 54d:	6c                   	insb   (%dx),%es:(%rdi)
 54e:	65 00 63 65          	add    %ah,%gs:0x65(%rbx)
 552:	69 6c 00 70 6f 77 00 	imul   $0x6c00776f,0x70(%rax,%rax,1),%ebp
 559:	6c 
 55a:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
 561:	36 00 5f 5f          	add    %bl,%ss:0x5f(%rdi)
 565:	73 74                	jae    5db <_init-0xa25>
 567:	61                   	(bad)  
 568:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 56b:	63 68 6b             	movslq 0x6b(%rax),%ebp
 56e:	5f                   	pop    %rdi
 56f:	66 61                	data16 (bad) 
 571:	69 6c 00 70 72 69 6e 	imul   $0x746e6972,0x70(%rax,%rax,1),%ebp
 578:	74 
 579:	66 00 73 74          	data16 add %dh,0x74(%rbx)
 57d:	72 6c                	jb     5eb <_init-0xa15>
 57f:	65 6e                	outsb  %gs:(%rsi),(%dx)
 581:	00 6d 65             	add    %ch,0x65(%rbp)
 584:	6d                   	insl   (%dx),%es:(%rdi)
 585:	73 65                	jae    5ec <_init-0xa14>
 587:	74 00                	je     589 <_init-0xa77>
 589:	6d                   	insl   (%dx),%es:(%rdi)
 58a:	61                   	(bad)  
 58b:	6c                   	insb   (%dx),%es:(%rdi)
 58c:	6c                   	insb   (%dx),%es:(%rdi)
 58d:	6f                   	outsl  %ds:(%rsi),(%dx)
 58e:	63 00                	movslq (%rax),%eax
 590:	5f                   	pop    %rdi
 591:	5f                   	pop    %rdi
 592:	63 78 61             	movslq 0x61(%rax),%edi
 595:	5f                   	pop    %rdi
 596:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 59c:	7a 65                	jp     603 <_init-0x9fd>
 59e:	00 5f 5f             	add    %bl,0x5f(%rdi)
 5a1:	6c                   	insb   (%dx),%es:(%rdi)
 5a2:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 5a9:	72 74                	jb     61f <_init-0x9e1>
 5ab:	5f                   	pop    %rdi
 5ac:	6d                   	insl   (%dx),%es:(%rdi)
 5ad:	61                   	(bad)  
 5ae:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 5b5:	43 5f                	rex.XB pop %r15
 5b7:	32 2e                	xor    (%rsi),%ch
 5b9:	34 00                	xor    $0x0,%al
 5bb:	47                   	rex.RXB
 5bc:	4c                   	rex.WR
 5bd:	49                   	rex.WB
 5be:	42                   	rex.X
 5bf:	43 5f                	rex.XB pop %r15
 5c1:	32 2e                	xor    (%rsi),%ch
 5c3:	32 2e                	xor    (%rsi),%ch
 5c5:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 5ca:	42                   	rex.X
 5cb:	43 5f                	rex.XB pop %r15
 5cd:	32 2e                	xor    (%rsi),%ch
 5cf:	32 39                	xor    (%rcx),%bh
	...

Disassembly of section .gnu.version:

00000000000005d2 <.gnu.version>:
 5d2:	00 00                	add    %al,(%rax)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	02 00                	add    (%rax),%al
 5d8:	03 00                	add    (%rax),%eax
 5da:	04 00                	add    $0x0,%al
 5dc:	03 00                	add    (%rax),%eax
 5de:	03 00                	add    (%rax),%eax
 5e0:	03 00                	add    (%rax),%eax
 5e2:	00 00                	add    %al,(%rax)
 5e4:	03 00                	add    (%rax),%eax
 5e6:	00 00                	add    %al,(%rax)
 5e8:	05                   	.byte 0x5
 5e9:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .gnu.version_r:

00000000000005f0 <.gnu.version_r>:
 5f0:	01 00                	add    %eax,(%rax)
 5f2:	02 00                	add    (%rax),%al
 5f4:	59                   	pop    %rcx
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 10                	add    %dl,(%rax)
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 30                	add    %dh,(%rax)
 5fd:	00 00                	add    %al,(%rax)
 5ff:	00 14 69             	add    %dl,(%rcx,%rbp,2)
 602:	69 0d 00 00 04 00 b1 	imul   $0xb1,0x40000(%rip),%ecx        # 4060c <_end+0x3c5f4>
 609:	00 00 00 
 60c:	10 00                	adc    %al,(%rax)
 60e:	00 00                	add    %al,(%rax)
 610:	75 1a                	jne    62c <_init-0x9d4>
 612:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 618:	bb 00 00 00 00       	mov    $0x0,%ebx
 61d:	00 00                	add    %al,(%rax)
 61f:	00 01                	add    %al,(%rcx)
 621:	00 02                	add    %al,(%rdx)
 623:	00 01                	add    %al,(%rcx)
 625:	00 00                	add    %al,(%rax)
 627:	00 10                	add    %dl,(%rax)
 629:	00 00                	add    %al,(%rax)
 62b:	00 00                	add    %al,(%rax)
 62d:	00 00                	add    %al,(%rax)
 62f:	00 75 1a             	add    %dh,0x1a(%rbp)
 632:	69 09 00 00 05 00    	imul   $0x50000,(%rcx),%ecx
 638:	bb 00 00 00 10       	mov    $0x10000000,%ebx
 63d:	00 00                	add    %al,(%rax)
 63f:	00 89 91 96 06 00    	add    %cl,0x69691(%rcx)
 645:	00 02                	add    %al,(%rdx)
 647:	00 c7                	add    %al,%bh
 649:	00 00                	add    %al,(%rax)
 64b:	00 00                	add    %al,(%rax)
 64d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000650 <.rela.dyn>:
 650:	78 3d                	js     68f <_init-0x971>
 652:	00 00                	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	08 00                	or     %al,(%rax)
 65a:	00 00                	add    %al,(%rax)
 65c:	00 00                	add    %al,(%rax)
 65e:	00 00                	add    %al,(%rax)
 660:	00 12                	add    %dl,(%rdx)
 662:	00 00                	add    %al,(%rax)
 664:	00 00                	add    %al,(%rax)
 666:	00 00                	add    %al,(%rax)
 668:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0(%rip)        # 66f <_init-0x991>
 66f:	00 08                	add    %cl,(%rax)
 671:	00 00                	add    %al,(%rax)
 673:	00 00                	add    %al,(%rax)
 675:	00 00                	add    %al,(%rax)
 677:	00 c0                	add    %al,%al
 679:	11 00                	adc    %eax,(%rax)
 67b:	00 00                	add    %al,(%rax)
 67d:	00 00                	add    %al,(%rax)
 67f:	00 08                	add    %cl,(%rax)
 681:	40 00 00             	add    %al,(%rax)
 684:	00 00                	add    %al,(%rax)
 686:	00 00                	add    %al,(%rax)
 688:	08 00                	or     %al,(%rax)
 68a:	00 00                	add    %al,(%rax)
 68c:	00 00                	add    %al,(%rax)
 68e:	00 00                	add    %al,(%rax)
 690:	08 40 00             	or     %al,0x0(%rax)
 693:	00 00                	add    %al,(%rax)
 695:	00 00                	add    %al,(%rax)
 697:	00 d8                	add    %bl,%al
 699:	3f                   	(bad)  
 69a:	00 00                	add    %al,(%rax)
 69c:	00 00                	add    %al,(%rax)
 69e:	00 00                	add    %al,(%rax)
 6a0:	06                   	(bad)  
 6a1:	00 00                	add    %al,(%rax)
 6a3:	00 01                	add    %al,(%rcx)
	...
 6ad:	00 00                	add    %al,(%rax)
 6af:	00 e0                	add    %ah,%al
 6b1:	3f                   	(bad)  
 6b2:	00 00                	add    %al,(%rax)
 6b4:	00 00                	add    %al,(%rax)
 6b6:	00 00                	add    %al,(%rax)
 6b8:	06                   	(bad)  
 6b9:	00 00                	add    %al,(%rax)
 6bb:	00 07                	add    %al,(%rdi)
	...
 6c5:	00 00                	add    %al,(%rax)
 6c7:	00 e8                	add    %ch,%al
 6c9:	3f                   	(bad)  
 6ca:	00 00                	add    %al,(%rax)
 6cc:	00 00                	add    %al,(%rax)
 6ce:	00 00                	add    %al,(%rax)
 6d0:	06                   	(bad)  
 6d1:	00 00                	add    %al,(%rax)
 6d3:	00 08                	add    %cl,(%rax)
	...
 6dd:	00 00                	add    %al,(%rax)
 6df:	00 f0                	add    %dh,%al
 6e1:	3f                   	(bad)  
 6e2:	00 00                	add    %al,(%rax)
 6e4:	00 00                	add    %al,(%rax)
 6e6:	00 00                	add    %al,(%rax)
 6e8:	06                   	(bad)  
 6e9:	00 00                	add    %al,(%rax)
 6eb:	00 0a                	add    %cl,(%rdx)
	...
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 f8                	add    %bh,%al
 6f9:	3f                   	(bad)  
 6fa:	00 00                	add    %al,(%rax)
 6fc:	00 00                	add    %al,(%rax)
 6fe:	00 00                	add    %al,(%rax)
 700:	06                   	(bad)  
 701:	00 00                	add    %al,(%rax)
 703:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...

Disassembly of section .rela.plt:

0000000000000710 <.rela.plt>:
 710:	a0 3f 00 00 00 00 00 	movabs 0x70000000000003f,%al
 717:	00 07 
 719:	00 00                	add    %al,(%rax)
 71b:	00 02                	add    %al,(%rdx)
	...
 725:	00 00                	add    %al,(%rax)
 727:	00 a8 3f 00 00 00    	add    %ch,0x3f(%rax)
 72d:	00 00                	add    %al,(%rax)
 72f:	00 07                	add    %al,(%rdi)
 731:	00 00                	add    %al,(%rax)
 733:	00 03                	add    %al,(%rbx)
	...
 73d:	00 00                	add    %al,(%rax)
 73f:	00 b0 3f 00 00 00    	add    %dh,0x3f(%rax)
 745:	00 00                	add    %al,(%rax)
 747:	00 07                	add    %al,(%rdi)
 749:	00 00                	add    %al,(%rax)
 74b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 756:	00 00                	add    %al,(%rax)
 758:	b8 3f 00 00 00       	mov    $0x3f,%eax
 75d:	00 00                	add    %al,(%rax)
 75f:	00 07                	add    %al,(%rdi)
 761:	00 00                	add    %al,(%rax)
 763:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 769 <_init-0x897>
 769:	00 00                	add    %al,(%rax)
 76b:	00 00                	add    %al,(%rax)
 76d:	00 00                	add    %al,(%rax)
 76f:	00 c0                	add    %al,%al
 771:	3f                   	(bad)  
 772:	00 00                	add    %al,(%rax)
 774:	00 00                	add    %al,(%rax)
 776:	00 00                	add    %al,(%rax)
 778:	07                   	(bad)  
 779:	00 00                	add    %al,(%rax)
 77b:	00 06                	add    %al,(%rsi)
	...
 785:	00 00                	add    %al,(%rax)
 787:	00 c8                	add    %cl,%al
 789:	3f                   	(bad)  
 78a:	00 00                	add    %al,(%rax)
 78c:	00 00                	add    %al,(%rax)
 78e:	00 00                	add    %al,(%rax)
 790:	07                   	(bad)  
 791:	00 00                	add    %al,(%rax)
 793:	00 09                	add    %cl,(%rcx)
	...
 79d:	00 00                	add    %al,(%rax)
 79f:	00 d0                	add    %dl,%al
 7a1:	3f                   	(bad)  
 7a2:	00 00                	add    %al,(%rax)
 7a4:	00 00                	add    %al,(%rax)
 7a6:	00 00                	add    %al,(%rax)
 7a8:	07                   	(bad)  
 7a9:	00 00                	add    %al,(%rax)
 7ab:	00 0b                	add    %cl,(%rbx)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	pushq  0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmpq *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmpq *0x2f4d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <pow@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmpq *0x2ee5(%rip)        # 3fa0 <pow@GLIBC_2.29>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <strlen@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmpq *0x2edd(%rip)        # 3fa8 <strlen@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmpq *0x2ed5(%rip)        # 3fb0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <printf@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmpq *0x2ecd(%rip)        # 3fb8 <printf@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <memset@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmpq *0x2ec5(%rip)        # 3fc0 <memset@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <malloc@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmpq *0x2ebd(%rip)        # 3fc8 <malloc@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <ceil@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmpq *0x2eb5(%rip)        # 3fd0 <ceil@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	4c 8d 05 86 07 00 00 	lea    0x786(%rip),%r8        # 18c0 <__libc_csu_fini>
    113a:	48 8d 0d 0f 07 00 00 	lea    0x70f(%rip),%rcx        # 1850 <__libc_csu_init>
    1141:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1209 <main>
    1148:	ff 15 92 2e 00 00    	callq  *0x2e92(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    114e:	f4                   	hlt    
    114f:	90                   	nop

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 4010 <__TMC_END__>
    1157:	48 8d 05 b2 2e 00 00 	lea    0x2eb2(%rip),%rax        # 4010 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 6e 2e 00 00 	mov    0x2e6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmpq   *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4010 <__TMC_END__>
    1187:	48 8d 35 82 2e 00 00 	lea    0x2e82(%rip),%rsi        # 4010 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    %rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 2e 00 00 	mov    0x2e45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmpq   *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	retq   
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d 45 2e 00 00 00 	cmpb   $0x0,0x2e45(%rip)        # 4010 <__TMC_END__>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 22 2e 00 00 	cmpq   $0x0,0x2e22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 2e 00 00 	mov    0x2e26(%rip),%rdi        # 4008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	callq  10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	callq  1150 <deregister_tm_clones>
    11ec:	c6 05 1d 2e 00 00 01 	movb   $0x1,0x2e1d(%rip)        # 4010 <__TMC_END__>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	retq   
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	retq   
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmpq   1180 <register_tm_clones>

0000000000001209 <main>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	55                   	push   %rbp
    120e:	48 89 e5             	mov    %rsp,%rbp
    1211:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    1218:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    121f:	00 00 
    1221:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1225:	31 c0                	xor    %eax,%eax
    1227:	c7 45 a2 61 73 64 66 	movl   $0x66647361,-0x5e(%rbp)
    122e:	c6 45 a6 00          	movb   $0x0,-0x5a(%rbp)
    1232:	48 b8 41 42 43 44 45 	movabs $0x4847464544434241,%rax
    1239:	46 47 48 
    123c:	48 ba 49 4a 4b 4c 4d 	movabs $0x504f4e4d4c4b4a49,%rdx
    1243:	4e 4f 50 
    1246:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    124a:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    124e:	48 b8 51 52 53 54 55 	movabs $0x5857565554535251,%rax
    1255:	56 57 58 
    1258:	48 ba 59 5a 61 62 63 	movabs $0x6665646362615a59,%rdx
    125f:	64 65 66 
    1262:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1266:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    126a:	48 b8 67 68 69 6a 6b 	movabs $0x6e6d6c6b6a696867,%rax
    1271:	6c 6d 6e 
    1274:	48 ba 6f 70 71 72 73 	movabs $0x767574737271706f,%rdx
    127b:	74 75 76 
    127e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1282:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1286:	48 b8 77 78 79 7a 30 	movabs $0x333231307a797877,%rax
    128d:	31 32 33 
    1290:	48 ba 34 35 36 37 38 	movabs $0x2f2b393837363534,%rdx
    1297:	39 2b 2f 
    129a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    129e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    12a2:	48 8d 45 a2          	lea    -0x5e(%rbp),%rax
    12a6:	48 89 c7             	mov    %rax,%rdi
    12a9:	e8 12 fe ff ff       	callq  10c0 <strlen@plt>
    12ae:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)
    12b4:	8b 8d 60 ff ff ff    	mov    -0xa0(%rbp),%ecx
    12ba:	48 63 c1             	movslq %ecx,%rax
    12bd:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
    12c4:	48 c1 e8 20          	shr    $0x20,%rax
    12c8:	48 89 c2             	mov    %rax,%rdx
    12cb:	89 c8                	mov    %ecx,%eax
    12cd:	c1 f8 1f             	sar    $0x1f,%eax
    12d0:	89 d6                	mov    %edx,%esi
    12d2:	29 c6                	sub    %eax,%esi
    12d4:	89 f0                	mov    %esi,%eax
    12d6:	89 c2                	mov    %eax,%edx
    12d8:	01 d2                	add    %edx,%edx
    12da:	01 c2                	add    %eax,%edx
    12dc:	89 c8                	mov    %ecx,%eax
    12de:	29 d0                	sub    %edx,%eax
    12e0:	85 c0                	test   %eax,%eax
    12e2:	74 37                	je     131b <main+0x112>
    12e4:	8b 8d 60 ff ff ff    	mov    -0xa0(%rbp),%ecx
    12ea:	48 63 c1             	movslq %ecx,%rax
    12ed:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
    12f4:	48 c1 e8 20          	shr    $0x20,%rax
    12f8:	48 89 c2             	mov    %rax,%rdx
    12fb:	89 c8                	mov    %ecx,%eax
    12fd:	c1 f8 1f             	sar    $0x1f,%eax
    1300:	29 c2                	sub    %eax,%edx
    1302:	89 d0                	mov    %edx,%eax
    1304:	01 c0                	add    %eax,%eax
    1306:	01 d0                	add    %edx,%eax
    1308:	29 c1                	sub    %eax,%ecx
    130a:	89 ca                	mov    %ecx,%edx
    130c:	b8 03 00 00 00       	mov    $0x3,%eax
    1311:	29 d0                	sub    %edx,%eax
    1313:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
    1319:	eb 0a                	jmp    1325 <main+0x11c>
    131b:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%rbp)
    1322:	00 00 00 
    1325:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
    132b:	89 c6                	mov    %eax,%esi
    132d:	48 8d 3d d4 0c 00 00 	lea    0xcd4(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1334:	b8 00 00 00 00       	mov    $0x0,%eax
    1339:	e8 a2 fd ff ff       	callq  10e0 <printf@plt>
    133e:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
    1345:	00 00 00 
    1348:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
    134e:	83 c0 01             	add    $0x1,%eax
    1351:	48 98                	cltq   
    1353:	48 89 c7             	mov    %rax,%rdi
    1356:	e8 a5 fd ff ff       	callq  1100 <malloc@plt>
    135b:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    135f:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
    1365:	48 63 d0             	movslq %eax,%rdx
    1368:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    136c:	be 3d 00 00 00       	mov    $0x3d,%esi
    1371:	48 89 c7             	mov    %rax,%rdi
    1374:	e8 77 fd ff ff       	callq  10f0 <memset@plt>
    1379:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
    137f:	48 63 d0             	movslq %eax,%rdx
    1382:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1386:	48 01 d0             	add    %rdx,%rax
    1389:	c6 00 00             	movb   $0x0,(%rax)
    138c:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    1392:	c1 e0 03             	shl    $0x3,%eax
    1395:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
    139b:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    13a1:	83 c0 01             	add    $0x1,%eax
    13a4:	48 98                	cltq   
    13a6:	48 89 c7             	mov    %rax,%rdi
    13a9:	e8 52 fd ff ff       	callq  1100 <malloc@plt>
    13ae:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    13b2:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    13b8:	48 63 d0             	movslq %eax,%rdx
    13bb:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    13bf:	be 30 00 00 00       	mov    $0x30,%esi
    13c4:	48 89 c7             	mov    %rax,%rdi
    13c7:	e8 24 fd ff ff       	callq  10f0 <memset@plt>
    13cc:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    13d2:	48 63 d0             	movslq %eax,%rdx
    13d5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    13d9:	48 01 d0             	add    %rdx,%rax
    13dc:	c6 00 00             	movb   $0x0,(%rax)
    13df:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    13e5:	c1 e0 03             	shl    $0x3,%eax
    13e8:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    13ec:	f2 0f 10 0d 64 0d 00 	movsd  0xd64(%rip),%xmm1        # 2158 <_IO_stdin_used+0x158>
    13f3:	00 
    13f4:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    13f8:	e8 13 fd ff ff       	callq  1110 <ceil@plt>
    13fd:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    1401:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
    1407:	8b 95 6c ff ff ff    	mov    -0x94(%rbp),%edx
    140d:	8b 85 44 ff ff ff    	mov    -0xbc(%rbp),%eax
    1413:	01 d0                	add    %edx,%eax
    1415:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
    141b:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    1421:	83 c0 01             	add    $0x1,%eax
    1424:	48 98                	cltq   
    1426:	48 89 c7             	mov    %rax,%rdi
    1429:	e8 d2 fc ff ff       	callq  1100 <malloc@plt>
    142e:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1432:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    1438:	48 63 d0             	movslq %eax,%rdx
    143b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    143f:	be 20 00 00 00       	mov    $0x20,%esi
    1444:	48 89 c7             	mov    %rax,%rdi
    1447:	e8 a4 fc ff ff       	callq  10f0 <memset@plt>
    144c:	c7 85 48 ff ff ff 00 	movl   $0x0,-0xb8(%rbp)
    1453:	00 00 00 
    1456:	c7 85 48 ff ff ff 00 	movl   $0x0,-0xb8(%rbp)
    145d:	00 00 00 
    1460:	eb 25                	jmp    1487 <main+0x27e>
    1462:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    1468:	8d 50 01             	lea    0x1(%rax),%edx
    146b:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    1471:	29 d0                	sub    %edx,%eax
    1473:	48 63 d0             	movslq %eax,%rdx
    1476:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    147a:	48 01 d0             	add    %rdx,%rax
    147d:	c6 00 3d             	movb   $0x3d,(%rax)
    1480:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%rbp)
    1487:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    148d:	3b 85 44 ff ff ff    	cmp    -0xbc(%rbp),%eax
    1493:	7c cd                	jl     1462 <main+0x259>
    1495:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    149b:	48 98                	cltq   
    149d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    14a1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    14a5:	48 01 d0             	add    %rdx,%rax
    14a8:	c6 00 00             	movb   $0x0,(%rax)
    14ab:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    14af:	48 89 c6             	mov    %rax,%rsi
    14b2:	48 8d 3d 77 0b 00 00 	lea    0xb77(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    14b9:	b8 00 00 00 00       	mov    $0x0,%eax
    14be:	e8 1d fc ff ff       	callq  10e0 <printf@plt>
    14c3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%rbp)
    14ca:	00 00 00 
    14cd:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%rbp)
    14d4:	00 00 00 
    14d7:	c7 85 74 ff ff ff 01 	movl   $0x1,-0x8c(%rbp)
    14de:	00 00 00 
    14e1:	48 b8 30 30 30 30 30 	movabs $0x3030303030303030,%rax
    14e8:	30 30 30 
    14eb:	48 89 45 a7          	mov    %rax,-0x59(%rbp)
    14ef:	c6 45 af 00          	movb   $0x0,-0x51(%rbp)
    14f3:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
    14fa:	00 00 00 
    14fd:	e9 73 02 00 00       	jmpq   1775 <main+0x56c>
    1502:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
    1508:	48 98                	cltq   
    150a:	0f b6 44 05 a2       	movzbl -0x5e(%rbp,%rax,1),%eax
    150f:	0f be c0             	movsbl %al,%eax
    1512:	89 c6                	mov    %eax,%esi
    1514:	48 8d 3d 31 0b 00 00 	lea    0xb31(%rip),%rdi        # 204c <_IO_stdin_used+0x4c>
    151b:	b8 00 00 00 00       	mov    $0x0,%eax
    1520:	e8 bb fb ff ff       	callq  10e0 <printf@plt>
    1525:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
    152b:	48 98                	cltq   
    152d:	0f b6 44 05 a2       	movzbl -0x5e(%rbp,%rax,1),%eax
    1532:	0f be c0             	movsbl %al,%eax
    1535:	89 85 78 ff ff ff    	mov    %eax,-0x88(%rbp)
    153b:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    1541:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
    1547:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%rbp)
    154e:	00 00 00 
    1551:	e9 0b 02 00 00       	jmpq   1761 <main+0x558>
    1556:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
    155c:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
    1563:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    1569:	01 d0                	add    %edx,%eax
    156b:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
    1571:	b8 07 00 00 00       	mov    $0x7,%eax
    1576:	2b 85 5c ff ff ff    	sub    -0xa4(%rbp),%eax
    157c:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
    1582:	f2 0f 2a 85 74 ff ff 	cvtsi2sdl -0x8c(%rbp),%xmm0
    1589:	ff 
    158a:	48 8b 05 cf 0b 00 00 	mov    0xbcf(%rip),%rax        # 2160 <_IO_stdin_used+0x160>
    1591:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1595:	66 48 0f 6e c0       	movq   %rax,%xmm0
    159a:	e8 11 fb ff ff       	callq  10b0 <pow@plt>
    159f:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    15a3:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
    15a9:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    15af:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
    15b5:	7f 2e                	jg     15e5 <main+0x3dc>
    15b7:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    15bd:	29 85 58 ff ff ff    	sub    %eax,-0xa8(%rbp)
    15c3:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    15c9:	48 98                	cltq   
    15cb:	c6 44 05 a7 31       	movb   $0x31,-0x59(%rbp,%rax,1)
    15d0:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
    15d6:	48 63 d0             	movslq %eax,%rdx
    15d9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    15dd:	48 01 d0             	add    %rdx,%rax
    15e0:	c6 00 31             	movb   $0x31,(%rax)
    15e3:	eb 20                	jmp    1605 <main+0x3fc>
    15e5:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    15eb:	48 98                	cltq   
    15ed:	c6 44 05 a7 30       	movb   $0x30,-0x59(%rbp,%rax,1)
    15f2:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
    15f8:	48 63 d0             	movslq %eax,%rdx
    15fb:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    15ff:	48 01 d0             	add    %rdx,%rax
    1602:	c6 00 30             	movb   $0x30,(%rax)
    1605:	8b 8d 64 ff ff ff    	mov    -0x9c(%rbp),%ecx
    160b:	48 63 c1             	movslq %ecx,%rax
    160e:	48 69 c0 ab aa aa 2a 	imul   $0x2aaaaaab,%rax,%rax
    1615:	48 c1 e8 20          	shr    $0x20,%rax
    1619:	48 89 c2             	mov    %rax,%rdx
    161c:	89 c8                	mov    %ecx,%eax
    161e:	c1 f8 1f             	sar    $0x1f,%eax
    1621:	29 c2                	sub    %eax,%edx
    1623:	89 d0                	mov    %edx,%eax
    1625:	01 c0                	add    %eax,%eax
    1627:	01 d0                	add    %edx,%eax
    1629:	01 c0                	add    %eax,%eax
    162b:	29 c1                	sub    %eax,%ecx
    162d:	89 ca                	mov    %ecx,%edx
    162f:	b8 05 00 00 00       	mov    $0x5,%eax
    1634:	29 d0                	sub    %edx,%eax
    1636:	89 45 80             	mov    %eax,-0x80(%rbp)
    1639:	f2 0f 2a 45 80       	cvtsi2sdl -0x80(%rbp),%xmm0
    163e:	48 8b 05 1b 0b 00 00 	mov    0xb1b(%rip),%rax        # 2160 <_IO_stdin_used+0x160>
    1645:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1649:	66 48 0f 6e c0       	movq   %rax,%xmm0
    164e:	e8 5d fa ff ff       	callq  10b0 <pow@plt>
    1653:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    1657:	89 45 84             	mov    %eax,-0x7c(%rbp)
    165a:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
    1660:	48 63 d0             	movslq %eax,%rdx
    1663:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1667:	48 01 d0             	add    %rdx,%rax
    166a:	0f b6 00             	movzbl (%rax),%eax
    166d:	3c 31                	cmp    $0x31,%al
    166f:	75 09                	jne    167a <main+0x471>
    1671:	8b 45 84             	mov    -0x7c(%rbp),%eax
    1674:	01 85 50 ff ff ff    	add    %eax,-0xb0(%rbp)
    167a:	8b 8d 64 ff ff ff    	mov    -0x9c(%rbp),%ecx
    1680:	48 63 c1             	movslq %ecx,%rax
    1683:	48 69 c0 ab aa aa 2a 	imul   $0x2aaaaaab,%rax,%rax
    168a:	48 c1 e8 20          	shr    $0x20,%rax
    168e:	48 89 c2             	mov    %rax,%rdx
    1691:	89 c8                	mov    %ecx,%eax
    1693:	c1 f8 1f             	sar    $0x1f,%eax
    1696:	29 c2                	sub    %eax,%edx
    1698:	89 d0                	mov    %edx,%eax
    169a:	01 c0                	add    %eax,%eax
    169c:	01 d0                	add    %edx,%eax
    169e:	01 c0                	add    %eax,%eax
    16a0:	29 c1                	sub    %eax,%ecx
    16a2:	89 ca                	mov    %ecx,%edx
    16a4:	89 d6                	mov    %edx,%esi
    16a6:	48 8d 3d bb 09 00 00 	lea    0x9bb(%rip),%rdi        # 2068 <_IO_stdin_used+0x68>
    16ad:	b8 00 00 00 00       	mov    $0x0,%eax
    16b2:	e8 29 fa ff ff       	callq  10e0 <printf@plt>
    16b7:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
    16bd:	8d 48 01             	lea    0x1(%rax),%ecx
    16c0:	48 63 c1             	movslq %ecx,%rax
    16c3:	48 69 c0 ab aa aa 2a 	imul   $0x2aaaaaab,%rax,%rax
    16ca:	48 c1 e8 20          	shr    $0x20,%rax
    16ce:	48 89 c2             	mov    %rax,%rdx
    16d1:	89 c8                	mov    %ecx,%eax
    16d3:	c1 f8 1f             	sar    $0x1f,%eax
    16d6:	29 c2                	sub    %eax,%edx
    16d8:	89 d0                	mov    %edx,%eax
    16da:	01 c0                	add    %eax,%eax
    16dc:	01 d0                	add    %edx,%eax
    16de:	01 c0                	add    %eax,%eax
    16e0:	29 c1                	sub    %eax,%ecx
    16e2:	89 ca                	mov    %ecx,%edx
    16e4:	85 d2                	test   %edx,%edx
    16e6:	75 72                	jne    175a <main+0x551>
    16e8:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    16ee:	89 c6                	mov    %eax,%esi
    16f0:	48 8d 3d a0 09 00 00 	lea    0x9a0(%rip),%rdi        # 2097 <_IO_stdin_used+0x97>
    16f7:	b8 00 00 00 00       	mov    $0x0,%eax
    16fc:	e8 df f9 ff ff       	callq  10e0 <printf@plt>
    1701:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
    1707:	48 63 d0             	movslq %eax,%rdx
    170a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    170e:	48 01 c2             	add    %rax,%rdx
    1711:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    1717:	48 98                	cltq   
    1719:	0f b6 44 05 b0       	movzbl -0x50(%rbp,%rax,1),%eax
    171e:	88 02                	mov    %al,(%rdx)
    1720:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
    1726:	48 63 d0             	movslq %eax,%rdx
    1729:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    172d:	48 01 d0             	add    %rdx,%rax
    1730:	0f b6 00             	movzbl (%rax),%eax
    1733:	0f be c0             	movsbl %al,%eax
    1736:	89 c6                	mov    %eax,%esi
    1738:	48 8d 3d 79 09 00 00 	lea    0x979(%rip),%rdi        # 20b8 <_IO_stdin_used+0xb8>
    173f:	b8 00 00 00 00       	mov    $0x0,%eax
    1744:	e8 97 f9 ff ff       	callq  10e0 <printf@plt>
    1749:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%rbp)
    1750:	00 00 00 
    1753:	83 85 4c ff ff ff 01 	addl   $0x1,-0xb4(%rbp)
    175a:	83 85 5c ff ff ff 01 	addl   $0x1,-0xa4(%rbp)
    1761:	83 bd 5c ff ff ff 07 	cmpl   $0x7,-0xa4(%rbp)
    1768:	0f 8e e8 fd ff ff    	jle    1556 <main+0x34d>
    176e:	83 85 54 ff ff ff 01 	addl   $0x1,-0xac(%rbp)
    1775:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
    177b:	3b 85 60 ff ff ff    	cmp    -0xa0(%rbp),%eax
    1781:	0f 8c 7b fd ff ff    	jl     1502 <main+0x2f9>
    1787:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
    178d:	83 c0 01             	add    $0x1,%eax
    1790:	39 85 6c ff ff ff    	cmp    %eax,-0x94(%rbp)
    1796:	75 38                	jne    17d0 <main+0x5c7>
    1798:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    179e:	89 c6                	mov    %eax,%esi
    17a0:	48 8d 3d f0 08 00 00 	lea    0x8f0(%rip),%rdi        # 2097 <_IO_stdin_used+0x97>
    17a7:	b8 00 00 00 00       	mov    $0x0,%eax
    17ac:	e8 2f f9 ff ff       	callq  10e0 <printf@plt>
    17b1:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
    17b7:	48 63 d0             	movslq %eax,%rdx
    17ba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    17be:	48 01 c2             	add    %rax,%rdx
    17c1:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    17c7:	48 98                	cltq   
    17c9:	0f b6 44 05 b0       	movzbl -0x50(%rbp,%rax,1),%eax
    17ce:	88 02                	mov    %al,(%rdx)
    17d0:	48 8d 45 a7          	lea    -0x59(%rbp),%rax
    17d4:	48 89 c6             	mov    %rax,%rsi
    17d7:	48 8d 3d 10 09 00 00 	lea    0x910(%rip),%rdi        # 20ee <_IO_stdin_used+0xee>
    17de:	b8 00 00 00 00       	mov    $0x0,%eax
    17e3:	e8 f8 f8 ff ff       	callq  10e0 <printf@plt>
    17e8:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    17ec:	48 89 c6             	mov    %rax,%rsi
    17ef:	48 8d 3d 07 09 00 00 	lea    0x907(%rip),%rdi        # 20fd <_IO_stdin_used+0xfd>
    17f6:	b8 00 00 00 00       	mov    $0x0,%eax
    17fb:	e8 e0 f8 ff ff       	callq  10e0 <printf@plt>
    1800:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1804:	48 89 c6             	mov    %rax,%rsi
    1807:	48 8d 3d 07 09 00 00 	lea    0x907(%rip),%rdi        # 2115 <_IO_stdin_used+0x115>
    180e:	b8 00 00 00 00       	mov    $0x0,%eax
    1813:	e8 c8 f8 ff ff       	callq  10e0 <printf@plt>
    1818:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    181c:	48 89 c6             	mov    %rax,%rsi
    181f:	48 8d 3d 12 09 00 00 	lea    0x912(%rip),%rdi        # 2138 <_IO_stdin_used+0x138>
    1826:	b8 00 00 00 00       	mov    $0x0,%eax
    182b:	e8 b0 f8 ff ff       	callq  10e0 <printf@plt>
    1830:	b8 00 00 00 00       	mov    $0x0,%eax
    1835:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    1839:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1840:	00 00 
    1842:	74 05                	je     1849 <main+0x640>
    1844:	e8 87 f8 ff ff       	callq  10d0 <__stack_chk_fail@plt>
    1849:	c9                   	leaveq 
    184a:	c3                   	retq   
    184b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001850 <__libc_csu_init>:
    1850:	f3 0f 1e fa          	endbr64 
    1854:	41 57                	push   %r15
    1856:	4c 8d 3d 1b 25 00 00 	lea    0x251b(%rip),%r15        # 3d78 <__frame_dummy_init_array_entry>
    185d:	41 56                	push   %r14
    185f:	49 89 d6             	mov    %rdx,%r14
    1862:	41 55                	push   %r13
    1864:	49 89 f5             	mov    %rsi,%r13
    1867:	41 54                	push   %r12
    1869:	41 89 fc             	mov    %edi,%r12d
    186c:	55                   	push   %rbp
    186d:	48 8d 2d 0c 25 00 00 	lea    0x250c(%rip),%rbp        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1874:	53                   	push   %rbx
    1875:	4c 29 fd             	sub    %r15,%rbp
    1878:	48 83 ec 08          	sub    $0x8,%rsp
    187c:	e8 7f f7 ff ff       	callq  1000 <_init>
    1881:	48 c1 fd 03          	sar    $0x3,%rbp
    1885:	74 1f                	je     18a6 <__libc_csu_init+0x56>
    1887:	31 db                	xor    %ebx,%ebx
    1889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1890:	4c 89 f2             	mov    %r14,%rdx
    1893:	4c 89 ee             	mov    %r13,%rsi
    1896:	44 89 e7             	mov    %r12d,%edi
    1899:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    189d:	48 83 c3 01          	add    $0x1,%rbx
    18a1:	48 39 dd             	cmp    %rbx,%rbp
    18a4:	75 ea                	jne    1890 <__libc_csu_init+0x40>
    18a6:	48 83 c4 08          	add    $0x8,%rsp
    18aa:	5b                   	pop    %rbx
    18ab:	5d                   	pop    %rbp
    18ac:	41 5c                	pop    %r12
    18ae:	41 5d                	pop    %r13
    18b0:	41 5e                	pop    %r14
    18b2:	41 5f                	pop    %r15
    18b4:	c3                   	retq   
    18b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    18bc:	00 00 00 00 

00000000000018c0 <__libc_csu_fini>:
    18c0:	f3 0f 1e fa          	endbr64 
    18c4:	c3                   	retq   

Disassembly of section .fini:

00000000000018c8 <_fini>:
    18c8:	f3 0f 1e fa          	endbr64 
    18cc:	48 83 ec 08          	sub    $0x8,%rsp
    18d0:	48 83 c4 08          	add    $0x8,%rsp
    18d4:	c3                   	retq   

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	00 00                	add    %al,(%rax)
    2006:	00 00                	add    %al,(%rax)
    2008:	6e                   	outsb  %ds:(%rsi),(%dx)
    2009:	5f                   	pop    %rdi
    200a:	6e                   	outsb  %ds:(%rsi),(%dx)
    200b:	75 6d                	jne    207a <_IO_stdin_used+0x7a>
    200d:	62                   	(bad)  
    200e:	65 72 5f             	gs jb  2070 <_IO_stdin_used+0x70>
    2011:	6f                   	outsl  %ds:(%rsi),(%dx)
    2012:	66 5f                	pop    %di
    2014:	65 71 75             	gs jno 208c <_IO_stdin_used+0x8c>
    2017:	61                   	(bad)  
    2018:	6c                   	insb   (%dx),%es:(%rdi)
    2019:	73 5f                	jae    207a <_IO_stdin_used+0x7a>
    201b:	70 61                	jo     207e <_IO_stdin_used+0x7e>
    201d:	64 64 69 6e 67 5f 74 	fs imul $0x5f6f745f,%fs:0x67(%rsi),%ebp
    2024:	6f 5f 
    2026:	61                   	(bad)  
    2027:	70 70                	jo     2099 <_IO_stdin_used+0x99>
    2029:	65 6e                	outsb  %gs:(%rsi),(%dx)
    202b:	64 20 25 75 00 0a 20 	and    %ah,%fs:0x200a0075(%rip)        # 200a20a7 <_end+0x2009e08f>
    2032:	73 5f                	jae    2093 <_IO_stdin_used+0x93>
    2034:	62                   	(bad)  
    2035:	36 34 5f             	ss xor $0x5f,%al
    2038:	65 6e                	outsb  %gs:(%rsi),(%dx)
    203a:	63 6f 64             	movslq 0x64(%rdi),%ebp
    203d:	65 64 5f             	gs fs pop %rdi
    2040:	73 74                	jae    20b6 <_IO_stdin_used+0xb6>
    2042:	72 69                	jb     20ad <_IO_stdin_used+0xad>
    2044:	6e                   	outsb  %ds:(%rsi),(%dx)
    2045:	67 20 3a             	and    %bh,(%edx)
    2048:	20 25 73 00 0a 20    	and    %ah,0x200a0073(%rip)        # 200a20c1 <_end+0x2009e0a9>
    204e:	63 75 72             	movslq 0x72(%rbp),%esi
    2051:	72 65                	jb     20b8 <_IO_stdin_used+0xb8>
    2053:	6e                   	outsb  %ds:(%rsi),(%dx)
    2054:	74 20                	je     2076 <_IO_stdin_used+0x76>
    2056:	62                   	(bad)  
    2057:	79 74                	jns    20cd <_IO_stdin_used+0xcd>
    2059:	65 20 69 73          	and    %ch,%gs:0x73(%rcx)
    205d:	20 3a                	and    %bh,(%rdx)
    205f:	20 25 75 00 00 00    	and    %ah,0x75(%rip)        # 20da <_IO_stdin_used+0xda>
    2065:	00 00                	add    %al,(%rax)
    2067:	00 0a                	add    %cl,(%rdx)
    2069:	20 6e 5f             	and    %ch,0x5f(%rsi)
    206c:	62                   	(bad)  
    206d:	69 74 5f 69 6e 64 65 	imul   $0x7865646e,0x69(%rdi,%rbx,2),%esi
    2074:	78 
    2075:	5f                   	pop    %rdi
    2076:	69 6e 5f 62 79 74 65 	imul   $0x65747962,0x5f(%rsi),%ebp
    207d:	5f                   	pop    %rdi
    207e:	6f                   	outsl  %ds:(%rsi),(%dx)
    207f:	66 5f                	pop    %di
    2081:	69 6e 70 75 74 5f 73 	imul   $0x735f7475,0x70(%rsi),%ebp
    2088:	74 72                	je     20fc <_IO_stdin_used+0xfc>
    208a:	69 6e 67 20 6d 6f 64 	imul   $0x646f6d20,0x67(%rsi),%ebp
    2091:	20 36                	and    %dh,(%rsi)
    2093:	20 25 75 00 0a 20    	and    %ah,0x200a0075(%rip)        # 200a210e <_end+0x2009e0f6>
    2099:	6e                   	outsb  %ds:(%rsi),(%dx)
    209a:	5f                   	pop    %rdi
    209b:	62                   	(bad)  
    209c:	36 34 5f             	ss xor $0x5f,%al
    209f:	63 68 61             	movslq 0x61(%rax),%ebp
    20a2:	72 5f                	jb     2103 <_IO_stdin_used+0x103>
    20a4:	69 6e 5f 64 65 63 69 	imul   $0x69636564,0x5f(%rsi),%ebp
    20ab:	6d                   	insl   (%dx),%es:(%rdi)
    20ac:	61                   	(bad)  
    20ad:	6c                   	insb   (%dx),%es:(%rdi)
    20ae:	20 69 73             	and    %ch,0x73(%rcx)
    20b1:	20 25 75 00 00 00    	and    %ah,0x75(%rip)        # 212c <_IO_stdin_used+0x12c>
    20b7:	00 0a                	add    %cl,(%rdx)
    20b9:	73 5f                	jae    211a <_IO_stdin_used+0x11a>
    20bb:	62                   	(bad)  
    20bc:	36 34 5f             	ss xor $0x5f,%al
    20bf:	65 6e                	outsb  %gs:(%rsi),(%dx)
    20c1:	63 6f 64             	movslq 0x64(%rdi),%ebp
    20c4:	65 64 5f             	gs fs pop %rdi
    20c7:	73 74                	jae    213d <_IO_stdin_used+0x13d>
    20c9:	72 69                	jb     2134 <_IO_stdin_used+0x134>
    20cb:	6e                   	outsb  %ds:(%rsi),(%dx)
    20cc:	67 5b                	addr32 pop %rbx
    20ce:	6e                   	outsb  %ds:(%rsi),(%dx)
    20cf:	5f                   	pop    %rdi
    20d0:	62                   	(bad)  
    20d1:	36 34 5f             	ss xor $0x5f,%al
    20d4:	65 6e                	outsb  %gs:(%rsi),(%dx)
    20d6:	63 6f 64             	movslq 0x64(%rdi),%ebp
    20d9:	65 64 5f             	gs fs pop %rdi
    20dc:	73 74                	jae    2152 <_IO_stdin_used+0x152>
    20de:	72 69                	jb     2149 <_IO_stdin_used+0x149>
    20e0:	6e                   	outsb  %ds:(%rsi),(%dx)
    20e1:	67 5f                	addr32 pop %rdi
    20e3:	69 6e 64 65 78 5d 20 	imul   $0x205d7865,0x64(%rsi),%ebp
    20ea:	20 25 75 00 0a 20    	and    %ah,0x200a0075(%rip)        # 200a2165 <_end+0x2009e14d>
    20f0:	73 5f                	jae    2151 <_IO_stdin_used+0x151>
    20f2:	62                   	(bad)  
    20f3:	69 74 73 20 69 73 20 	imul   $0x25207369,0x20(%rbx,%rsi,2),%esi
    20fa:	25 
    20fb:	73 00                	jae    20fd <_IO_stdin_used+0xfd>
    20fd:	0a 20                	or     (%rax),%ah
    20ff:	73 5f                	jae    2160 <_IO_stdin_used+0x160>
    2101:	69 6e 70 75 74 5f 61 	imul   $0x615f7475,0x70(%rsi),%ebp
    2108:	73 5f                	jae    2169 <__GNU_EH_FRAME_HDR+0x1>
    210a:	62                   	(bad)  
    210b:	69 74 73 20 69 73 20 	imul   $0x25207369,0x20(%rbx,%rsi,2),%esi
    2112:	25 
    2113:	73 00                	jae    2115 <_IO_stdin_used+0x115>
    2115:	0a 20                	or     (%rax),%ah
    2117:	73 5f                	jae    2178 <__GNU_EH_FRAME_HDR+0x10>
    2119:	62                   	(bad)  
    211a:	36 34 5f             	ss xor $0x5f,%al
    211d:	65 6e                	outsb  %gs:(%rsi),(%dx)
    211f:	63 6f 64             	movslq 0x64(%rdi),%ebp
    2122:	65 64 5f             	gs fs pop %rdi
    2125:	73 74                	jae    219b <__GNU_EH_FRAME_HDR+0x33>
    2127:	72 69                	jb     2192 <__GNU_EH_FRAME_HDR+0x2a>
    2129:	6e                   	outsb  %ds:(%rsi),(%dx)
    212a:	67 20 69 73          	and    %ch,0x73(%ecx)
    212e:	20 20                	and    %ah,(%rax)
    2130:	25 73 00 00 00       	and    $0x73,%eax
    2135:	00 00                	add    %al,(%rax)
    2137:	00 0a                	add    %cl,(%rdx)
    2139:	20 62 36             	and    %ah,0x36(%rdx)
    213c:	34 20                	xor    $0x20,%al
    213e:	65 6e                	outsb  %gs:(%rsi),(%dx)
    2140:	63 6f 64             	movslq 0x64(%rdi),%ebp
    2143:	65 64 20 73 74       	gs and %dh,%fs:0x74(%rbx)
    2148:	72 69                	jb     21b3 <__GNU_EH_FRAME_HDR+0x4b>
    214a:	6e                   	outsb  %ds:(%rsi),(%dx)
    214b:	67 3a 20             	cmp    (%eax),%ah
    214e:	73 6d                	jae    21bd <__GNU_EH_FRAME_HDR+0x55>
    2150:	74 68                	je     21ba <__GNU_EH_FRAME_HDR+0x52>
    2152:	6e                   	outsb  %ds:(%rsi),(%dx)
    2153:	67 25 73 00 00 00    	addr32 and $0x73,%eax
    2159:	00 00                	add    %al,(%rax)
    215b:	00 00                	add    %al,(%rax)
    215d:	00 18                	add    %bl,(%rax)
    215f:	40 00 00             	add    %al,(%rax)
    2162:	00 00                	add    %al,(%rax)
    2164:	00 00                	add    %al,(%rax)
    2166:	00                   	.byte 0x0
    2167:	40                   	rex

Disassembly of section .eh_frame_hdr:

0000000000002168 <__GNU_EH_FRAME_HDR>:
    2168:	01 1b                	add    %ebx,(%rbx)
    216a:	03 3b                	add    (%rbx),%edi
    216c:	44 00 00             	add    %r8b,(%rax)
    216f:	00 07                	add    %al,(%rdi)
    2171:	00 00                	add    %al,(%rax)
    2173:	00 b8 ee ff ff 78    	add    %bh,0x78ffffee(%rax)
    2179:	00 00                	add    %al,(%rax)
    217b:	00 38                	add    %bh,(%rax)
    217d:	ef                   	out    %eax,(%dx)
    217e:	ff                   	(bad)  
    217f:	ff a0 00 00 00 48    	jmpq   *0x48000000(%rax)
    2185:	ef                   	out    %eax,(%dx)
    2186:	ff                   	(bad)  
    2187:	ff                   	(bad)  
    2188:	b8 00 00 00 b8       	mov    $0xb8000000,%eax
    218d:	ef                   	out    %eax,(%dx)
    218e:	ff                   	(bad)  
    218f:	ff 60 00             	jmpq   *0x0(%rax)
    2192:	00 00                	add    %al,(%rax)
    2194:	a1 f0 ff ff d0 00 00 	movabs 0xe8000000d0fffff0,%eax
    219b:	00 e8 
    219d:	f6 ff                	idiv   %bh
    219f:	ff f0                	push   %rax
    21a1:	00 00                	add    %al,(%rax)
    21a3:	00 58 f7             	add    %bl,-0x9(%rax)
    21a6:	ff                   	(bad)  
    21a7:	ff                   	(bad)  
    21a8:	38 01                	cmp    %al,(%rcx)
	...

Disassembly of section .eh_frame:

00000000000021b0 <__FRAME_END__-0x104>:
    21b0:	14 00                	adc    $0x0,%al
    21b2:	00 00                	add    %al,(%rax)
    21b4:	00 00                	add    %al,(%rax)
    21b6:	00 00                	add    %al,(%rax)
    21b8:	01 7a 52             	add    %edi,0x52(%rdx)
    21bb:	00 01                	add    %al,(%rcx)
    21bd:	78 10                	js     21cf <__GNU_EH_FRAME_HDR+0x67>
    21bf:	01 1b                	add    %ebx,(%rbx)
    21c1:	0c 07                	or     $0x7,%al
    21c3:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    21c9:	00 00                	add    %al,(%rax)
    21cb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    21ce:	00 00                	add    %al,(%rax)
    21d0:	50                   	push   %rax
    21d1:	ef                   	out    %eax,(%dx)
    21d2:	ff                   	(bad)  
    21d3:	ff 2f                	ljmp   *(%rdi)
    21d5:	00 00                	add    %al,(%rax)
    21d7:	00 00                	add    %al,(%rax)
    21d9:	44 07                	rex.R (bad) 
    21db:	10 00                	adc    %al,(%rax)
    21dd:	00 00                	add    %al,(%rax)
    21df:	00 24 00             	add    %ah,(%rax,%rax,1)
    21e2:	00 00                	add    %al,(%rax)
    21e4:	34 00                	xor    $0x0,%al
    21e6:	00 00                	add    %al,(%rax)
    21e8:	38 ee                	cmp    %ch,%dh
    21ea:	ff                   	(bad)  
    21eb:	ff 80 00 00 00 00    	incl   0x0(%rax)
    21f1:	0e                   	(bad)  
    21f2:	10 46 0e             	adc    %al,0xe(%rsi)
    21f5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    21f8:	0b 77 08             	or     0x8(%rdi),%esi
    21fb:	80 00 3f             	addb   $0x3f,(%rax)
    21fe:	1a 3a                	sbb    (%rdx),%bh
    2200:	2a 33                	sub    (%rbx),%dh
    2202:	24 22                	and    $0x22,%al
    2204:	00 00                	add    %al,(%rax)
    2206:	00 00                	add    %al,(%rax)
    2208:	14 00                	adc    $0x0,%al
    220a:	00 00                	add    %al,(%rax)
    220c:	5c                   	pop    %rsp
    220d:	00 00                	add    %al,(%rax)
    220f:	00 90 ee ff ff 10    	add    %dl,0x10ffffee(%rax)
	...
    221d:	00 00                	add    %al,(%rax)
    221f:	00 14 00             	add    %dl,(%rax,%rax,1)
    2222:	00 00                	add    %al,(%rax)
    2224:	74 00                	je     2226 <__GNU_EH_FRAME_HDR+0xbe>
    2226:	00 00                	add    %al,(%rax)
    2228:	88 ee                	mov    %ch,%dh
    222a:	ff                   	(bad)  
    222b:	ff 70 00             	pushq  0x0(%rax)
	...
    2236:	00 00                	add    %al,(%rax)
    2238:	1c 00                	sbb    $0x0,%al
    223a:	00 00                	add    %al,(%rax)
    223c:	8c 00                	mov    %es,(%rax)
    223e:	00 00                	add    %al,(%rax)
    2240:	c9                   	leaveq 
    2241:	ef                   	out    %eax,(%dx)
    2242:	ff                   	(bad)  
    2243:	ff 42 06             	incl   0x6(%rdx)
    2246:	00 00                	add    %al,(%rax)
    2248:	00 45 0e             	add    %al,0xe(%rbp)
    224b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    2251:	03 39                	add    (%rcx),%edi
    2253:	06                   	(bad)  
    2254:	0c 07                	or     $0x7,%al
    2256:	08 00                	or     %al,(%rax)
    2258:	44 00 00             	add    %r8b,(%rax)
    225b:	00 ac 00 00 00 f0 f5 	add    %ch,-0xa100000(%rax,%rax,1)
    2262:	ff                   	(bad)  
    2263:	ff 65 00             	jmpq   *0x0(%rbp)
    2266:	00 00                	add    %al,(%rax)
    2268:	00 46 0e             	add    %al,0xe(%rsi)
    226b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2271:	8e 03                	mov    (%rbx),%es
    2273:	45 0e                	rex.RB (bad) 
    2275:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    227b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff863030c5 <_end+0xffffffff862ff0ad>
    2281:	06                   	(bad)  
    2282:	48 0e                	rex.W (bad) 
    2284:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    228a:	6e                   	outsb  %ds:(%rsi),(%dx)
    228b:	0e                   	(bad)  
    228c:	38 41 0e             	cmp    %al,0xe(%rcx)
    228f:	30 41 0e             	xor    %al,0xe(%rcx)
    2292:	28 42 0e             	sub    %al,0xe(%rdx)
    2295:	20 42 0e             	and    %al,0xe(%rdx)
    2298:	18 42 0e             	sbb    %al,0xe(%rdx)
    229b:	10 42 0e             	adc    %al,0xe(%rdx)
    229e:	08 00                	or     %al,(%rax)
    22a0:	10 00                	adc    %al,(%rax)
    22a2:	00 00                	add    %al,(%rax)
    22a4:	f4                   	hlt    
    22a5:	00 00                	add    %al,(%rax)
    22a7:	00 18                	add    %bl,(%rax)
    22a9:	f6 ff                	idiv   %bh
    22ab:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 22b1 <__GNU_EH_FRAME_HDR+0x149>
    22b1:	00 00                	add    %al,(%rax)
	...

00000000000022b4 <__FRAME_END__>:
    22b4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003d78 <__frame_dummy_init_array_entry>:
    3d78:	00 12                	add    %dl,(%rdx)
    3d7a:	00 00                	add    %al,(%rax)
    3d7c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003d80 <__do_global_dtors_aux_fini_array_entry>:
    3d80:	c0 11 00             	rclb   $0x0,(%rcx)
    3d83:	00 00                	add    %al,(%rax)
    3d85:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003d88 <_DYNAMIC>:
    3d88:	01 00                	add    %eax,(%rax)
    3d8a:	00 00                	add    %al,(%rax)
    3d8c:	00 00                	add    %al,(%rax)
    3d8e:	00 00                	add    %al,(%rax)
    3d90:	01 00                	add    %eax,(%rax)
    3d92:	00 00                	add    %al,(%rax)
    3d94:	00 00                	add    %al,(%rax)
    3d96:	00 00                	add    %al,(%rax)
    3d98:	01 00                	add    %eax,(%rax)
    3d9a:	00 00                	add    %al,(%rax)
    3d9c:	00 00                	add    %al,(%rax)
    3d9e:	00 00                	add    %al,(%rax)
    3da0:	59                   	pop    %rcx
    3da1:	00 00                	add    %al,(%rax)
    3da3:	00 00                	add    %al,(%rax)
    3da5:	00 00                	add    %al,(%rax)
    3da7:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3daa:	00 00                	add    %al,(%rax)
    3dac:	00 00                	add    %al,(%rax)
    3dae:	00 00                	add    %al,(%rax)
    3db0:	00 10                	add    %dl,(%rax)
    3db2:	00 00                	add    %al,(%rax)
    3db4:	00 00                	add    %al,(%rax)
    3db6:	00 00                	add    %al,(%rax)
    3db8:	0d 00 00 00 00       	or     $0x0,%eax
    3dbd:	00 00                	add    %al,(%rax)
    3dbf:	00 c8                	add    %cl,%al
    3dc1:	18 00                	sbb    %al,(%rax)
    3dc3:	00 00                	add    %al,(%rax)
    3dc5:	00 00                	add    %al,(%rax)
    3dc7:	00 19                	add    %bl,(%rcx)
    3dc9:	00 00                	add    %al,(%rax)
    3dcb:	00 00                	add    %al,(%rax)
    3dcd:	00 00                	add    %al,(%rax)
    3dcf:	00 78 3d             	add    %bh,0x3d(%rax)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
    3dd6:	00 00                	add    %al,(%rax)
    3dd8:	1b 00                	sbb    (%rax),%eax
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
    3dde:	00 00                	add    %al,(%rax)
    3de0:	08 00                	or     %al,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	1a 00                	sbb    (%rax),%al
    3dea:	00 00                	add    %al,(%rax)
    3dec:	00 00                	add    %al,(%rax)
    3dee:	00 00                	add    %al,(%rax)
    3df0:	80 3d 00 00 00 00 00 	cmpb   $0x0,0x0(%rip)        # 3df7 <_DYNAMIC+0x6f>
    3df7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	08 00                	or     %al,(%rax)
    3e02:	00 00                	add    %al,(%rax)
    3e04:	00 00                	add    %al,(%rax)
    3e06:	00 00                	add    %al,(%rax)
    3e08:	f5                   	cmc    
    3e09:	fe                   	(bad)  
    3e0a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 a0 03 00 00 00    	add    %ah,0x3(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e1d <_DYNAMIC+0x95>
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 00                	add    %al,(%rax)
    3e21:	05 00 00 00 00       	add    $0x0,%eax
    3e26:	00 00                	add    %al,(%rax)
    3e28:	06                   	(bad)  
    3e29:	00 00                	add    %al,(%rax)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 c8                	add    %cl,%al
    3e31:	03 00                	add    (%rax),%eax
    3e33:	00 00                	add    %al,(%rax)
    3e35:	00 00                	add    %al,(%rax)
    3e37:	00 0a                	add    %cl,(%rdx)
    3e39:	00 00                	add    %al,(%rax)
    3e3b:	00 00                	add    %al,(%rax)
    3e3d:	00 00                	add    %al,(%rax)
    3e3f:	00 d2                	add    %dl,%dl
    3e41:	00 00                	add    %al,(%rax)
    3e43:	00 00                	add    %al,(%rax)
    3e45:	00 00                	add    %al,(%rax)
    3e47:	00 0b                	add    %cl,(%rbx)
    3e49:	00 00                	add    %al,(%rax)
    3e4b:	00 00                	add    %al,(%rax)
    3e4d:	00 00                	add    %al,(%rax)
    3e4f:	00 18                	add    %bl,(%rax)
    3e51:	00 00                	add    %al,(%rax)
    3e53:	00 00                	add    %al,(%rax)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3e5d <_DYNAMIC+0xd5>
	...
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 03                	add    %al,(%rbx)
    3e69:	00 00                	add    %al,(%rax)
    3e6b:	00 00                	add    %al,(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 88 3f 00 00 00    	add    %cl,0x3f(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 02                	add    %al,(%rdx)
    3e79:	00 00                	add    %al,(%rax)
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 a8 00 00 00 00    	add    %ch,0x0(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 14 00             	add    %dl,(%rax,%rax,1)
    3e8a:	00 00                	add    %al,(%rax)
    3e8c:	00 00                	add    %al,(%rax)
    3e8e:	00 00                	add    %al,(%rax)
    3e90:	07                   	(bad)  
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 17                	add    %dl,(%rdi)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 10                	add    %dl,(%rax)
    3ea1:	07                   	(bad)  
    3ea2:	00 00                	add    %al,(%rax)
    3ea4:	00 00                	add    %al,(%rax)
    3ea6:	00 00                	add    %al,(%rax)
    3ea8:	07                   	(bad)  
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 50 06             	add    %dl,0x6(%rax)
    3eb2:	00 00                	add    %al,(%rax)
    3eb4:	00 00                	add    %al,(%rax)
    3eb6:	00 00                	add    %al,(%rax)
    3eb8:	08 00                	or     %al,(%rax)
    3eba:	00 00                	add    %al,(%rax)
    3ebc:	00 00                	add    %al,(%rax)
    3ebe:	00 00                	add    %al,(%rax)
    3ec0:	c0 00 00             	rolb   $0x0,(%rax)
    3ec3:	00 00                	add    %al,(%rax)
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 09                	add    %cl,(%rcx)
    3ec9:	00 00                	add    %al,(%rax)
    3ecb:	00 00                	add    %al,(%rax)
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 18                	add    %bl,(%rax)
    3ed1:	00 00                	add    %al,(%rax)
    3ed3:	00 00                	add    %al,(%rax)
    3ed5:	00 00                	add    %al,(%rax)
    3ed7:	00 1e                	add    %bl,(%rsi)
    3ed9:	00 00                	add    %al,(%rax)
    3edb:	00 00                	add    %al,(%rax)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 08                	add    %cl,(%rax)
    3ee1:	00 00                	add    %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 fb                	add    %bh,%bl
    3ee9:	ff                   	(bad)  
    3eea:	ff 6f 00             	ljmp   *0x0(%rdi)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 01                	add    %al,(%rcx)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	08 00                	or     %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 fe                	add    %bh,%dh
    3ef9:	ff                   	(bad)  
    3efa:	ff 6f 00             	ljmp   *0x0(%rdi)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 f0                	add    %dh,%al
    3f01:	05 00 00 00 00       	add    $0x0,%eax
    3f06:	00 00                	add    %al,(%rax)
    3f08:	ff                   	(bad)  
    3f09:	ff                   	(bad)  
    3f0a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 02                	add    %al,(%rdx)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 f0                	add    %dh,%al
    3f19:	ff                   	(bad)  
    3f1a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 d2                	add    %dl,%dl
    3f21:	05 00 00 00 00       	add    $0x0,%eax
    3f26:	00 00                	add    %al,(%rax)
    3f28:	f9                   	stc    
    3f29:	ff                   	(bad)  
    3f2a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003f88 <_GLOBAL_OFFSET_TABLE_>:
    3f88:	88 3d 00 00 00 00    	mov    %bh,0x0(%rip)        # 3f8e <_GLOBAL_OFFSET_TABLE_+0x6>
	...
    3f9e:	00 00                	add    %al,(%rax)
    3fa0:	30 10                	xor    %dl,(%rax)
    3fa2:	00 00                	add    %al,(%rax)
    3fa4:	00 00                	add    %al,(%rax)
    3fa6:	00 00                	add    %al,(%rax)
    3fa8:	40 10 00             	adc    %al,(%rax)
    3fab:	00 00                	add    %al,(%rax)
    3fad:	00 00                	add    %al,(%rax)
    3faf:	00 50 10             	add    %dl,0x10(%rax)
    3fb2:	00 00                	add    %al,(%rax)
    3fb4:	00 00                	add    %al,(%rax)
    3fb6:	00 00                	add    %al,(%rax)
    3fb8:	60                   	(bad)  
    3fb9:	10 00                	adc    %al,(%rax)
    3fbb:	00 00                	add    %al,(%rax)
    3fbd:	00 00                	add    %al,(%rax)
    3fbf:	00 70 10             	add    %dh,0x10(%rax)
    3fc2:	00 00                	add    %al,(%rax)
    3fc4:	00 00                	add    %al,(%rax)
    3fc6:	00 00                	add    %al,(%rax)
    3fc8:	80 10 00             	adcb   $0x0,(%rax)
    3fcb:	00 00                	add    %al,(%rax)
    3fcd:	00 00                	add    %al,(%rax)
    3fcf:	00 90 10 00 00 00    	add    %dl,0x10(%rax)
	...

Disassembly of section .data:

0000000000004000 <__data_start>:
	...

0000000000004008 <__dso_handle>:
    4008:	08 40 00             	or     %al,0x0(%rax)
    400b:	00 00                	add    %al,(%rax)
    400d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000004010 <completed.8060>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0xf88>
   a:	74 75                	je     81 <_init-0xf7f>
   c:	20 39                	and    %bh,(%rcx)
   e:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  11:	30 2d 31 37 75 62    	xor    %ch,0x62753731(%rip)        # 62753748 <_end+0x6274f730>
  17:	75 6e                	jne    87 <_init-0xf79>
  19:	74 75                	je     90 <_init-0xf70>
  1b:	31 7e 32             	xor    %edi,0x32(%rsi)
  1e:	30 2e                	xor    %ch,(%rsi)
  20:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  23:	20 39                	and    %bh,(%rcx)
  25:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  28:	30 00                	xor    %al,(%rax)
