	.file	"geometry.cpp"
	.text
.globl _Z16RadiansToDegreesf
	.type	_Z16RadiansToDegreesf, @function
_Z16RadiansToDegreesf:
.LFB0:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$4, %esp
	flds	8(%ebp)
	flds	8(%ebp)
	fldl	.LC0
	fmulp	%st, %st(1)
	fldl	.LC1
	fdivp	%st, %st(1)
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	_Z16RadiansToDegreesf, .-_Z16RadiansToDegreesf
.globl _Z8degToRadf
	.type	_Z8degToRadf, @function
_Z8degToRadf:
.LFB1:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0x00000000, %eax
	movl	%eax, -4(%ebp)
	flds	8(%ebp)
	fldl	.LC4
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -24(%ebp)
	flds	-24(%ebp)
	leave
	ret
	.cfi_endproc
.LFE1:
	.size	_Z8degToRadf, .-_Z8degToRadf
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.globl _Z11GetDistance5pointS_
	.type	_Z11GetDistance5pointS_, @function
_Z11GetDistance5pointS_:
.LFB959:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	imull	-16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	imull	-12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	fildl	-20(%ebp)
	fstpl	(%esp)
	call	sqrt
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-20(%ebp)
	fldcw	-26(%ebp)
	movl	-20(%ebp), %eax
	leave
	ret
	.cfi_endproc
.LFE959:
	.size	_Z11GetDistance5pointS_, .-_Z11GetDistance5pointS_
.globl _Z12FindMidpoint5pointS_
	.type	_Z12FindMidpoint5pointS_, @function
