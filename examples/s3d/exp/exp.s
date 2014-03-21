.text

.globl	_Z3expdPm
.type	_Z3expdPm, @function

_Z3expdPm:

# Prolog -- This bit scales inputs into an appropriate range
# TODO -- Somwhere in here is multiplication by 1/(12!)
vmovddup	%xmm0, %xmm0
vmulpd	(%rdi), %xmm0, %xmm2
vroundpd	$0, %xmm2, %xmm2
vmulpd	0x10(%rdi), %xmm2, %xmm1
vcvtpd2dqx	%xmm2, %xmm3
vmulpd	0x20(%rdi), %xmm2, %xmm2
vaddpd	%xmm1, %xmm0, %xmm1
vmovapd	0x30(%rdi), %xmm0
vpaddd	0x40(%rdi), %xmm3, %xmm3
vpslld	$20, %xmm3, %xmm3
vpshufd	$114, %xmm3, %xmm3
vaddpd	%xmm2, %xmm1, %xmm1
vmulpd	0x50(%rdi), %xmm1, %xmm2
vaddpd	0x60(%rdi), %xmm2, %xmm2

# Stage 11
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0x70(%rdi), %xmm2, %xmm2
# Stage 10
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0x80(%rdi), %xmm2, %xmm2
# Stage 9
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0x90(%rdi), %xmm2, %xmm2
# Stage 8
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0xa0(%rdi), %xmm2, %xmm2
# Stage 7
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0xb0(%rdi), %xmm2, %xmm2
# Stage 6
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0xc0(%rdi), %xmm2, %xmm2
# Stage 5
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0xd0(%rdi), %xmm2, %xmm2
# Stage 4
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0xe0(%rdi), %xmm2, %xmm2
# Stage 3
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	0xf0(%rdi), %xmm2, %xmm2
# Stage 2
vmulpd	%xmm1, %xmm2, %xmm2
vaddpd	%xmm0, %xmm2, %xmm2
# Stage 1
vmulpd	%xmm1, %xmm2, %xmm1
vaddpd	%xmm0, %xmm1, %xmm0
# Stage 0 
vmulpd	%xmm3, %xmm0, %xmm0

ret

.size	_Z3expdPm, .-_Z3expdPm

.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
.section	.note.GNU-stack,"",@progbits

