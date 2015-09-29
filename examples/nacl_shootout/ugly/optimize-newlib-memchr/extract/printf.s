  .text
  .globl printf
  .type printf, @function

#! file-offset 0x163e40
#! rip-offset  0x123e40
#! capacity    224 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.printf:                            #        0x123e40  0      OPC=<label>          
  pushq %rbx                        #  1     0x123e40  1      OPC=pushq_r64_1      
  movl %edi, %ebx                   #  2     0x123e41  2      OPC=movl_r32_r32     
  subl $0xc0, %esp                  #  3     0x123e43  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  4     0x123e49  3      OPC=addq_r64_r64     
  leal 0xbf(%rsp), %eax             #  5     0x123e4c  7      OPC=leal_r32_m16     
  movq %rsi, 0x18(%rsp)             #  6     0x123e53  5      OPC=movq_m64_r64     
  movq %rdx, 0x20(%rsp)             #  7     0x123e58  5      OPC=movq_m64_r64     
  nop                               #  8     0x123e5d  1      OPC=nop              
  nop                               #  9     0x123e5e  1      OPC=nop              
  nop                               #  10    0x123e5f  1      OPC=nop              
  movq %rcx, 0x28(%rsp)             #  11    0x123e60  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  12    0x123e65  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  13    0x123e6a  5      OPC=movq_m64_r64     
  movl %eax, %eax                   #  14    0x123e6f  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x123e71  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  16    0x123e77  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x123e79  6      OPC=movaps_m128_xmm  
  nop                               #  18    0x123e7f  1      OPC=nop              
  movl %eax, %eax                   #  19    0x123e80  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  20    0x123e82  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  21    0x123e88  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  22    0x123e8a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  23    0x123e90  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  24    0x123e92  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x123e98  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  26    0x123e9a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x123ea0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  28    0x123ea2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x123ea8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  30    0x123eaa  6      OPC=movaps_m128_xmm  
  nop                               #  31    0x123eb0  1      OPC=nop              
  nop                               #  32    0x123eb1  1      OPC=nop              
  nop                               #  33    0x123eb2  1      OPC=nop              
  nop                               #  34    0x123eb3  1      OPC=nop              
  nop                               #  35    0x123eb4  1      OPC=nop              
  nop                               #  36    0x123eb5  1      OPC=nop              
  nop                               #  37    0x123eb6  1      OPC=nop              
  nop                               #  38    0x123eb7  1      OPC=nop              
  nop                               #  39    0x123eb8  1      OPC=nop              
  nop                               #  40    0x123eb9  1      OPC=nop              
  nop                               #  41    0x123eba  1      OPC=nop              
  callq .__nacl_read_tp             #  42    0x123ebb  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  43    0x123ec0  7      OPC=leaq_r64_m16     
  movl %esp, %ecx                   #  44    0x123ec7  2      OPC=movl_r32_r32     
  movl %ebx, %edx                   #  45    0x123ec9  2      OPC=movl_r32_r32     
  movl $0x8, (%rsp)                 #  46    0x123ecb  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  47    0x123ed2  8      OPC=movl_m32_imm32   
  movl %eax, %eax                   #  48    0x123eda  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  49    0x123edc  4      OPC=movl_r32_m32     
  leal 0xd0(%rsp), %eax             #  50    0x123ee0  7      OPC=leal_r32_m16     
  movl %eax, 0x8(%rsp)              #  51    0x123ee7  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  52    0x123eeb  4      OPC=leal_r32_m16     
  movl %edi, %edi                   #  53    0x123eef  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdi,1), %esi       #  54    0x123ef1  5      OPC=movl_r32_m32     
  movl %eax, 0xc(%rsp)              #  55    0x123ef6  4      OPC=movl_m32_r32     
  nop                               #  56    0x123efa  1      OPC=nop              
  callq ._vfprintf_r                #  57    0x123efb  5      OPC=callq_label      
  addl $0xc0, %esp                  #  58    0x123f00  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  59    0x123f06  3      OPC=addq_r64_r64     
  popq %rbx                         #  60    0x123f09  1      OPC=popq_r64_1       
  popq %r11                         #  61    0x123f0a  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  62    0x123f0c  7      OPC=andl_r32_imm32   
  nop                               #  63    0x123f13  1      OPC=nop              
  nop                               #  64    0x123f14  1      OPC=nop              
  nop                               #  65    0x123f15  1      OPC=nop              
  nop                               #  66    0x123f16  1      OPC=nop              
  addq %r15, %r11                   #  67    0x123f17  3      OPC=addq_r64_r64     
  jmpq %r11                         #  68    0x123f1a  3      OPC=jmpq_r64         
  nop                               #  69    0x123f1d  1      OPC=nop              
  nop                               #  70    0x123f1e  1      OPC=nop              
  nop                               #  71    0x123f1f  1      OPC=nop              
  nop                               #  72    0x123f20  1      OPC=nop              
  nop                               #  73    0x123f21  1      OPC=nop              
  nop                               #  74    0x123f22  1      OPC=nop              
  nop                               #  75    0x123f23  1      OPC=nop              
  nop                               #  76    0x123f24  1      OPC=nop              
  nop                               #  77    0x123f25  1      OPC=nop              
  nop                               #  78    0x123f26  1      OPC=nop              
                                                                                   
.size printf, .-printf