_Z12FindMidpoint5pointS_:
.LFB960:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	%ecx, %ebx
	.cfi_offset 3, -12
	subl	%edx, %ebx
	movl	%ebx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	leal	(%ecx,%edx), %edx
	sarl	%edx
	movl	%edx, (%eax)
	movl	24(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	%ebx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	leal	(%ecx,%edx), %edx
	sarl	%edx
	movl	%edx, 4(%eax)
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
	.cfi_endproc
.LFE960:
	.size	_Z12FindMidpoint5pointS_, .-_Z12FindMidpoint5pointS_
.globl _Z20FindPolyAreaFromSideii
	.type	_Z20FindPolyAreaFromSideii, @function
_Z20FindPolyAreaFromSideii:
.LFB961:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	movl	%eax, -20(%ebp)
	movl	$180, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, -16(%ebp)
	fildl	-20(%ebp)
	fstpl	-40(%ebp)
	fildl	-16(%ebp)
	fstpl	(%esp)
	call	tan
	fdivrl	-40(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-12(%ebp)
	fldcw	-26(%ebp)
	movl	-20(%ebp), %eax
	imull	-12(%ebp), %eax
	imull	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	leave
	ret
	.cfi_endproc
.LFE961:
	.size	_Z20FindPolyAreaFromSideii, .-_Z20FindPolyAreaFromSideii
	.section	.rodata
.LC5:
	.string	"angle = (360 / "
.LC6:
	.string	") / 2"
.LC7:
	.string	"angle = "
.LC8:
	.string	" / 2"
.LC9:
	.string	"base = sin("
.LC10:
	.string	") * "
.LC11:
	.string	"base = "
.LC12:
	.string	" * "
.LC13:
	.string	"apothem = cos("
.LC14:
	.string	"apothem = "
.LC15:
	.string	"area = ("
.LC16:
	.string	"area = "
	.text
.globl _Z22FindPolyAreaFromRadiusiib
	.type	_Z22FindPolyAreaFromRadiusiib, @function
_Z22FindPolyAreaFromRadiusiib:
.LFB962:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$116, %esp
	movl	16(%ebp), %eax
	movb	%al, -28(%ebp)
	movl	$180, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstps	-16(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L12
	.cfi_offset 3, -12
	movl	$.LC5, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC6, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$360, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, %ebx
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$180, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, %ebx
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L12:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	sin
	fildl	8(%ebp)
	fmulp	%st, %st(1)
	fstps	-20(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L13
	movl	$.LC9, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	sin
	fstpl	-80(%ebp)
	movl	$.LC11, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fldl	-80(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEd
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	sin
	fildl	8(%ebp)
	fmulp	%st, %st(1)
	fstpl	-72(%ebp)
	movl	$.LC11, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fldl	-72(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L13:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	cos
	fildl	8(%ebp)
	fmulp	%st, %st(1)
	fstps	-12(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L14
	movl	$.LC13, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	cos
	fstpl	-64(%ebp)
	movl	$.LC14, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fldl	-64(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEd
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	cos
	fildl	8(%ebp)
	fmulp	%st, %st(1)
	fstpl	-56(%ebp)
	movl	$.LC14, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fldl	-56(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L14:
	flds	-20(%ebp)
	fmuls	-12(%ebp)
	fildl	12(%ebp)
	fmulp	%st, %st(1)
	fstps	-24(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L15
	movl	$.LC15, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	flds	-20(%ebp)
	fmuls	-12(%ebp)
	fstps	-44(%ebp)
	movl	$.LC16, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	flds	-44(%ebp)
	fstps	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	flds	-20(%ebp)
	fmuls	-12(%ebp)
	fildl	12(%ebp)
	fmulp	%st, %st(1)
	fstps	-40(%ebp)
	movl	$.LC16, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	flds	-40(%ebp)
	fstps	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L15:
	movl	-24(%ebp), %eax
	movl	%eax, -92(%ebp)
	flds	-92(%ebp)
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
	.cfi_endproc
.LFE962:
	.size	_Z22FindPolyAreaFromRadiusiib, .-_Z22FindPolyAreaFromRadiusiib
.globl _Z22FindPolyAreaFromRadiusii
	.type	_Z22FindPolyAreaFromRadiusii, @function
_Z22FindPolyAreaFromRadiusii:
.LFB963:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z22FindPolyAreaFromRadiusiib
	fstp	%st(0)
	leave
	ret
	.cfi_endproc
.LFE963:
	.size	_Z22FindPolyAreaFromRadiusii, .-_Z22FindPolyAreaFromRadiusii
	.section	.rodata
.LC17:
	.string	"base = tan("
	.text
.globl _Z23FindPolyAreaFromApothemiib
	.type	_Z23FindPolyAreaFromApothemiib, @function
_Z23FindPolyAreaFromApothemiib:
.LFB964:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$100, %esp
	movl	16(%ebp), %eax
	movb	%al, -28(%ebp)
	fildl	8(%ebp)
	fstps	-12(%ebp)
	movl	$180, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstps	-16(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L20
	.cfi_offset 3, -12
	movl	$.LC5, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC6, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$360, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, %ebx
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$.LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$180, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	12(%ebp)
	movl	%eax, %ebx
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L20:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	tan
	flds	-12(%ebp)
	fmulp	%st, %st(1)
	fstps	-20(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L21
	movl	$.LC17, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	tan
	fstpl	-64(%ebp)
	movl	$.LC11, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fldl	-64(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEd
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z8degToRadf
	fstpl	(%esp)
	call	tan
	flds	-12(%ebp)
	fmulp	%st, %st(1)
	fstpl	-56(%ebp)
	movl	$.LC11, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fldl	-56(%ebp)
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L21:
	flds	-20(%ebp)
	fmuls	-12(%ebp)
	fildl	12(%ebp)
	fmulp	%st, %st(1)
	fstps	-24(%ebp)
	cmpb	$0, -28(%ebp)
	je	.L22
	movl	$.LC15, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	flds	-20(%ebp)
	fmuls	-12(%ebp)
	fstps	-44(%ebp)
	movl	$.LC16, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	flds	-44(%ebp)
	fstps	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$.LC12, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	flds	-20(%ebp)
	fmuls	-12(%ebp)
	fildl	12(%ebp)
	fmulp	%st, %st(1)
	fstps	-40(%ebp)
	movl	$.LC16, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	flds	-40(%ebp)
	fstps	4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.L22:
	movl	-24(%ebp), %eax
	movl	%eax, -76(%ebp)
	flds	-76(%ebp)
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
	.cfi_endproc
.LFE964:
	.size	_Z23FindPolyAreaFromApothemiib, .-_Z23FindPolyAreaFromApothemiib
.globl _Z23FindPolyAreaFromApothemii
	.type	_Z23FindPolyAreaFromApothemii, @function
_Z23FindPolyAreaFromApothemii:
.LFB965:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z23FindPolyAreaFromApothemiib
	fstp	%st(0)
	leave
	ret
	.cfi_endproc
.LFE965:
	.size	_Z23FindPolyAreaFromApothemii, .-_Z23FindPolyAreaFromApothemii
.globl _Z17FindAreaFromKnowniiib
	.type	_Z17FindAreaFromKnowniiib, @function
_Z17FindAreaFromKnowniiib:
.LFB966:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	20(%ebp), %eax
	movb	%al, -28(%ebp)
	cmpl	$5, 8(%ebp)
	ja	.L27
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	.L33(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L33:
	.long	.L27
	.long	.L28
	.long	.L29
	.long	.L30
	.long	.L31
	.long	.L32
	.text
.L28:
	movl	$0, -12(%ebp)
	jmp	.L27
.L29:
	movl	$0, -12(%ebp)
	jmp	.L27
.L30:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z20FindPolyAreaFromSideii
	movl	%eax, -12(%ebp)
	jmp	.L27
.L32:
	movzbl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z22FindPolyAreaFromRadiusiib
	fnstcw	-30(%ebp)
	movzwl	-30(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -32(%ebp)
	fldcw	-32(%ebp)
	fistpl	-12(%ebp)
	fldcw	-30(%ebp)
	jmp	.L27
.L31:
	movzbl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z23FindPolyAreaFromApothemiib
	fnstcw	-30(%ebp)
	movzwl	-30(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -32(%ebp)
	fldcw	-32(%ebp)
	fistpl	-12(%ebp)
	fldcw	-30(%ebp)
.L27:
	movl	-12(%ebp), %eax
	leave
	ret
	.cfi_endproc
.LFE966:
	.size	_Z17FindAreaFromKnowniiib, .-_Z17FindAreaFromKnowniiib
.globl _Z17FindAreaFromKnowniii
	.type	_Z17FindAreaFromKnowniii, @function
_Z17FindAreaFromKnowniii:
.LFB967:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z17FindAreaFromKnowniiib
	leave
	ret
	.cfi_endproc
.LFE967:
	.size	_Z17FindAreaFromKnowniii, .-_Z17FindAreaFromKnowniii
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB978:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L39
	cmpl	$65535, 12(%ebp)
	jne	.L39
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L39:
	leave
	ret
	.cfi_endproc
.LFE978:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__I__Z16RadiansToDegreesf, @function
_GLOBAL__I__Z16RadiansToDegreesf:
.LFB979:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	ret
	.cfi_endproc
.LFE979:
	.size	_GLOBAL__I__Z16RadiansToDegreesf, .-_GLOBAL__I__Z16RadiansToDegreesf
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I__Z16RadiansToDegreesf
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.section	.rodata
	.align 8
.LC0:
	.long	1413754136
	.long	1074340347
	.align 8
.LC1:
	.long	0
	.long	1080459264
	.align 8
.LC4:
	.long	-1571644103
	.long	1066524486
	.ident	"GCC: (SUSE Linux) 4.4.1 [gcc-4_4-branch revision 150839]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"ospwg"
	.section	.note.GNU-stack,"",@progbits
