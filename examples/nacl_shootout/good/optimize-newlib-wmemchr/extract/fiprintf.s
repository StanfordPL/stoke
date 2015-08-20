  .text
  .globl fiprintf
  .type fiprintf, @function

#! file-offset 0x15ae20
#! rip-offset  0x11ae20
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.fiprintf:                          #        0x11ae20  0      OPC=<label>          
  movq %rbx, -0x18(%rsp)            #  1     0x11ae20  5      OPC=movq_m64_r64     
  movq %r12, -0x10(%rsp)            #  2     0x11ae25  5      OPC=movq_m64_r64     
  movl %edi, %ebx                   #  3     0x11ae2a  2      OPC=movl_r32_r32     
  movq %r13, -0x8(%rsp)             #  4     0x11ae2c  5      OPC=movq_m64_r64     
  subl $0xd8, %esp                  #  5     0x11ae31  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  6     0x11ae37  3      OPC=addq_r64_r64     
  movl %esi, %r12d                  #  7     0x11ae3a  3      OPC=movl_r32_r32     
  nop                               #  8     0x11ae3d  1      OPC=nop              
  nop                               #  9     0x11ae3e  1      OPC=nop              
  nop                               #  10    0x11ae3f  1      OPC=nop              
  leal 0xbf(%rsp), %eax             #  11    0x11ae40  7      OPC=leal_r32_m16     
  movq %rdx, 0x20(%rsp)             #  12    0x11ae47  5      OPC=movq_m64_r64     
  movq %rcx, 0x28(%rsp)             #  13    0x11ae4c  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  14    0x11ae51  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  15    0x11ae56  5      OPC=movq_m64_r64     
  nop                               #  16    0x11ae5b  1      OPC=nop              
  nop                               #  17    0x11ae5c  1      OPC=nop              
  nop                               #  18    0x11ae5d  1      OPC=nop              
  nop                               #  19    0x11ae5e  1      OPC=nop              
  nop                               #  20    0x11ae5f  1      OPC=nop              
  movl %eax, %eax                   #  21    0x11ae60  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  22    0x11ae62  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  23    0x11ae68  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  24    0x11ae6a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x11ae70  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  26    0x11ae72  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x11ae78  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  28    0x11ae7a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x11ae80  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  30    0x11ae82  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  31    0x11ae88  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  32    0x11ae8a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  33    0x11ae90  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  34    0x11ae92  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  35    0x11ae98  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  36    0x11ae9a  6      OPC=movaps_m128_xmm  
  leal 0xe0(%rsp), %eax             #  37    0x11aea0  7      OPC=leal_r32_m16     
  movl $0x10, (%rsp)                #  38    0x11aea7  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  39    0x11aeae  8      OPC=movl_m32_imm32   
  movl %eax, 0x8(%rsp)              #  40    0x11aeb6  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  41    0x11aeba  4      OPC=leal_r32_m16     
  xchgw %ax, %ax                    #  42    0x11aebe  2      OPC=xchgw_ax_r16     
  movl %eax, 0xc(%rsp)              #  43    0x11aec0  4      OPC=movl_m32_r32     
  nop                               #  44    0x11aec4  1      OPC=nop              
  nop                               #  45    0x11aec5  1      OPC=nop              
  nop                               #  46    0x11aec6  1      OPC=nop              
  nop                               #  47    0x11aec7  1      OPC=nop              
  nop                               #  48    0x11aec8  1      OPC=nop              
  nop                               #  49    0x11aec9  1      OPC=nop              
  nop                               #  50    0x11aeca  1      OPC=nop              
  nop                               #  51    0x11aecb  1      OPC=nop              
  nop                               #  52    0x11aecc  1      OPC=nop              
  nop                               #  53    0x11aecd  1      OPC=nop              
  nop                               #  54    0x11aece  1      OPC=nop              
  nop                               #  55    0x11aecf  1      OPC=nop              
  nop                               #  56    0x11aed0  1      OPC=nop              
  nop                               #  57    0x11aed1  1      OPC=nop              
  nop                               #  58    0x11aed2  1      OPC=nop              
  nop                               #  59    0x11aed3  1      OPC=nop              
  nop                               #  60    0x11aed4  1      OPC=nop              
  nop                               #  61    0x11aed5  1      OPC=nop              
  nop                               #  62    0x11aed6  1      OPC=nop              
  nop                               #  63    0x11aed7  1      OPC=nop              
  nop                               #  64    0x11aed8  1      OPC=nop              
  nop                               #  65    0x11aed9  1      OPC=nop              
  nop                               #  66    0x11aeda  1      OPC=nop              
  callq .__nacl_read_tp             #  67    0x11aedb  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  68    0x11aee0  7      OPC=leaq_r64_m16     
  movl %esp, %ecx                   #  69    0x11aee7  2      OPC=movl_r32_r32     
  movl %r12d, %edx                  #  70    0x11aee9  3      OPC=movl_r32_r32     
  movl %ebx, %esi                   #  71    0x11aeec  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  72    0x11aeee  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  73    0x11aef0  4      OPC=movl_r32_m32     
  nop                               #  74    0x11aef4  1      OPC=nop              
  nop                               #  75    0x11aef5  1      OPC=nop              
  nop                               #  76    0x11aef6  1      OPC=nop              
  nop                               #  77    0x11aef7  1      OPC=nop              
  nop                               #  78    0x11aef8  1      OPC=nop              
  nop                               #  79    0x11aef9  1      OPC=nop              
  nop                               #  80    0x11aefa  1      OPC=nop              
  callq ._vfiprintf_r               #  81    0x11aefb  5      OPC=callq_label      
  movq 0xc0(%rsp), %rbx             #  82    0x11af00  8      OPC=movq_r64_m64     
  movq 0xc8(%rsp), %r12             #  83    0x11af08  8      OPC=movq_r64_m64     
  movq 0xd0(%rsp), %r13             #  84    0x11af10  8      OPC=movq_r64_m64     
  nop                               #  85    0x11af18  1      OPC=nop              
  nop                               #  86    0x11af19  1      OPC=nop              
  nop                               #  87    0x11af1a  1      OPC=nop              
  nop                               #  88    0x11af1b  1      OPC=nop              
  nop                               #  89    0x11af1c  1      OPC=nop              
  nop                               #  90    0x11af1d  1      OPC=nop              
  nop                               #  91    0x11af1e  1      OPC=nop              
  nop                               #  92    0x11af1f  1      OPC=nop              
  addl $0xd8, %esp                  #  93    0x11af20  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  94    0x11af26  3      OPC=addq_r64_r64     
  popq %r11                         #  95    0x11af29  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  96    0x11af2b  7      OPC=andl_r32_imm32   
  nop                               #  97    0x11af32  1      OPC=nop              
  nop                               #  98    0x11af33  1      OPC=nop              
  nop                               #  99    0x11af34  1      OPC=nop              
  nop                               #  100   0x11af35  1      OPC=nop              
  addq %r15, %r11                   #  101   0x11af36  3      OPC=addq_r64_r64     
  jmpq %r11                         #  102   0x11af39  3      OPC=jmpq_r64         
  nop                               #  103   0x11af3c  1      OPC=nop              
  nop                               #  104   0x11af3d  1      OPC=nop              
  nop                               #  105   0x11af3e  1      OPC=nop              
  nop                               #  106   0x11af3f  1      OPC=nop              
  nop                               #  107   0x11af40  1      OPC=nop              
  nop                               #  108   0x11af41  1      OPC=nop              
  nop                               #  109   0x11af42  1      OPC=nop              
  nop                               #  110   0x11af43  1      OPC=nop              
  nop                               #  111   0x11af44  1      OPC=nop              
  nop                               #  112   0x11af45  1      OPC=nop              
  nop                               #  113   0x11af46  1      OPC=nop              
                                                                                   
.size fiprintf, .-fiprintf

