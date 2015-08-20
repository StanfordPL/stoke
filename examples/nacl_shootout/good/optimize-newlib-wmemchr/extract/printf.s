  .text
  .globl printf
  .type printf, @function

#! file-offset 0x163720
#! rip-offset  0x123720
#! capacity    224 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.printf:                            #        0x123720  0      OPC=<label>          
  pushq %rbx                        #  1     0x123720  1      OPC=pushq_r64_1      
  movl %edi, %ebx                   #  2     0x123721  2      OPC=movl_r32_r32     
  subl $0xc0, %esp                  #  3     0x123723  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  4     0x123729  3      OPC=addq_r64_r64     
  leal 0xbf(%rsp), %eax             #  5     0x12372c  7      OPC=leal_r32_m16     
  movq %rsi, 0x18(%rsp)             #  6     0x123733  5      OPC=movq_m64_r64     
  movq %rdx, 0x20(%rsp)             #  7     0x123738  5      OPC=movq_m64_r64     
  nop                               #  8     0x12373d  1      OPC=nop              
  nop                               #  9     0x12373e  1      OPC=nop              
  nop                               #  10    0x12373f  1      OPC=nop              
  movq %rcx, 0x28(%rsp)             #  11    0x123740  5      OPC=movq_m64_r64     
  movq %r8, 0x30(%rsp)              #  12    0x123745  5      OPC=movq_m64_r64     
  movq %r9, 0x38(%rsp)              #  13    0x12374a  5      OPC=movq_m64_r64     
  movl %eax, %eax                   #  14    0x12374f  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  15    0x123751  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  16    0x123757  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  17    0x123759  6      OPC=movaps_m128_xmm  
  nop                               #  18    0x12375f  1      OPC=nop              
  movl %eax, %eax                   #  19    0x123760  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  20    0x123762  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  21    0x123768  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  22    0x12376a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  23    0x123770  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  24    0x123772  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  25    0x123778  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  26    0x12377a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  27    0x123780  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  28    0x123782  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  29    0x123788  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  30    0x12378a  6      OPC=movaps_m128_xmm  
  nop                               #  31    0x123790  1      OPC=nop              
  nop                               #  32    0x123791  1      OPC=nop              
  nop                               #  33    0x123792  1      OPC=nop              
  nop                               #  34    0x123793  1      OPC=nop              
  nop                               #  35    0x123794  1      OPC=nop              
  nop                               #  36    0x123795  1      OPC=nop              
  nop                               #  37    0x123796  1      OPC=nop              
  nop                               #  38    0x123797  1      OPC=nop              
  nop                               #  39    0x123798  1      OPC=nop              
  nop                               #  40    0x123799  1      OPC=nop              
  nop                               #  41    0x12379a  1      OPC=nop              
  callq .__nacl_read_tp             #  42    0x12379b  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  43    0x1237a0  7      OPC=leaq_r64_m16     
  movl %esp, %ecx                   #  44    0x1237a7  2      OPC=movl_r32_r32     
  movl %ebx, %edx                   #  45    0x1237a9  2      OPC=movl_r32_r32     
  movl $0x8, (%rsp)                 #  46    0x1237ab  7      OPC=movl_m32_imm32   
  movl $0x30, 0x4(%rsp)             #  47    0x1237b2  8      OPC=movl_m32_imm32   
  movl %eax, %eax                   #  48    0x1237ba  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  49    0x1237bc  4      OPC=movl_r32_m32     
  leal 0xd0(%rsp), %eax             #  50    0x1237c0  7      OPC=leal_r32_m16     
  movl %eax, 0x8(%rsp)              #  51    0x1237c7  4      OPC=movl_m32_r32     
  leal 0x10(%rsp), %eax             #  52    0x1237cb  4      OPC=leal_r32_m16     
  movl %edi, %edi                   #  53    0x1237cf  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdi,1), %esi       #  54    0x1237d1  5      OPC=movl_r32_m32     
  movl %eax, 0xc(%rsp)              #  55    0x1237d6  4      OPC=movl_m32_r32     
  nop                               #  56    0x1237da  1      OPC=nop              
  callq ._vfprintf_r                #  57    0x1237db  5      OPC=callq_label      
  addl $0xc0, %esp                  #  58    0x1237e0  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  59    0x1237e6  3      OPC=addq_r64_r64     
  popq %rbx                         #  60    0x1237e9  1      OPC=popq_r64_1       
  popq %r11                         #  61    0x1237ea  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  62    0x1237ec  7      OPC=andl_r32_imm32   
  nop                               #  63    0x1237f3  1      OPC=nop              
  nop                               #  64    0x1237f4  1      OPC=nop              
  nop                               #  65    0x1237f5  1      OPC=nop              
  nop                               #  66    0x1237f6  1      OPC=nop              
  addq %r15, %r11                   #  67    0x1237f7  3      OPC=addq_r64_r64     
  jmpq %r11                         #  68    0x1237fa  3      OPC=jmpq_r64         
  nop                               #  69    0x1237fd  1      OPC=nop              
  nop                               #  70    0x1237fe  1      OPC=nop              
  nop                               #  71    0x1237ff  1      OPC=nop              
  nop                               #  72    0x123800  1      OPC=nop              
  nop                               #  73    0x123801  1      OPC=nop              
  nop                               #  74    0x123802  1      OPC=nop              
  nop                               #  75    0x123803  1      OPC=nop              
  nop                               #  76    0x123804  1      OPC=nop              
  nop                               #  77    0x123805  1      OPC=nop              
  nop                               #  78    0x123806  1      OPC=nop              
                                                                                   
.size printf, .-printf

