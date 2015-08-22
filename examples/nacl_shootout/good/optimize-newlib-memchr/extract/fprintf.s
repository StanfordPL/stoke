  .text
  .globl fprintf
  .type fprintf, @function

#! file-offset 0x15bb60
#! rip-offset  0x11bb60
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.fprintf:                           #        0x11bb60  0      OPC=<label>          
  movq %rbx, -0x18(%rsp)            #  1     0x11bb60  5      OPC=movq_m64_r64     
  movq %r12, -0x10(%rsp)            #  2     0x11bb65  5      OPC=movq_m64_r64     
  movl %edi, %ebx                   #  3     0x11bb6a  2      OPC=movl_r32_r32     
  movq %r13, -0x8(%rsp)             #  4     0x11bb6c  5      OPC=movq_m64_r64     
  subl $0xd8, %esp                  #  5     0x11bb71  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  6     0x11bb77  3      OPC=addq_r64_r64     
  movl %esi, %r12d                  #  7     0x11bb7a  3      OPC=movl_r32_r32     
  nop                               #  8     0x11bb7d  1      OPC=nop              
  nop                               #  9     0x11bb7e  1      OPC=nop              
  nop                               #  10    0x11bb7f  1      OPC=nop              
  leal 0xbf(%rsp), %eax             #  11    0x11bb80  7      OPC=leal_r32_m16     
  movq %rdx, 0x20(%rsp)             #  12    0x11bb87  5      OPC=movq_m64_r64     
  movq %rcx, 0x28(%rsp)             #  13    0x11bb8c  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  14    0x11bb91  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  15    0x11bb96  5      OPC=movq_m64_r64     
  nop                               #  16    0x11bb9b  1      OPC=nop              
  nop                               #  17    0x11bb9c  1      OPC=nop              
  nop                               #  18    0x11bb9d  1      OPC=nop              
  nop                               #  19    0x11bb9e  1      OPC=nop              
  nop                               #  20    0x11bb9f  1      OPC=nop              
  movl %eax, %eax                   #  21    0x11bba0  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  22    0x11bba2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  23    0x11bba8  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  24    0x11bbaa  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11bbb0  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  26    0x11bbb2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11bbb8  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  28    0x11bbba  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11bbc0  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  30    0x11bbc2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11bbc8  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  32    0x11bbca  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11bbd0  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  34    0x11bbd2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  35    0x11bbd8  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  36    0x11bbda  6      OPC=movaps_m128_xmm  
  leal 0xe0(%rsp), %eax             #  37    0x11bbe0  7      OPC=leal_r32_m16     
  movl $0x10, (%rsp)                #  38    0x11bbe7  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  39    0x11bbee  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  40    0x11bbf6  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  41    0x11bbfa  4      OPC=leal_r32_m16     
  xchgw %ax, %ax                    #  42    0x11bbfe  2      OPC=xchgw_ax_r16     
  movl %eax, 0xc(%rsp)              #  43    0x11bc00  4      OPC=movl_m32_r32     
  nop                               #  44    0x11bc04  1      OPC=nop              
  nop                               #  45    0x11bc05  1      OPC=nop              
  nop                               #  46    0x11bc06  1      OPC=nop              
  nop                               #  47    0x11bc07  1      OPC=nop              
  nop                               #  48    0x11bc08  1      OPC=nop              
  nop                               #  49    0x11bc09  1      OPC=nop              
  nop                               #  50    0x11bc0a  1      OPC=nop              
  nop                               #  51    0x11bc0b  1      OPC=nop              
  nop                               #  52    0x11bc0c  1      OPC=nop              
  nop                               #  53    0x11bc0d  1      OPC=nop              
  nop                               #  54    0x11bc0e  1      OPC=nop              
  nop                               #  55    0x11bc0f  1      OPC=nop              
  nop                               #  56    0x11bc10  1      OPC=nop              
  nop                               #  57    0x11bc11  1      OPC=nop              
  nop                               #  58    0x11bc12  1      OPC=nop              
  nop                               #  59    0x11bc13  1      OPC=nop              
  nop                               #  60    0x11bc14  1      OPC=nop              
  nop                               #  61    0x11bc15  1      OPC=nop              
  nop                               #  62    0x11bc16  1      OPC=nop              
  nop                               #  63    0x11bc17  1      OPC=nop              
  nop                               #  64    0x11bc18  1      OPC=nop              
  nop                               #  65    0x11bc19  1      OPC=nop              
  nop                               #  66    0x11bc1a  1      OPC=nop              
  callq .__nacl_read_tp             #  67    0x11bc1b  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  68    0x11bc20  7      OPC=leaq_r64_m16     
  movl %esp, %ecx                   #  69    0x11bc27  2      OPC=movl_r32_r32     
  movl %r12d, %edx                  #  70    0x11bc29  3      OPC=movl_r32_r32     
  movl %ebx, %esi                   #  71    0x11bc2c  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  72    0x11bc2e  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  73    0x11bc30  4      OPC=movl_r32_m32     
  nop                               #  74    0x11bc34  1      OPC=nop              
  nop                               #  75    0x11bc35  1      OPC=nop              
  nop                               #  76    0x11bc36  1      OPC=nop              
  nop                               #  77    0x11bc37  1      OPC=nop              
  nop                               #  78    0x11bc38  1      OPC=nop              
  nop                               #  79    0x11bc39  1      OPC=nop              
  nop                               #  80    0x11bc3a  1      OPC=nop              
  callq ._vfprintf_r                #  81    0x11bc3b  5      OPC=callq_label      
  movq 0xc0(%rsp), %rbx             #  82    0x11bc40  8      OPC=movq_r64_m64     
  movq 0xc8(%rsp), %r12             #  83    0x11bc48  8      OPC=movq_r64_m64     
  movq 0xd0(%rsp), %r13             #  84    0x11bc50  8      OPC=movq_r64_m64     
  nop                               #  85    0x11bc58  1      OPC=nop              
  nop                               #  86    0x11bc59  1      OPC=nop              
  nop                               #  87    0x11bc5a  1      OPC=nop              
  nop                               #  88    0x11bc5b  1      OPC=nop              
  nop                               #  89    0x11bc5c  1      OPC=nop              
  nop                               #  90    0x11bc5d  1      OPC=nop              
  nop                               #  91    0x11bc5e  1      OPC=nop              
  nop                               #  92    0x11bc5f  1      OPC=nop              
  addl $0xd8, %esp                  #  93    0x11bc60  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  94    0x11bc66  3      OPC=addq_r64_r64     
  popq %r11                         #  95    0x11bc69  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  96    0x11bc6b  7      OPC=andl_r32_imm32   
  nop                               #  97    0x11bc72  1      OPC=nop              
  nop                               #  98    0x11bc73  1      OPC=nop              
  nop                               #  99    0x11bc74  1      OPC=nop              
  nop                               #  100   0x11bc75  1      OPC=nop              
  addq %r15, %r11                   #  101   0x11bc76  3      OPC=addq_r64_r64     
  jmpq %r11                         #  102   0x11bc79  3      OPC=jmpq_r64         
  nop                               #  103   0x11bc7c  1      OPC=nop              
  nop                               #  104   0x11bc7d  1      OPC=nop              
  nop                               #  105   0x11bc7e  1      OPC=nop              
  nop                               #  106   0x11bc7f  1      OPC=nop              
  nop                               #  107   0x11bc80  1      OPC=nop              
  nop                               #  108   0x11bc81  1      OPC=nop              
  nop                               #  109   0x11bc82  1      OPC=nop              
  nop                               #  110   0x11bc83  1      OPC=nop              
  nop                               #  111   0x11bc84  1      OPC=nop              
  nop                               #  112   0x11bc85  1      OPC=nop              
  nop                               #  113   0x11bc86  1      OPC=nop              
                                                                                   
.size fprintf, .-fprintf

